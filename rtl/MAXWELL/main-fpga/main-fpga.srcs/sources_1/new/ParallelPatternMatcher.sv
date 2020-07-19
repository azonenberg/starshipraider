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
`include "PatternMatcher.svh"

/**
	@file
	@author Andrew D. Zonenberg
	@brief Parallel pattern matching engine (3 cycle latency)
 */
module ParallelPatternMatcher #(
	parameter WIDTH	= 8
)(
	input wire				clk,

	input wire sample_t		samples,
	input wire ppmeconfig_t	pconfig,

	output lssample_t[3:0]	match_found
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Input crossbar (1 cycle latency)

	lssample_t[WIDTH:0]	xbar_out;

	InputCrossbar #(
		.OUTPUT_COUNT(WIDTH+1)
	) xbar (
		.clk(clk),
		.din(samples),
		.selects({pconfig.muxsel_clk, pconfig.muxsel_data[WIDTH-1:0]}),
		.dout(xbar_out)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Pipeline the data and edge detect the clock (1 cycle latency)

	//Data pipeline stage
	lssample_t[WIDTH-1:0]	data_pipe;

	PipelineStage #(
		.WIDTH(WIDTH)
	) pipe (
		.clk(clk),
		.din(xbar_out[WIDTH-1:0]),
		.dout(data_pipe)
	);

	//Clock edge detection
	lssample_t		clock_edges;
	EdgeDetector clock_edge_detector(
		.clk(clk),
		.look_for_rising(pconfig.clock_match_rising),
		.look_for_falling(pconfig.clock_match_falling),
		.data(xbar_out[WIDTH]),
		.edges(clock_edges)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Match against external constant values (1 cycle latency)

	for(genvar i=0; i<4; i++) begin

		DigitalMultiComparator #(
			.WIDTH(8)
		) match_a (
			.clk(clk),
			.din_valid(clock_edges),
			.din_a(data_pipe),
			.mask_a(pconfig.target_masks[i][WIDTH-1:0]),
			.din_b(pconfig.target_values[i][WIDTH-1:0]),
			.dout_match(match_found[i])
		);

	end

endmodule
