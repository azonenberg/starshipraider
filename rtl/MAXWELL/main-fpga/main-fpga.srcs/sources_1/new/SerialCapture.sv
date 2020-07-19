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

/**
	@file
	@author Andrew D. Zonenberg
	@brief Serial capture block

	Samples an incoming parallel data stream representing a deserialized input capture.

	Sampled output can only be asserted once per clock. Sampled_valid is one-hot indication of edge phase.

	Latency: 1 clock
 */
module SerialCapture #(
	parameter SERDES_RATE	= 32			//Width of the output data stream
)(
	input wire						clk,

	input wire lssample_t			data,
	input wire lssample_t			clock_edges,
	input wire lssample_t			reset_edges,

	output logic[SERDES_RATE-1:0]	sampled			= 0,
	output lssample_t				sampled_valid	= 0
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Process data if edges were found

	localparam INDEX_BITS = $clog2(SERDES_RATE);

	//Use a one-hot counter to reduce fan-in on the critical path
	logic[SERDES_RATE:0]	count 		= {1'b1, {SERDES_RATE{1'b0}} };

	logic[SERDES_RATE-1:0]	work_buf	= 0;

	always_ff @(posedge clk) begin

		sampled_valid	<= 0;

		//Look at each input for each sample cycle
		for(integer i=3; i>=0; i--) begin

			//Sample if we're on the right edge
			if(clock_edges[i]) begin
				work_buf			= { work_buf[SERDES_RATE-2:0], data[i] };
				count				= {1'b0, count[SERDES_RATE:1]};
			end

			//If we've sampled all of the bits in the word, output a word
			if(count[0]) begin
				sampled				<= work_buf;
				sampled_valid[i]	<= 1;
				count				= {1'b1, {SERDES_RATE{1'b0}} };
			end

			//Synchronous reset
			if(reset_edges[i])
				count 				= {1'b1, {SERDES_RATE{1'b0}} };

		end

	end

endmodule
