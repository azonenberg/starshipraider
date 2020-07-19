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

`include "InputState.svh"
`include "SerialPatternMatcher.svh"

/**
	@file
	@author Andrew D. Zonenberg
	@brief Serial pattern matching engine
 */
module SerialPatternMatcher #(
	parameter WIDTH	= 8
)(
	input wire				clk,

	input wire sample_t		samples,
	input wire spmeconfig_t	pconfig,

	output lssample_t[3:0]	match_found
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Input crossbar (1 cycle latency)

	lssample_t[2:0]	xbar_out;

	InputCrossbar #(
		.OUTPUT_COUNT(3)
	) xbar (
		.clk(clk),
		.din(samples),
		.selects({pconfig.muxsel_data, pconfig.muxsel_clk, pconfig.muxsel_rst}),
		.dout(xbar_out)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Detect clock/reset edges (1 cycle latency)

	//Find rising clock edges
	lssample_t		clock_edges;
	EdgeDetector clock_edge_detector(
		.clk(clk),
		.look_for_rising(pconfig.clock_match_rising),
		.look_for_falling(pconfig.clock_match_falling),
		.data(xbar_out[1]),
		.edges(clock_edges)
	);

	//Find falling reset edges
	lssample_t		rst_edges;
	EdgeDetector rst_edge_detector(
		.clk(clk),
		.look_for_rising(pconfig.reset_match_rising),
		.look_for_falling(pconfig.reset_match_falling),
		.data(xbar_out[0]),
		.edges(rst_edges)
	);

	//Pipeline the data by a cycle to phase align it to the edge detector output
	lssample_t		data_pipe;
	PipelineStage #(.WIDTH(1)) pipe_data (
		.clk(clk),
		.din(xbar_out[2]),
		.dout(data_pipe)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Deserialize the input data (1 cycle latency)

	//Look for edges
	wire[7:0]	sampled;
	lssample_t	sampled_valid;

	SerialCapture #(
		.SERDES_RATE(WIDTH)
	) serdes (
		.clk(clk),
		.data(data_pipe),
		.clock_edges(clock_edges),
		.reset_edges(rst_edges),
		.sampled(sampled),
		.sampled_valid(sampled_valid)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Match against external constant values

	for(genvar i=0; i<4; i++) begin

		DigitalComparator #(
			.WIDTH(8)
		) match_a (
			.clk(clk),
			.din_valid(sampled_valid),
			.din_a(sampled),
			.mask_a(pconfig.target_masks[i][WIDTH-1:0]),
			.din_b(pconfig.target_values[i][WIDTH-1:0]),
			.dout_match(match_found[i])
		);

	end

endmodule
