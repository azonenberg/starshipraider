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
	@brief Trigger engine
 */
module TriggerSystem(
	input wire						clk_312mhz,

	input wire						sync_clk_p,
	input wire						sync_clk_n,

	input wire						mcu_1588_pps,

	input wire						pps_in_p,
	input wire						pps_in_n,

	input wire						ext_trig_p,
	input wire						ext_trig_n,

	output wire						trig_out_p,
	output wire						trig_out_n,

	output logic					trig_out	= 0,

	input wire spmeconfig_t[7:0]	spme_configs,
	input wire ppmeconfig_t[1:0]	ppme_configs,

	input wire sample_t				current_sample
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I/O buffers

	wire	sync_clk;

	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(0),
		.OPTIMIZE("SPEED")
	) ibuf_sync_clk (
		.pad_in_p(sync_clk_p),
		.pad_in_n(sync_clk_n),
		.fabric_out(sync_clk)
	);

	//inverted for routability
	wire	pps_in_inv;
	wire	pps_in = !pps_in_inv;

	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(0),
		.OPTIMIZE("SPEED")
	) ibuf_pps_in (
		.pad_in_p(pps_in_p),
		.pad_in_n(pps_in_n),
		.fabric_out(pps_in_inv)
	);

	wire	ext_trig;

	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(0),
		.OPTIMIZE("SPEED")
	) ibuf_ext_trig (
		.pad_in_p(ext_trig_p),
		.pad_in_n(ext_trig_n),
		.fabric_out(ext_trig)
	);

	DifferentialOutputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.SLEW("FAST")
	) obuf_trig_out (
		.pad_out_p(trig_out_p),
		.pad_out_n(trig_out_n),
		.fabric_in(trig_out)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Pipeline delay on the input to allow for propagation across the chip to the trigger blocks

	//Don't infer shift registers, we want separate DFFs to provide more flexibility for the placer
	(* SHREG_EXTRACT = "no" *)	sample_t	current_sample_ff;
	(* SHREG_EXTRACT = "no" *)	sample_t	current_sample_ff2;

	always_ff @(posedge clk_312mhz) begin
		current_sample_ff	<= current_sample;
		current_sample_ff2	<= current_sample_ff;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Pattern matching engines

	lssample_t[3:0]		spme_match_found[7:0];
	lssample_t[3:0]		ppme_match_found[1:0];

	//SPMEs 3:0 - 8 bits wide
	for(genvar g=0; g<4; g++) begin

		SerialPatternMatcher #(
			.WIDTH(8)
		) spme (
			.clk(clk_312mhz),
			.samples(current_sample_ff2),
			.pconfig(spme_configs[g]),
			.match_found(spme_match_found[g])
		);

	end

	//SPMEs 5:4 - 16 bits wide
	for(genvar g=4; g<6; g++) begin

		SerialPatternMatcher #(
			.WIDTH(16)
		) spme (
			.clk(clk_312mhz),
			.samples(current_sample_ff2),
			.pconfig(spme_configs[g]),
			.match_found(spme_match_found[g])
		);

	end

	//SPMEs 7:6 - 32 bits wide
	for(genvar g=6; g<7; g++) begin

		SerialPatternMatcher #(
			.WIDTH(32)
		) spme (
			.clk(clk_312mhz),
			.samples(current_sample_ff2),
			.pconfig(spme_configs[g]),
			.match_found(spme_match_found[g])
		);

	end

	//PPMEs 1:0 - 8 bits wide
	for(genvar g=0; g<2; g++) begin

		ParallelPatternMatcher #(
			.WIDTH(8)
		) ppme (
			.clk(clk_312mhz),
			.samples(current_sample_ff2),
			.pconfig(ppme_configs[g]),
			.match_found(ppme_match_found[g])
		);

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Debug VIO for keeping *PME's from getting optimized out until we finish the trigger logic

	vio_0 vio(
		.clk(clk_312mhz),

		.probe_in0(spme_match_found[0]),
		.probe_in1(spme_match_found[1]),
		.probe_in2(spme_match_found[2]),
		.probe_in3(spme_match_found[3]),
		.probe_in4(spme_match_found[4]),
		.probe_in5(spme_match_found[5]),
		.probe_in6(spme_match_found[6]),
		.probe_in7(spme_match_found[7]),

		.probe_in8(ppme_match_found[0]),
		.probe_in9(ppme_match_found[1])
	);

endmodule
