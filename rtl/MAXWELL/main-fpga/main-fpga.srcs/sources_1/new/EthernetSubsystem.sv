`default_nettype none
`timescale 1ns/1ps
/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2012-2020 Andrew D. Zonenberg                                                                          *
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
`include "GmiiBus.svh"
`include "EthernetBus.svh"
`include "IPv4Bus.svh"
`include "TCPv4Bus.svh"
`include "UDPv4Bus.svh"

/**
	@file
	@author Andrew D. Zonenberg
	@brief Ethernet and TCP/IP logic
 */
module EthernetSubsystem(

	//Clocks
	input wire			clk_125mhz,
	input wire			clk_156mhz,
	input wire			clk_250mhz,

	//RGMII interface
	input wire			rgmii_rx_clk,
	input wire[3:0]		rgmii_rxd,
	input wire			rgmii_rx_dv,
	output wire			rgmii_tx_clk,
	output wire			rgmii_tx_en,
	output wire[3:0]	rgmii_txd,
	output wire			rgmii_rst_n,

	//SCPI UART to MCU
	output wire			scpi_uart_rx,
	input wire			scpi_uart_tx,

	//MAC address EEPROM
	inout wire			mac_i2c_sda,
	output wire			mac_i2c_scl
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I2C bus for MAC address EEPROM

	i2c_in_t txvr_cin;
	i2c_out_t txvr_cout;

	I2CTransceiver i2c_txvr(
		.clk(clk_156mhz),
		.clkdiv(16'd391),		//400 kHz
		.i2c_scl(mac_i2c_scl),
		.i2c_sda(mac_i2c_sda),
		.cin(txvr_cin),
		.cout(txvr_cout)
	);

	localparam NUM_I2C = 1;

	i2c_in_t[NUM_I2C-1:0]	i2c_driver_cin;
	i2c_out_t[NUM_I2C-1:0]	i2c_driver_cout;
	wire[NUM_I2C-1:0]		i2c_driver_request;
	wire[NUM_I2C-1:0]		i2c_driver_done;
	wire[NUM_I2C-1:0]		i2c_driver_ack;

	I2CArbiter #(
		.NUM_PORTS(NUM_I2C)
	) i2c_arbiter(
		.clk(clk_156mhz),

		.driver_request(i2c_driver_request),
		.driver_done(i2c_driver_done),
		.driver_ack(i2c_driver_ack),
		.driver_cin(i2c_driver_cin),
		.driver_cout(i2c_driver_cout),

		.txvr_cin(txvr_cin),
		.txvr_cout(txvr_cout)
		);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// MAC address generator

	wire		mac_addr_done;
	wire		mac_addr_ready;
	wire		mac_addr_fail;
	wire[47:0]	mac_addr;
	wire[127:0]	eeprom_serial;

	//Read from the EEPROM
	I2CMACAddressReader mac_reader(
		.clk(clk_156mhz),

		.driver_req(i2c_driver_request[0]),
		.driver_ack(i2c_driver_ack[0]),
		.driver_done(i2c_driver_done[0]),
		.driver_cin(i2c_driver_cin[0]),
		.driver_cout(i2c_driver_cout[0]),

		.done(mac_addr_done),
		.ready(mac_addr_ready),
		.fail(mac_addr_fail),
		.mac(mac_addr),
		.serial(eeprom_serial)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The MAC

	wire			mac_rx_clk;
	EthernetRxBus	mac_rx_bus;
	EthernetTxBus	mac_tx_bus;
	wire			mac_tx_ready;

	wire			link_up;
	lspeed_t		link_speed;

	RGMIIMACWrapper mac(
		.clk_125mhz(clk_125mhz),
		.clk_250mhz(clk_250mhz),

		.rgmii_rxc(rgmii_rx_clk),
		.rgmii_rxd(rgmii_rxd),
		.rgmii_rx_ctl(rgmii_rx_dv),

		.rgmii_txc(rgmii_tx_clk),
		.rgmii_txd(rgmii_txd),
		.rgmii_tx_ctl(rgmii_tx_en),

		.mac_rx_clk(mac_rx_clk),
		.mac_rx_bus(mac_rx_bus),

		.mac_tx_bus(mac_tx_bus),
		.mac_tx_ready(mac_tx_ready),

		.link_up(link_up),
		.link_speed(link_speed)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The IP stack (for the 1GbE interface only, to start)

	IPv4Config ip_config;
	assign ip_config.address	= {8'd10, 8'd2, 8'd6, 8'd10};
	assign ip_config.mask		= 32'hffffff00;
	assign ip_config.gateway	= {8'd10, 8'd2, 8'd6, 8'd252};

	UDPv4RxBus	udpv4_rx_bus;
	UDPv4TxBus	udpv4_tx_bus	 =0;

	TCPv4RxBus	tcpv4_rx_bus;
	TCPv4TxBus	tcpv4_tx_bus;

	logic		tcp_port_open_en	= 0;
	logic		tcp_port_close_en	= 0;
	portnum_t	tcp_port_num		= 0;

	localparam TCP_RAM_DEPTH = 256;

	wire		ram_wr_en;
	wire[7:0]	ram_wr_addr;
	wire[511:0]	ram_wr_data;

	wire		ram_rd_en;
	wire[7:0]	ram_rd_addr;
	wire[511:0]	ram_rd_data;
	logic		ram_rd_valid	= 0;

	TCPIPStack #(
		.TX_PACKET_DEPTH(8192),
		.CLK_IPSTACK_HZ(100000000),	//100 MHz clock
		.TCP_RAM_DEPTH(TCP_RAM_DEPTH)
	) stack (
		.clk_ipstack(clk_156mhz),

		.ip_config(ip_config),
		.mac_address(mac_addr),
		.promisc_mode(1'b0),
		.config_update(mac_addr_done),
		.link_up(link_up),

		.mac_rx_clk(mac_rx_clk),
		.mac_rx_bus(mac_rx_bus),
		.mac_tx_clk(clk_125mhz),
		.mac_tx_bus(mac_tx_bus),
		.mac_tx_ready(mac_tx_ready),

		.udpv4_rx_bus(udpv4_rx_bus),
		.udpv4_tx_bus(udpv4_tx_bus),

		.tcpv4_rx_bus(tcpv4_rx_bus),
		.tcpv4_tx_bus(tcpv4_tx_bus),
		.tcp_port_open_en(tcp_port_open_en),
		.tcp_port_close_en(tcp_port_close_en),
		.tcp_port_num(tcp_port_num),

		.ram_ready(1'b1),
		.ram_wr_en(ram_wr_en),
		.ram_wr_addr(ram_wr_addr),
		.ram_wr_data(ram_wr_data),

		.ram_rd_en(ram_rd_en),
		.ram_rd_addr(ram_rd_addr),
		.ram_rd_data(ram_rd_data),
		.ram_rd_valid(ram_rd_valid)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TCP retransmit memory

	MemoryMacro #(
		.WIDTH(512),
		.DEPTH(TCP_RAM_DEPTH),
		.USE_BLOCK(1),
		.OUT_REG(2),
		.DUAL_PORT(1),
		.TRUE_DUAL(1)
	) tcp_mem (

		.porta_clk(clk_156mhz),
		.porta_en(ram_wr_en),
		.porta_addr(ram_wr_addr),
		.porta_we(ram_wr_en),
		.porta_din(ram_wr_data),
		.porta_dout(),

		.portb_clk(clk_156mhz),
		.portb_en(ram_rd_en),
		.portb_addr(ram_rd_addr),
		.portb_we(1'b0),
		.portb_din(512'h0),
		.portb_dout(ram_rd_data)
	);

	logic	ram_rd_en_ff	= 0;
	always_ff @(posedge clk_156mhz) begin
		ram_rd_en_ff	<= ram_rd_en;
		ram_rd_valid	<= ram_rd_en_ff;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Open ports when we start up

	logic[2:0] init_state = 0;

	localparam SCPI_PORT 		= 16'd5025;
	localparam WAVEFORM_PORT 	= 16'd50101;

	always_ff @(posedge clk_156mhz) begin

		tcp_port_open_en	<= 0;

		case(init_state)

			0: begin
				tcp_port_open_en	<= 1;
				tcp_port_num		<= SCPI_PORT;
				init_state			<= 1;
			end

			1: begin
				tcp_port_open_en	<= 1;
				tcp_port_num		<= WAVEFORM_PORT;
				init_state			<= 2;
			end

			2: begin
				//hang forever
			end

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Take data coming in for port 5025 and stream out the UART

	TCPv4TxBus	uart_tx_bus;
	wire		uart_rts;
	wire		uart_cts;

	TCPUARTBridge uart_bridge(
		.clk_uart(clk_156mhz),
		.clkdiv_uart(16'd1356),	//115.2 Kbps @ 156.25 MHz

		.clk_tcp(clk_156mhz),
		.tcp_port(SCPI_PORT),
		.tcp_rx_bus(tcpv4_rx_bus),
		.tcp_rts(uart_rts),
		.tcp_cts(uart_cts),
		.tcp_tx_bus(uart_tx_bus),

		.uart_tx(scpi_uart_rx),
		.uart_rx(scpi_uart_tx)
	);

endmodule
