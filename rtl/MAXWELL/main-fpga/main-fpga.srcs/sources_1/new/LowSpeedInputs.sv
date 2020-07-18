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
	@brief Low-speed inputs (1.25 Gsps)
 */
module LowSpeedInputs(

	//Low speed (1/8 rate) and high speed (1/2 rate) sampling clocks
	input wire				clk_156mhz,
	input wire				clk_625mhz,

	//IDELAY calibration
	input wire				clk_400mhz,

	//LVDS probe inputs
	input wire[91:0]		probe_in_p,
	input wire[91:0]		probe_in_n,

	//Outputs
	output lssample_t[91:0]	samples
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// IDELAY calibration

	IODelayCalibration cal(.refclk(clk_400mhz));

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Differential input buffers

	wire[91:0]	probe_in_se;

	DifferentialInputBuffer #(
		.WIDTH(92),
		.IOSTANDARD("LVDS_25"),
		.ODT(1),
		.OPTIMIZE("SPEED")
	) ibuf (
		.pad_in_p(probe_in_p),
		.pad_in_n(probe_in_n),
		.fabric_out(probe_in_se)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Delay lines

	wire[91:0]	probe_in_delay;

	//TODO: separate delay values for each pod based on final PCB trace lengths
	parameter integer POD_DELAYS[11:0] =
	{
		25,
		25,
		25,
		25,
		25,
		25,
		25,
		25,
		25,
		25,
		25,
		25
	};

	for(genvar g=0; g<12; g++) begin

		//Only 4 bits in the last pod
		if(g == 11) begin
			IODelayBlock #(
				.WIDTH(4),
				.CAL_FREQ(400),
				.INPUT_DELAY(POD_DELAYS[g]),
				.DIRECTION("IN"),
				.IS_CLOCK(0)
			) pod_idelay (
				.i_pad(probe_in_se[8*g +: 4]),
				.i_fabric(probe_in_delay[8*g +: 4]),
				.o_pad(),
				.o_fabric(),
				.input_en(1'b1)
			);
		end

		//8 bits in all others
		else begin
			IODelayBlock #(
				.WIDTH(8),
				.CAL_FREQ(400),
				.INPUT_DELAY(POD_DELAYS[g]),
				.DIRECTION("IN"),
				.IS_CLOCK(0)
			) pod_idelay (
				.i_pad(probe_in_se[8*g +: 8]),
				.i_fabric(probe_in_delay[8*g +: 8]),
				.o_pad(),
				.o_fabric(),
				.input_en(1'b1)
			);
		end

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SERDES

	wire[7:0] probe_in_parallel[91:0];

	wire	iserdes_reset;

	for(genvar g=0; g<92; g++) begin

		ISERDESE2 #(
			.DATA_RATE("DDR"),
			.DATA_WIDTH(8),
			.DYN_CLKDIV_INV_EN("FALSE"),
			.DYN_CLK_INV_EN("FALSE"),
			.INTERFACE_TYPE("NETWORKING"),
			.NUM_CE(1),
			.OFB_USED("FALSE"),
			.SERDES_MODE("MASTER"),
			.INIT_Q1(0),
			.INIT_Q2(0),
			.INIT_Q3(0),
			.INIT_Q4(0),
			.SRVAL_Q1(0),
			.SRVAL_Q2(0),
			.SRVAL_Q3(0),
			.SRVAL_Q4(0),
			.IOBDELAY("BOTH")
		) iserdes (
			.Q1(probe_in_parallel[g][7]),	//swap bit ordering so MSB is leftmost
			.Q2(probe_in_parallel[g][6]),
			.Q3(probe_in_parallel[g][5]),
			.Q4(probe_in_parallel[g][4]),
			.Q5(probe_in_parallel[g][3]),
			.Q6(probe_in_parallel[g][2]),
			.Q7(probe_in_parallel[g][1]),
			.Q8(probe_in_parallel[g][0]),
			.O(),
			.SHIFTOUT1(),
			.SHIFTOUT2(),
			.D(),
			.DDLY(probe_in_delay[g]),
			.CLK(clk_625mhz),
			.CLKB(!clk_625mhz),
			.CE1(1'b1),
			.CE2(1'b1),
			.RST(iserdes_reset),
			.CLKDIV(clk_156mhz),
			.CLKDIVP(1'b0),
			.OCLK(),
			.OCLKB(),
			.BITSLIP(1'b0),	//no bitslip needed, we're oversampling
			.SHIFTIN1(1'b0),
			.SHIFTIN2(1'b0),
			.OFB(),
			.DYNCLKDIVSEL(1'b0),
			.DYNCLKSEL(1'b0)
		);

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Invert channels flipped on the PCB

	//Bitmask of channels flipped on the PCB for layout
	localparam CHANS_TO_INVERT = 92'hBE7_1010_E2AC_8848_337F_6F19;

	always @(posedge clk_156mhz) begin
		for(integer i=0; i<92; i++) begin
			if(CHANS_TO_INVERT[i])
				samples[i]	<= ~probe_in_parallel[i];
			else
				samples[i]	<= probe_in_parallel[i];
		end
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TODO: more swizzling of channels so numbers make sense left to right? or is that taken care of now?

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// RLE compression engine

endmodule
