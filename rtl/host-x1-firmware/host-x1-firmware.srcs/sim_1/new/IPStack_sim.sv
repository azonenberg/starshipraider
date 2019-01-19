`timescale 1ns / 1ps
`default_nettype none
/***********************************************************************************************************************
*                                                                                                                      *
* ANTIKERNEL v0.1                                                                                                      *
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

module IPStack_sim();

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clock

	logic ready = 0;
	logic clk = 0;
	initial begin
		#100;
		ready = 1;
	end

	always begin
		#5;
		clk = ready;
		#5;
		clk = 0;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Simulated PHY

	`include "EthernetBus.svh"
	`include "GmiiBus.svh"

	logic		gmii_rx_clk		= 0;
	GmiiBus		gmii_rx_bus		= {$bits(GmiiBus){1'b0}};
	logic		link_up			= 1;
	lspeed_t	link_speed		= LINK_SPEED_10M;

	wire		gmii_tx_clk;
	assign		gmii_tx_clk		= gmii_rx_clk;
	GmiiBus		gmii_tx_bus;

	integer fpRx;
	integer fpTx;
	integer i;
	initial begin
		@(posedge ready);

		for(i=0; i<10; i=i+1) begin
			#4; gmii_rx_clk 		= 0;
			#4; gmii_rx_clk 		= 1;
		end
		link_up		= 1;
		link_speed	= LINK_SPEED_1000M;
		for(i=0; i<10; i=i+1) begin
			#4; gmii_rx_clk 		= 0;
			#4; gmii_rx_clk 		= 1;
		end

		fpRx = $fopen("/tmp/gmii_rx_pipe", "r");
		fpTx = $fopen("/tmp/gmii_tx_pipe", "w");

		if(fpRx == 0)
			$fatal(0, "Couldn't open RX");
		if(fpTx == 0)
			$fatal(0, "Couldn't open TX");

		while(1) begin
			#4;
			gmii_rx_clk 		= 0;
			gmii_rx_bus.dvalid	= 1;
			gmii_rx_bus.er		= 0;

			$fdisplay(fpTx, "%d %x", gmii_tx_bus.en, gmii_tx_bus.data);
			$fflush(fpTx);

			if(2 != $fscanf(fpRx, "%d %x", gmii_rx_bus.en, gmii_rx_bus.data)) begin
				$display("fscanf error");
				$finish;
			end

			#4;
			gmii_rx_clk			= 1;
		end
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The MAC

	EthernetRxBus					rx_bus;
	EthernetTxBus					tx_bus;
	wire							tx_ready;

	GigabitMacPerformanceCounters	mac_perf;

	TriSpeedEthernetMAC #(
		.RX_CRC_DISABLE(1)
	) mac(
		.gmii_rx_clk(gmii_rx_clk),
		.gmii_rx_bus(gmii_rx_bus),

		.gmii_tx_clk(gmii_tx_clk),
		.gmii_tx_bus(gmii_tx_bus),

		.link_up(link_up),
		.link_speed(link_speed),

		.rx_bus(rx_bus),
		.tx_bus(tx_bus),

		.tx_ready(tx_ready),

		.perf(mac_perf)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The IP stack

	IPv4Config ip_config;
	assign ip_config.address	= {8'd10, 8'd4, 8'd0, 8'd2};
	assign ip_config.mask		= 32'hffffff00;
	assign ip_config.gateway	= {8'd10, 8'd4, 8'd0, 8'd1};
	wire[47:0] mac_address		= 48'h02_de_ad_be_ef_aa;

	UDPv4RxBus	udpv4_rx_bus;
	UDPv4TxBus	udpv4_tx_bus = {$bits(UDPv4TxBus){1'b0}};

	TCPIPStack #(
		.LINK_SPEED_IS_10G(0),
		.CLK_IPSTACK_HZ(100000000)
	) ipstack (
		.clk_ipstack(clk),

		.ip_config(ip_config),
		.mac_address(mac_address),
		.promisc_mode(1'b0),

		.mac_rx_clk(gmii_rx_clk),
		.mac_rx_bus(rx_bus),
		.mac_tx_clk(gmii_rx_clk),
		.mac_tx_bus(tx_bus),
		.mac_tx_ready(tx_ready),

		.udpv4_rx_bus(udpv4_rx_bus),
		.udpv4_tx_bus(udpv4_tx_bus)
	);

endmodule
