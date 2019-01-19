`default_nettype none
`timescale 1ns / 1ps
/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                      *
*                                                                                                                      *
* Copyright (c) 2012-2019 Andrew D. Zonenberg                                                                          *
* All rights reserved.                                                                                                 *
*                                                                                                                      *
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the     *
* following conditions are met:                                                                                        *
*                                                                                                                      *
*    * Redistributions of source code must retain the above copyright notice, this list of conditions, and the         *
*      following disclaimer.                                                                                           *
*                                                                                                                      *
*    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the       *
*      following disclaimer in the documentation and/or other materials provided with the distribution.                *
*                                                                                                                      *
*    * Neither the name of the author nor the names of any contributors may be used to endorse or promote products     *
*      derived from this software without specific prior written permission.                                           *
*                                                                                                                      *
* THIS SOFTWARE IS PROVIDED BY THE AUTHORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   *
* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL *
* THE AUTHORS BE HELD LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES        *
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR       *
* BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE       *
* POSSIBILITY OF SUCH DAMAGE.                                                                                          *
*                                                                                                                      *
***********************************************************************************************************************/

`include "I2CTransceiver.svh"

module top(
	//Clocks
	input wire 			clk_100mhz,

	//Miscellaneous
	output wire[3:0] 	led,

	//Probe card I/O
	output wire[7:0]	txd,
	output logic[7:0]	oe	= 0,

	//Probe card management
	inout wire			i2c_sda,
	output wire			i2c_scl,

	//PMOD
	output wire[7:0]	pmod_dq,

	//Ethernet
	input wire			rgmii_rxc,
	input wire[3:0]		rgmii_rxd,
	input wire			rgmii_rx_ctl,

	output wire			rgmii_txc,
	output wire[3:0]	rgmii_txd,
	output wire			rgmii_tx_ctl,

	output logic		eth_rst_n = 1'h0,

	inout wire			eth_mdio,
	output wire			eth_mdc,

	output wire			eth_activity_led,
	output wire			eth_link_led,

	//HyperRAM
	output wire			ram0_clk_p,
	output wire			ram0_clk_n,
	inout wire[7:0]		ram0_dq,
	inout wire			ram0_dqs,
	output wire			ram0_cs_n,
	output wire			ram0_rst_n,

	output wire			ram1_clk_p,
	output wire			ram1_clk_n,
	inout wire[7:0]		ram1_dq,
	inout wire			ram1_dqs,
	output wire			ram1_cs_n,
	output wire			ram1_rst_n,

	output wire			ram2_clk_p,
	output wire			ram2_clk_n,
	inout wire[7:0]		ram2_dq,
	inout wire			ram2_dqs,
	output wire			ram2_cs_n,
	output wire			ram2_rst_n,

	output wire			ram3_clk_p,
	output wire			ram3_clk_n,
	inout wire[7:0]		ram3_dq,
	inout wire			ram3_dqs,
	output wire			ram3_cs_n,
	output wire			ram3_rst_n
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I2C bus for talking to line card

	i2c_in_t	i2c_cin;
	i2c_out_t	i2c_cout;
	I2CTransceiver i2c_txvr(
		.clk(clk_100mhz),
		.clkdiv(250),		//400 kHz

		.i2c_scl(i2c_scl),
		.i2c_sda(i2c_sda),

		.cin(i2c_cin),
		.cout(i2c_cout)
    );

    localparam NUM_I2C_DEVS = 4;

	wire[NUM_I2C_DEVS-1:0]		driver_request;
	wire[NUM_I2C_DEVS-1:0]		driver_done;
	wire[NUM_I2C_DEVS-1:0]		driver_ack;

    i2c_in_t[NUM_I2C_DEVS-1:0]	driver_cin;
	i2c_out_t[NUM_I2C_DEVS-1:0]	driver_cout;

    I2CArbiter #(
		.NUM_PORTS(NUM_I2C_DEVS)
	) i2c_arbiter(
		.clk(clk_100mhz),

		.driver_request(driver_request),
		.driver_done(driver_done),
		.driver_ack(driver_ack),
		.driver_cin(driver_cin),
		.driver_cout(driver_cout),

		.txvr_cin(i2c_cin),
		.txvr_cout(i2c_cout)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// INA226 for monitoring output power

	wire		booting;

	logic		poll_en;
	wire		poll_done;

	wire[15:0]	bus_voltage;
	wire[15:0]	current_scaled;

	wire	trig_out;

	INA226 #(
		.SLAVE_ADDR(8'h80),
		.CFG_AVERAGE(1),		//1 average
		.CFG_VBUS_TIME(4),		//1.1 ms
		.CFG_VSHUNT_TIME(4),	//1.1 ms
		.CALIBRATION(50)		//current in uA
	) ina226 (
		.clk(clk_100mhz),
		.booting(booting),

		.poll_en(poll_en),
		.poll_done(poll_done),

		.bus_voltage(bus_voltage),
		.current_scaled(current_scaled),

		.driver_request(driver_request[0]),
		.driver_done(driver_done[0]),
		.driver_ack(driver_ack[0]),
		.driver_cin(driver_cin[0]),
		.driver_cout(driver_cout[0])
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// DAC for input Vref

	logic		vt_update_en	= 0;
	logic[11:0]	vt_dac_code		= 0;
	wire		vt_update_done;

	MCP4726 #(
		.SLAVE_ADDR(8'hc0)
	) vt_dac (
		.clk(clk_100mhz),

		.update_en(vt_update_en),
		.dac_code(vt_dac_code),
		.done(vt_update_done),

		.driver_request(driver_request[1]),
		.driver_done(driver_done[1]),
		.driver_ack(driver_ack[1]),
		.driver_cin(driver_cin[1]),
		.driver_cout(driver_cout[1])
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// DAC for output VCCO

	logic		vcco_update_en		= 0;
	logic[11:0]	vcco_dac_code		= 0;
	wire		vcco_update_done;

	MCP4726 #(
		.SLAVE_ADDR(8'hc2)
	) vcco_dac (
		.clk(clk_100mhz),

		.update_en(vcco_update_en),
		.dac_code(vcco_dac_code),
		.done(vcco_update_done),

		.driver_request(driver_request[2]),
		.driver_done(driver_done[2]),
		.driver_ack(driver_ack[2]),
		.driver_cin(driver_cin[2]),
		.driver_cout(driver_cout[2])
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// GPIO expander

	logic[23:0]	gpio_tx_data	= 24'h000000;
	logic[23:0]	gpio_tris		= 24'hffffff;
	wire[23:0]	gpio_rx_data;

	logic		gpio_write_en	= 0;
	logic		gpio_tris_en	= 0;
	logic		gpio_read_en	= 0;

	wire		gpio_done;

	TCA6424A #(
		.SLAVE_ADDR(8'h44)
	) gpio_expander (
		.clk(clk_100mhz),

		.tx_data(gpio_tx_data),
		.tx_tris(gpio_tris),
		.rx_data(gpio_rx_data),

		.write_en(gpio_write_en),
		.tris_en(gpio_tris_en),
		.read_en(gpio_read_en),

		.done(gpio_done),

		.driver_request(driver_request[3]),
		.driver_done(driver_done[3]),
		.driver_ack(driver_ack[3]),
		.driver_cin(driver_cin[3]),
		.driver_cout(driver_cout[3])
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TCP/IP stack

	//Bring up the PHY after a little while
	logic[15:0] eth_rst_count = 1;
	always_ff @(posedge clk_125mhz) begin
		if(eth_rst_count == 0)
			eth_rst_n		<= 1;
		else
			eth_rst_count	<= eth_rst_count + 1'h1;
	end

	wire	clk_ipstack;
	wire	clk_125mhz;
	wire	clk_250mhz;

	`include "GmiiBus.svh"
	`include "EthernetBus.svh"
	`include "IPv4Bus.svh"
	`include "UDPv4Bus.svh"

	wire				link_up;
	wire				mac_rx_clk;
	EthernetRxBus		mac_rx_bus;
	EthernetTxBus		mac_tx_bus;
	wire				mac_tx_ready;

	RGMIIMACWrapper mac(
		.rgmii_rxc(rgmii_rxc),
		.rgmii_rxd(rgmii_rxd),
		.rgmii_rx_ctl(rgmii_rx_ctl),

		.rgmii_txc(rgmii_txc),
		.rgmii_txd(rgmii_txd),
		.rgmii_tx_ctl(rgmii_tx_ctl),

		.clk_125mhz(clk_125mhz),
		.clk_250mhz(clk_250mhz),

		.mac_rx_clk(mac_rx_clk),
		.mac_rx_bus(mac_rx_bus),
		.mac_tx_bus(mac_tx_bus),
		.mac_tx_ready(mac_tx_ready),

		.link_up(link_up)
	);

	IPv4Config ip_config;
	assign ip_config.address	= {8'd10, 8'd2, 8'd6, 8'd10};
	assign ip_config.mask		= 32'hffffff00;
	assign ip_config.gateway	= {8'd10, 8'd2, 8'd6, 8'd252};
	wire[47:0] mac_address		= 48'h02_de_ad_be_ef_c3;

	UDPv4RxBus	udpv4_rx_bus;
	UDPv4TxBus	udpv4_tx_bus = {$bits(UDPv4TxBus){1'b0}};

	TCPIPStack #(
		.LINK_SPEED_IS_10G(0),
		.CLK_IPSTACK_HZ(100000000)
	) ipstack (
		.clk_ipstack(clk_ipstack),

		.ip_config(ip_config),
		.mac_address(mac_address),
		.promisc_mode(1'b0),

		.mac_rx_clk(mac_rx_clk),
		.mac_rx_bus(mac_rx_bus),
		.mac_tx_clk(clk_125mhz),
		.mac_tx_bus(mac_tx_bus),
		.mac_tx_ready(mac_tx_ready),

		.udpv4_rx_bus(udpv4_rx_bus),
		.udpv4_tx_bus(udpv4_tx_bus)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Top level control logic

	//Control logic
	logic[15:0]	count	= 0;
	logic[3:0]	vstate = 0;

	always_ff @(posedge clk_100mhz) begin

		poll_en			<= 0;
		vt_update_en	<= 0;
		vcco_update_en	<= 0;
		gpio_write_en	<= 0;
		gpio_tris_en	<= 0;
		gpio_read_en	<= 0;

		case(vstate)

			//Set VCCO DAC output
			0: begin
				vcco_update_en	<= 1;

				//1v2
				vcco_dac_code <= 12'h3d7;

				//1v5
				//vcco_dac_code <= 12'h4cc;

				//1v8
				//vcco_dac_code	<= 12'h5c3;

				//3v3
				//vcco_dac_code	<= 12'ha8f;

				vstate			<= 1;
			end

			//Set Vt DAC output to 1.65V
			//This is 0.33 * 5V or DAC code 1351 (0x547)
			1: begin
				if(vcco_update_done) begin
					vt_update_en	<= 1;
					vt_dac_code		<= 12'h547;

					vstate			<= 2;
				end
			end

			2: begin
				if(vt_update_done) begin
					count	<= 1;
					vstate	<= 3;
				end
			end

			//Wait a little while for the DAC output to stabilize, then read it back with the INA226
			3: begin
				count <= count + 1;
				if(count == 0) begin
					poll_en		<= 1;
					vstate		<= 4;
				end
			end

			4: begin
				if(poll_done) begin
					count		<= 1;
					vstate		<= 5;
				end
			end

			//Initialize the I/O expander.
			//Need to write data to 0 before touching tris to prevent glitching.
			5: begin
				gpio_tx_data	<= 24'hF00080; //all LEDs on, VCCO_IS_LO set
				gpio_write_en	<= 1;
				vstate			<= 6;
			end

			6: begin
				if(gpio_done) begin
					gpio_tris		<= 24'h0FFF00;
					gpio_tris_en	<= 1;
					vstate			<= 7;
				end
			end

			7: begin
				if(gpio_done) begin
					vstate			<= 8;
					count			<= 1;
				end
			end

			//Enable output for channel 0 and drive a squarewave
			8: begin
				oe		<= 8'h01;
				vstate	<= 9;
			end

			9: begin
			end

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clock generation PLLs

	wire		clk_200mhz;

	wire		pll_locked;

	wire		clk_ram;
	wire		clk_ram_90;

	ReconfigurablePLL #(
		.OUTPUT_BUF_GLOBAL(6'b111111),
		.OUTPUT_BUF_LOCAL(6'b000000),
		.OUTPUT_BUF_IO(6'b000000),
		.IN0_PERIOD(10),
		.IN1_PERIOD(10),
		.OUT0_MIN_PERIOD(10),	//100 MHz for TCP/IP stack
		.OUT1_MIN_PERIOD(8),	//125 MHz for Ethernet
		.OUT2_MIN_PERIOD(4),	//250 MHz for RGMII oversampling (DDR)
		.OUT3_MIN_PERIOD(5),	//200 MHz
		.OUT4_MIN_PERIOD(8),	//125 MHz RAM clock for now
		.OUT5_MIN_PERIOD(8),	//125 MHz
		.OUT0_DEFAULT_PHASE(0),
		.OUT1_DEFAULT_PHASE(0),
		.OUT2_DEFAULT_PHASE(0),
		.OUT5_DEFAULT_PHASE(270),
		.ACTIVE_ON_START(1)
	) pll (
		.clkin({ clk_100mhz, clk_100mhz }),
		.clksel(1'b0),
		.clkout({clk_ram_90, clk_ram, clk_200mhz, clk_250mhz, clk_125mhz, clk_ipstack}),
		.reset(1'b0),
		.locked(pll_locked),
		.busy(),
		.reconfig_clk(clk_100mhz),
		.reconfig_start(1'b0),
		.reconfig_finish(1'b0),
		.reconfig_cmd_done(),
		.reconfig_vco_en(1'b0),
		.reconfig_vco_mult(7'h0),
		.reconfig_vco_indiv(7'h0),
		.reconfig_vco_bandwidth(1'h0),
		.reconfig_output_en(1'h0),
		.reconfig_output_idx(3'h0),
		.reconfig_output_div(8'h0),
		.reconfig_output_phase(9'h0)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Delay line calibration

	IODelayCalibration cal(
		.refclk(clk_200mhz)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Ethernet MDIO stuff

	wire	mdio_tx_data;
	wire	mdio_tx_en;
	wire	mdio_rx_data;

	BidirectionalBuffer mdio_iobuf(
		.fabric_in(mdio_rx_data),
		.fabric_out(mdio_tx_data),
		.pad(eth_mdio),
		.oe(mdio_tx_en)
	);

	wire		mgmt_busy_fwd;
	wire[4:0]	phy_reg_addr;
	wire[15:0]	phy_wr_data;
	wire[15:0]	phy_rd_data;
	wire		phy_reg_wr;
	wire		phy_reg_rd;

	EthernetMDIOTransceiver mdio_txvr(
		.clk_125mhz(clk_125mhz),
		.phy_md_addr(5'h00001),

		.mdio_tx_data(mdio_tx_data),
		.mdio_tx_en(mdio_tx_en),
		.mdio_rx_data(mdio_rx_data),

		.mdc(eth_mdc),

		.mgmt_busy_fwd(mgmt_busy_fwd),
		.phy_reg_addr(phy_reg_addr),
		.phy_wr_data(phy_wr_data),
		.phy_rd_data(phy_rd_data),
		.phy_reg_wr(phy_reg_wr),
		.phy_reg_rd(phy_reg_rd)
	);

	vio_0 vio(
		.clk(clk_125mhz),
		.probe_in0(mgmt_busy_fwd),
		.probe_in1(phy_rd_data),
		.probe_out0(phy_reg_wr),
		.probe_out1(phy_reg_rd),
		.probe_out2(phy_reg_addr),
		.probe_out3(phy_wr_data)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// RAM

	HyperRAMController ram0(
		.clk(clk_ram),
		.clk_90(clk_ram_90),

		.ram_clk_p(ram0_clk_p),
		.ram_clk_n(ram0_clk_n),

		.ram_dq(ram0_dq),
		.ram_dqs(ram0_dqs),
		.ram_cs_n(ram0_cs_n),
		.ram_rst_n(ram0_rst_n),

		.bus_en(1'b0)	//TODO
	);

	HyperRAMController ram1(
		.clk(clk_ram),
		.clk_90(clk_ram_90),

		.ram_clk_p(ram1_clk_p),
		.ram_clk_n(ram1_clk_n),

		.ram_dq(ram1_dq),
		.ram_dqs(ram1_dqs),
		.ram_cs_n(ram1_cs_n),
		.ram_rst_n(ram1_rst_n),

		.bus_en(1'b0)	//TODO
	);

	HyperRAMController ram2(
		.clk(clk_ram),
		.clk_90(clk_ram_90),

		.ram_clk_p(ram2_clk_p),
		.ram_clk_n(ram2_clk_n),

		.ram_dq(ram2_dq),
		.ram_dqs(ram2_dqs),
		.ram_cs_n(ram2_cs_n),
		.ram_rst_n(ram2_rst_n),

		.bus_en(1'b0)	//TODO
	);

	HyperRAMController ram3(
		.clk(clk_ram),
		.clk_90(clk_ram_90),

		.ram_clk_p(ram3_clk_p),
		.ram_clk_n(ram3_clk_n),

		.ram_dq(ram3_dq),
		.ram_dqs(ram3_dqs),
		.ram_cs_n(ram3_cs_n),
		.ram_rst_n(ram3_rst_n),

		.bus_en(1'b0)	//TODO
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Debug stuff

	//PRBS-31 generator
	logic[30:0] prbs = 32'hdeadbeef;

	logic	dout0 = 0;
	logic	dout1 = 0;

	logic xorout;
	always_ff @(posedge clk_125mhz) begin
		xorout	= prbs[30] ^ prbs[27];
		prbs	= { prbs[29:0], xorout };
		dout0	<= xorout;

		xorout	= prbs[30] ^ prbs[27];
		prbs	= { prbs[29:0], xorout };
		dout1	<= xorout;
	end

	DDROutputBuffer #(
		.WIDTH(8)
	) dobuf (
		.clk_p(clk_125mhz),
		.clk_n(!clk_125mhz),
		.dout(txd),
		.din0({7'h0, dout0}),
		.din1({7'h0, dout1})
	);

	//Logic analyzer

	ila_0 ila(
		.clk(clk_ipstack),

		.probe0(ipstack.tcpv4_rx_l4_bus),
		.probe1(ipstack.ipv4_rx_l3_bus),
		.probe2(ipstack.tcp_ipv4.rx_state),

		.trig_out(trig_out),
		.trig_out_ack(trig_out)
	);

	assign pmod_dq[0]	= rgmii_rxd[0];
	assign pmod_dq[1]	= rgmii_rxd[1];
	assign pmod_dq[2]	= rgmii_rxd[2];
	assign pmod_dq[3]	= rgmii_rxc;
	assign pmod_dq[7:4] = 0;

	assign led[0] = pll_locked;
	assign led[3:1]	= 0;
	assign eth_activity_led = (mac.rgmii_bridge.link_speed == 1);
	assign eth_link_led = link_up;

endmodule
