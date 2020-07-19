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
	@brief Edge detector

	Locates edges in a serial data stream.
	Output is 1 if an edge was found at the corresponding position of the stream, 0 if no edge.

	Latency: 1 clock
 */
module EdgeDetector(
	input wire						clk,

	input wire						look_for_rising,
	input wire						look_for_falling,

	input wire lssample_t			data,
	output lssample_t				edges	= 0
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Edge detection

	logic		s0_old		= 0;
	logic[4:0]	s0_extended;
	assign 		s0_extended	= { s0_old, data };

	always_ff @(posedge clk) begin

		//Save the last input
		s0_old	<= data[0];

		//Look at each input for each sample cycle
		for(integer i=3; i>=0; i--) begin
			edges[i]	<= 	(s0_extended[i] && !s0_extended[i+1] && look_for_rising) ||
							(!s0_extended[i] && s0_extended[i+1] && look_for_falling);
		end

	end

endmodule
