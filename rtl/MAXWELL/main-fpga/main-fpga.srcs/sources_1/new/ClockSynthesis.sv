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

/**
	@file
	@author Andrew D. Zonenberg
	@brief Clock generation for MAXWELL
 */
module ClockSynthesis(

	//156.25 MHz LVDS clock from LMK04806
	input wire		k7_clk_p,
	input wire		k7_clk_n,

	//50 MHz RMII reference clock
	output wire		clk_50mhz,

	//125 MHz clock for RGMII
	output wire		clk_125mhz,

	//156.25 MHz system clock
	output wire		clk_156mhz,

	//250 MHz clock for RGMII
	output wire		clk_250mhz,

	//312.5 MHz system clock
	output wire		clk_312mhz,

	//400 MHz clock for IDELAYCTRL
	output wire		clk_400mhz,

	//625 MHz clock for LVDS probe inputs
	output wire		clk_625mhz
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Input clock buffer

	wire	k7_clk;

	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(1),
		.OPTIMIZE("SPEED")
	) ibuf_clk (
		.pad_in_p(k7_clk_p),
		.pad_in_n(k7_clk_n),
		.fabric_out(k7_clk)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Primary clock PLL used for all system clocks

	ReconfigurablePLL #(
		.OUTPUT_GATE(6'b111111),
		.OUTPUT_BUF_GLOBAL(6'b111111),
		.IN0_PERIOD(6.4),
		.IN1_PERIOD(6.4),
		.OUT0_MIN_PERIOD(20),	//clk_50mhz
		.OUT1_MIN_PERIOD(8),	//clk_125mhz,
		.OUT2_MIN_PERIOD(6.4),	//clk_156mhz,
		.OUT3_MIN_PERIOD(4),	//clk_250mhz,
		.OUT4_MIN_PERIOD(3.2),	//clk_312mhz
		.OUT5_MIN_PERIOD(1.6),	//clk_625mhz
		.ACTIVE_ON_START(1)		//start PLL automatically out of reset
	) main_pll (
		.clkin({1'b0, k7_clk}),
		.clksel(1'b1),

		.clkout({clk_625mhz, clk_312mhz, clk_250mhz, clk_156mhz, clk_125mhz, clk_50mhz}),
		.reset(1'b0),
		.locked(),

		.busy(),
		.reconfig_clk(1'b0),
		.reconfig_start(1'b0),
		.reconfig_finish(1'b0),
		.reconfig_cmd_done(),
		.reconfig_vco_en(1'b0),
		.reconfig_vco_mult(7'b0),
		.reconfig_vco_indiv(7'b0),
		.reconfig_vco_bandwidth(1'b0),
		.reconfig_output_en(1'b0),
		.reconfig_output_idx(3'b0),
		.reconfig_output_div(8'b0),
		.reconfig_output_phase(9'b0)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Cascaded PLL used to produce the 400 MHz IDELAYCTRL clock and other even frequencies

	wire[4:0] unused;

	ReconfigurablePLL #(
		.OUTPUT_GATE(6'b000001),
		.OUTPUT_BUF_GLOBAL(6'b000001),
		.IN0_PERIOD(20),
		.IN1_PERIOD(2),
		.OUT0_MIN_PERIOD(2.5),	//clk_400mhz
		.OUT1_MIN_PERIOD(2.5),	//unused
		.OUT2_MIN_PERIOD(2.5),	//unused
		.OUT3_MIN_PERIOD(2.5),	//unused
		.OUT4_MIN_PERIOD(2.5),	//unused
		.OUT5_MIN_PERIOD(2.5),	//unused
		.ACTIVE_ON_START(1)		//start PLL automatically out of reset
	) even_pll (
		.clkin({1'b0, clk_50mhz}),
		.clksel(1'b1),

		.clkout({unused, clk_400mhz}),
		.reset(1'b0),
		.locked(),

		.busy(),
		.reconfig_clk(1'b0),
		.reconfig_start(1'b0),
		.reconfig_finish(1'b0),
		.reconfig_cmd_done(),
		.reconfig_vco_en(1'b0),
		.reconfig_vco_mult(7'b0),
		.reconfig_vco_indiv(7'b0),
		.reconfig_vco_bandwidth(1'b0),
		.reconfig_output_en(1'b0),
		.reconfig_output_idx(3'b0),
		.reconfig_output_div(8'b0),
		.reconfig_output_phase(9'b0)
	);

endmodule
