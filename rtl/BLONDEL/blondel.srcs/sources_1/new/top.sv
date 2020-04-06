`default_nettype none
`timescale 1ns/1ps
module top(
	input wire			clk_25mhz,

	//RGMII
	input wire			rgmii_rxc,
	input wire[3:0]		rgmii_rxd,
	input wire			rgmii_rx_ctl,

	output wire			rgmii_txc,
	output wire[3:0]	rgmii_txd,
	output wire			rgmii_tx_ctl,

	//Reset stuff
	output logic		eth_rst_n = 1'h0,

	//MDIO
	inout wire			eth_mdio,
	output wire			eth_mdc,

	//I2C bus to MAC addr eeprom
	inout wire			i2c_sda,
	output wire			i2c_scl
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Reset control

	//Bring up the PHY after a little while
	logic[15:0] eth_rst_count = 1;
	always_ff @(posedge clk_25mhz) begin
		if(eth_rst_count == 0)
			eth_rst_n		<= 1;
		else
			eth_rst_count	<= eth_rst_count + 1'h1;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clock synthesis

	wire	clk_125mhz;
	wire	clk_250mhz;
	wire	clk_100mhz;
	wire	clk_200mhz;

	SystemPLL pll(
		.clk_25mhz(clk_250mhz),

		.clk_100mhz(clk_100mhz),
		.clk_125mhz(clk_125mhz),
		.clk_200mhz(clk_200mhz),
		.clk_250mhz(clk_250mhz)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I/O delay calibration

	IODelayCalibration cal(.refclk(clk_200mhz));

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I2C bus for module-side peripherals

	`include "I2CTransceiver.svh"

	i2c_in_t txvr_cin;
	i2c_out_t txvr_cout;

	I2CTransceiver i2c_txvr(
		.clk(clk_100mhz),
		.clkdiv(16'd250),		//400 kHz
		.i2c_scl(i2c_scl),
		.i2c_sda(i2c_sda),
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
		.clk(clk_100mhz),

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
		.clk(clk_100mhz),

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

	`include "GmiiBus.svh"
	`include "EthernetBus.svh"

	wire			mac_rx_clk;
	EthernetRxBus	mac_rx_bus;
	EthernetTxBus	mac_tx_bus;
	wire			mac_tx_ready;

	wire			link_up;
	lspeed_t		link_speed;

	RGMIIMACWrapper mac(
		.clk_125mhz(clk_125mhz),
		.clk_250mhz(clk_250mhz),

		.rgmii_rxc(rgmii_rxc),
		.rgmii_rxd(rgmii_rxd),
		.rgmii_rx_ctl(rgmii_rx_ctl),

		.rgmii_txc(rgmii_txc),
		.rgmii_txd(rgmii_txd),
		.rgmii_tx_ctl(rgmii_tx_ctl),

		.mac_rx_clk(mac_rx_clk),
		.mac_rx_bus(mac_rx_bus),

		.mac_tx_bus(mac_tx_bus),
		.mac_tx_ready(mac_tx_ready),

		.link_up(link_up),
		.link_speed(link_speed)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The IP stack

	`include "IPv4Bus.svh"
	`include "TCPv4Bus.svh"
	`include "UDPv4Bus.svh"

	IPv4Config ip_config;
	assign ip_config.address	= {8'd10, 8'd2, 8'd6, 8'd20};
	assign ip_config.mask		= 32'hffffff00;
	assign ip_config.gateway	= {8'd10, 8'd2, 8'd6, 8'd252};

	UDPv4RxBus	udpv4_rx_bus;
	UDPv4TxBus	udpv4_tx_bus	 =0;

	TCPIPStack #(
		.TX_PACKET_DEPTH(8192)
	) stack (
		.clk_ipstack(clk_100mhz),

		.ip_config(ip_config),
		.mac_address(mac_addr),
		.promisc_mode(1'b0),
		.config_update(mac_addr_done),

		.mac_rx_clk(mac_rx_clk),
		.mac_rx_bus(mac_rx_bus),
		.mac_tx_clk(clk_125mhz),
		.mac_tx_bus(mac_tx_bus),
		.mac_tx_ready(mac_tx_ready),

		.udpv4_rx_bus(udpv4_rx_bus),
		.udpv4_tx_bus(udpv4_tx_bus),

		//not using any TCP yet
		.tcpv4_rx_bus(),
		.tcpv4_tx_bus({$bits(TCPv4TxBus){1'b0}})
	);

endmodule
