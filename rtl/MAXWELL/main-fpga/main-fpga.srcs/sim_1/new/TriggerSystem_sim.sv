`timescale 1ns/1ps
`default_nettype none
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

/**
	@file
	@author Andrew D. Zonenberg
	@brief Simulation of the trigger system
 */
module TriggerSystem_sim();

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clocking

	logic ready = 0;
	initial begin
		#100;
		ready = 1;
	end

	//Input reference clock
	logic	k7_clk	= 0;
	always begin
		#3.2;
		if(ready)
			k7_clk = !k7_clk;
	end

	wire	k7_clk_p;
	wire	k7_clk_n;
	OBUFDS obuf_clk(
		.I(k7_clk),
		.O(k7_clk_p),
		.OB(k7_clk_n)
	);

	//Synthesize all of the clocks we need
	wire	locked;
	wire	clk_125mhz;
	wire	clk_312mhz;
	wire	clk_400mhz;
	wire	clk_625mhz;
	ClockSynthesis synth(
		.k7_clk_p(k7_clk_p),
		.k7_clk_n(k7_clk_n),

		.clk_125mhz(clk_125mhz),
		.clk_312mhz(clk_312mhz),
		.clk_400mhz(clk_400mhz),
		.clk_625mhz(clk_625mhz),

		.locked(locked)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Test signal source 1 : SPI

	wire	sck;
	wire	mosi;
	wire	miso;

	logic	cs_n			= 1;

	logic		shift_en	= 0;
	wire		shift_done;
	logic[7:0]	tx_data		= 0;

	SPIHostInterface host(
		.clk(clk_125mhz),
		.clkdiv(10),			//12.5 MHz
		.spi_sck(sck),
		.spi_mosi(mosi),
		.spi_miso(miso),

		.shift_en(shift_en),
		.shift_done(shift_done),
		.tx_data(tx_data)
	);

	logic[7:0] state = 0;
	logic[7:0] count = 0;

	always_ff @(posedge clk_125mhz) begin

		shift_en	<= 0;

		case(state)

			0: begin
				if(locked) begin
					count	<= count + 1;
					if(count == 8'hff)
						state	<= 1;
				end
			end

			1: begin
				cs_n	<= 0;
				state	<= 2;
			end

			2: begin
				shift_en	<= 1;
				tx_data		<= 8'h03;
				state		<= 3;
			end

			3: begin
				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= 8'h12;
					state		<= 4;
				end
			end

			4: begin
				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= 8'h34;
					state		<= 5;
				end
			end

			5: begin
				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= 8'h56;
					state		<= 6;
				end
			end

			6: begin
				cs_n	<= 1;
				state	<= 7;
			end

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Convert inputs to differential

	wire[91:0]	low_speed_raw;

	//SPI bus
	assign low_speed_raw[0] = cs_n;
	assign low_speed_raw[1] = sck;
	assign low_speed_raw[2] = mosi;

	//8-bit parallel bus
	assign low_speed_raw[3] = tx_data[0];
	assign low_speed_raw[4] = tx_data[1];
	assign low_speed_raw[5] = tx_data[2];
	assign low_speed_raw[6] = tx_data[3];
	assign low_speed_raw[7] = tx_data[4];
	assign low_speed_raw[8] = tx_data[5];
	assign low_speed_raw[9] = tx_data[6];
	assign low_speed_raw[10] = tx_data[7];

	assign low_speed_raw[91:11] = 0;

	wire[91:0]	low_speed_p;
	wire[91:0]	low_speed_n;

	DifferentialOutputBuffer #(
		.WIDTH(92)
	) obufs (
		.pad_out_p(low_speed_p),
		.pad_out_n(low_speed_n),
		.fabric_in(low_speed_raw)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Low-speed input block

	`include "InputState.svh"

	sample_t samples;

	LowSpeedInputs #(
		.CHANS_TO_INVERT(0)
	) inputs (
		.clk_312mhz(clk_312mhz),
		.clk_400mhz(clk_400mhz),
		.clk_625mhz(clk_625mhz),

		.probe_in_p(low_speed_p),
		.probe_in_n(low_speed_n),

		.samples(samples.lo)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Trigger logic

	`include "PatternMatcher.svh"

	//Trigger pconfiguration
	spmeconfig_t	pconfig;
	assign pconfig.muxsel_clk			= 1;
	assign pconfig.muxsel_rst 			= 0;
	assign pconfig.muxsel_data 			= 2;
	assign pconfig.clock_match_rising 	= 1;
	assign pconfig.clock_match_falling 	= 0;
	assign pconfig.reset_match_rising 	= 0;
	assign pconfig.reset_match_falling 	= 1;
	assign pconfig.target_values[0]		= 32'h03;
	assign pconfig.target_values[1]		= 32'h12;
	assign pconfig.target_values[2]		= 32'h34;
	assign pconfig.target_values[3]		= 32'h56;
	assign pconfig.target_masks[0]		= 32'hff;
	assign pconfig.target_masks[1]		= 32'hff;
	assign pconfig.target_masks[2]		= 32'hff;
	assign pconfig.target_masks[3]		= 32'hff;

	lssample_t[3:0]	match_found;

	SerialPatternMatcher spme(
		.clk(clk_312mhz),
		.samples(samples),
		.pconfig(pconfig),
		.match_found(match_found)
	);

	//Parallel config
	ppmeconfig_t	rconfig;
	assign rconfig.muxsel_clk			= 1;
	assign rconfig.muxsel_data[0]		= 3;
	assign rconfig.muxsel_data[1]		= 4;
	assign rconfig.muxsel_data[2]		= 5;
	assign rconfig.muxsel_data[3]		= 6;
	assign rconfig.muxsel_data[4]		= 7;
	assign rconfig.muxsel_data[5]		= 8;
	assign rconfig.muxsel_data[6]		= 9;
	assign rconfig.muxsel_data[7]		= 10;
	assign rconfig.clock_match_rising 	= 1;
	assign rconfig.clock_match_falling 	= 0;
	assign rconfig.target_values[0]		= 32'h03;
	assign rconfig.target_values[1]		= 32'h12;
	assign rconfig.target_values[2]		= 32'h34;
	assign rconfig.target_values[3]		= 32'h56;
	assign rconfig.target_masks[0]		= 32'hff;
	assign rconfig.target_masks[1]		= 32'hff;
	assign rconfig.target_masks[2]		= 32'hff;
	assign rconfig.target_masks[3]		= 32'hff;

	lssample_t[3:0] parallel_match_found;

	ParallelPatternMatcher ppme(
		.clk(clk_312mhz),
		.samples(samples),
		.pconfig(rconfig),
		.match_found(parallel_match_found)
	);


endmodule
