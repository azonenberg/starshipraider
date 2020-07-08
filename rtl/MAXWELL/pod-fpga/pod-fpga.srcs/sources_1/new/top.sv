`timescale 1ns/1ps
`default_nettype none
/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2020 Andrew D. Zonenberg                                                                               *
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

/**
	@brief Top level module for MAXWELL I/O pod control FPGA

	The SPI interface
 */
module top(

	//Main system clock (156.25 MHz)
	input wire			sysclk_p,
	input wire			sysclk_n,

	//Boot flash (SCK uses STARTUPE2 primitive and isn't a top level port)
	inout wire[3:0]		flash_dq,
	output wire			flash_cs_n,

	//SPI to STM32
	input wire			mgmt_sck,
	input wire			mgmt_cs_n,
	input wire			mgmt_mosi,
	output wire			mgmt_miso,

	//Pod UARTs
	input wire[11:0]	pod_uart_rx,
	output wire[11:0]	pod_uart_tx,

	//Pod power control
	input wire[11:0]	pod_present_n,
	input wire[11:0]	pod_power_alert,
	output logic[11:0]	pod_power_en	= 0
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Startup block (needed to drive CCLK to boot flash)

	wire	cclk_out;

	STARTUPE2 #(
		.SIM_CCLK_FREQ(10),
		.PROG_USR("FALSE")
	) startup(
		.CLK(),
		.GSR(1'b0),
		.GTS(1'b0),
		.KEYCLEARB(1'b0),
		.PACK(),
		.PREQ(),
		.USRCCLKO(cclk_out),
		.USRCCLKTS(1'b0),
		.USRDONEO(1'b1),
		.USRDONETS(1'b0),
		.CFGCLK(),
		.CFGMCLK(),
		.EOS()
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// System clock buffer

	wire	sysclk_raw;
	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(1),
		.OPTIMIZE("SPEED")
	) sysclk_ibuf (
		.pad_in_p(sysclk_p),
		.pad_in_n(sysclk_n),
		.fabric_out(sysclk_raw)
	);

	wire sysclk;
	ClockBuffer #(
		.TYPE("GLOBAL"),
		.CE("NO")
	) sysclk_buf (
		.clkin(sysclk_raw),
		.ce(1'b1),
		.clkout(sysclk)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPI interface to STM32

	SPIDeviceInterface mcu_spi (
		.clk(sysclk),
		.spi_cs_n(mgmt_cs_n),
		.spi_sck(mgmt_sck),
		.spi_mosi(mgmt_mosi),
		.spi_miso(mgmt_miso),

		.cs_falling(),
		.tx_data(8'h0),
		.tx_data_valid(1'b1),
		.rx_data(),
		.rx_data_valid()
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// QSPI interface to boot flash

	QuadSPIFlashController #(
		.SFDP_ADDRESS_32B(0)
	) flash_ctrl(
		.clk(sysclk),

		.spi_sck(cclk_out),
		.spi_dq(flash_dq),
		.spi_cs_n(flash_cs_n),

		.clkdiv(8),	//19.53125 MHz

		.cmd_en(1'b0),
		.cmd_id(),
		.cmd_len(),
		.cmd_addr(),
		.read_data(),
		.read_valid(),
		.write_data(),
		.write_valid(),
		.write_ready(),
		.busy(),

		.capacity_mbits(),
		.sfdp_bad()
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Hotswap power control

	for(genvar g=0; g<12; g++) begin

		//Synchronize presence-detect signal
		wire	present_n;

		ThreeStageSynchronizer #(
			.INIT(0),
			.IN_REG(0)
		) sync_present(
			.clk_in(sysclk),
			.din(pod_present_n),
			.clk_out(sysclk),
			.dout(present_n)
		);

		//Wait about 850ms after mate before applying power
		logic[26:0]	count = 0;

		enum logic[1:0]
		{
			STATE_OFF,
			STATE_TURNING_ON,
			STATE_ON
		} state = STATE_OFF;

		//Main power control state machine
		always_ff @(posedge sysclk) begin

			case(state)

				STATE_OFF: begin

					if(!present_n) begin
						count	<= 1;
						state	<= STATE_TURNING_ON;
					end

				end	//end STATE_OFF

				STATE_TURNING_ON: begin
					count	<= count + 1;

					if(count == 0) begin
						pod_power_en[g]	<= 1;
						state			<= STATE_ON;
					end

				end	//end STATE_TURNING_ON

				STATE_ON: begin
					if(present_n) begin
						pod_power_en[g]	<= 0;
						state			<= STATE_OFF;
					end
				end	//end STATE_ON

			endcase

		end

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// UARTs and FIFOs

	for(genvar g=0; g<12; g++) begin

		wire		uart_rx_en;
		wire[7:0]	uart_rx_data;

		//The UART itself
		UART uart(
			.clk(sysclk),
			.clkdiv(16'd1356),	//115.2 Kbps @ 156.25 MHz

			.rx(pod_uart_rx[g]),
			.rxactive(),
			.rx_data(),
			.rx_en(),

			.tx(pod_uart_tx[g]),
			.tx_data(),
			.tx_en(),
			.txactive(),
			.tx_done()
		);

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPI interface logic

endmodule
