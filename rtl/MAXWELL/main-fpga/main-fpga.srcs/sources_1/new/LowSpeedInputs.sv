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
module LowSpeedInputs #(

	//Bitmask of channels flipped on the PCB for layout.
	//Keep this as is for hardware. Set to 0 for simplified simulation.
	parameter CHANS_TO_INVERT 		= 92'hBE7_1010_E2AC_8848_337F_6F19,

	//Set true to correct for MEAD pod channel ordering
	parameter REORDER_MEAD_CHANNELS = 1
)(

	//Low speed (1/4 rate) and high speed (1/2 rate) sampling clocks
	input wire				clk_312mhz,
	input wire				clk_625mhz,

	//IDELAY calibration
	input wire				clk_400mhz,

	//LVDS probe inputs
	input wire[91:0]		probe_in_p,
	input wire[91:0]		probe_in_n,

	//Outputs
	output lssamples_t		samples
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// IDELAY calibration

	IODelayCalibration cal(.refclk(clk_400mhz));

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Differential input buffers

	wire[91:0]	probe_in_se_p;
	wire[91:0]	probe_in_se_n;

	for(genvar g=0; g<92; g=g+1) begin : ibufs

		IBUFDS_DIFF_OUT #(
			.IOSTANDARD("LVDS_25"),
			.IBUF_LOW_PWR("FALSE"),
			.DIFF_TERM("TRUE")
		) ibuf (
			.I(probe_in_p[g]),
			.IB(probe_in_n[g]),
			.O(probe_in_se_p[g]),
			.OB(probe_in_se_n[g])
		);

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Delay lines

	wire[91:0]	probe_in_delay_p;
	wire[91:0]	probe_in_delay_n;

	//Delays (in ps) for each pod
	localparam integer POD_DELAYS[11:0] =
	{
		300,
		356,
		543,
		674,
		758,
		711,
		601,
		512,
		365,
		258,
		118,
		0
	};

	for(genvar g=0; g<12; g++) begin

		//Only 4 bits in the last pod
		if(g == 11) begin

			//Positive delay line
			IODelayBlock #(
				.WIDTH(4),
				.CAL_FREQ(400),
				.INPUT_DELAY(POD_DELAYS[g]),
				.DIRECTION("IN"),
				.IS_CLOCK(0)
			) pod_idelay_p (
				.i_pad(probe_in_se_p[8*g +: 4]),
				.i_fabric(probe_in_delay_p[8*g +: 4]),
				.o_pad(),
				.o_fabric(),
				.input_en(1'b1)
			);

			//Negative delay line (phase shift by 400ps WRT positive)
			IODelayBlock #(
				.WIDTH(4),
				.CAL_FREQ(400),
				.INPUT_DELAY(POD_DELAYS[g] + 400),
				.DIRECTION("IN"),
				.IS_CLOCK(0)
			) pod_idelay_n (
				.i_pad(probe_in_se_n[8*g +: 4]),
				.i_fabric(probe_in_delay_n[8*g +: 4]),
				.o_pad(),
				.o_fabric(),
				.input_en(1'b1)
			);

		end

		//8 bits in all others
		else begin

			//Positive delay line
			IODelayBlock #(
				.WIDTH(8),
				.CAL_FREQ(400),
				.INPUT_DELAY(POD_DELAYS[g]),
				.DIRECTION("IN"),
				.IS_CLOCK(0)
			) pod_idelay_p (
				.i_pad(probe_in_se_p[8*g +: 8]),
				.i_fabric(probe_in_delay_p[8*g +: 8]),
				.o_pad(),
				.o_fabric(),
				.input_en(1'b1)
			);

			//Negative delay line (phase shift by 400ps WRT positive)
			IODelayBlock #(
				.WIDTH(8),
				.CAL_FREQ(400),
				.INPUT_DELAY(POD_DELAYS[g] + 400),
				.DIRECTION("IN"),
				.IS_CLOCK(0)
			) pod_idelay_n (
				.i_pad(probe_in_se_n[8*g +: 8]),
				.i_fabric(probe_in_delay_n[8*g +: 8]),
				.o_pad(),
				.o_fabric(),
				.input_en(1'b1)
			);

		end

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SERDES

	//4x low-speed sample (half of the block)
	typedef logic[3:0] lhsample_t;

	lhsample_t probe_in_parallel_p[91:0];
	lhsample_t probe_in_parallel_n[91:0];

	logic	iserdes_reset = 0;

	for(genvar g=0; g<92; g++) begin

		ISERDESE2 #(
			.DATA_RATE("DDR"),
			.DATA_WIDTH(4),
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
		) iserdes_p (
			.Q1(probe_in_parallel_p[g][0]),
			.Q2(probe_in_parallel_p[g][1]),
			.Q3(probe_in_parallel_p[g][2]),
			.Q4(probe_in_parallel_p[g][3]),
			.Q5(),
			.Q6(),
			.Q7(),
			.Q8(),
			.O(),
			.SHIFTOUT1(),
			.SHIFTOUT2(),
			.D(),
			.DDLY(probe_in_delay_p[g]),
			.CLK(clk_625mhz),
			.CLKB(!clk_625mhz),
			.CE1(1'b1),
			.CE2(1'b1),
			.RST(iserdes_reset),
			.CLKDIV(clk_312mhz),
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

		ISERDESE2 #(
			.DATA_RATE("DDR"),
			.DATA_WIDTH(4),
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
		) iserdes_n (
			.Q1(probe_in_parallel_n[g][0]),
			.Q2(probe_in_parallel_n[g][1]),
			.Q3(probe_in_parallel_n[g][2]),
			.Q4(probe_in_parallel_n[g][3]),
			.Q5(),
			.Q6(),
			.Q7(),
			.Q8(),
			.O(),
			.SHIFTOUT1(),
			.SHIFTOUT2(),
			.D(),
			.DDLY(probe_in_delay_n[g]),
			.CLK(clk_625mhz),
			.CLKB(!clk_625mhz),
			.CE1(1'b1),
			.CE2(1'b1),
			.RST(iserdes_reset),
			.CLKDIV(clk_312mhz),
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

	logic[7:0]	count = 0;
	logic		reset_done	= 0;

	always_ff @(posedge clk_312mhz) begin
		if(!reset_done) begin
			count	<= count + 1;
			if(count == 8'hff) begin
				if(!iserdes_reset)
					iserdes_reset	<= 1;
				else begin
					iserdes_reset	<= 0;
					reset_done		<= 1;
				end
			end
		end
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Invert channels flipped on the PCB

	lhsample_t[91:0]	current_sample_0;		//Main sample stream
	lhsample_t[91:0]	current_sample_180;		//Second sample stream acquired with 400ps delay from inverted output

	always_ff @(posedge clk_312mhz) begin
		for(integer i=0; i<92; i++) begin
			if(CHANS_TO_INVERT[i]) begin
				current_sample_0[i]		<= ~probe_in_parallel_p[i];
				current_sample_180[i]	<= probe_in_parallel_n[i];
			end
			else begin
				current_sample_0[i]		<= probe_in_parallel_p[i];
				current_sample_180[i]	<= ~probe_in_parallel_n[i];
			end
		end
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Interleave even/odd sampling phases into a single serial data stream

	lssamples_t			current_sample_merged;

	/*
		180 deg samples are taken with a 400ps delay.
		This effectively moves the sampling clock 400ps *earlier* in the data stream, making it a -180 degree phase.
	 */

	//combinatorial because no actual logic, just renaming nets
	always_comb begin
		for(integer i=0; i<92; i++) begin
			current_sample_merged[i] =
			{
				current_sample_180[i][3],
				current_sample_0[i][3],
				current_sample_180[i][2],
				current_sample_0[i][2],
				current_sample_180[i][1],
				current_sample_0[i][1],
				current_sample_180[i][0],
				current_sample_0[i][0]
			};
		end
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Within each group, swap channel numbers so they match the pods left to right.

	/*
		Our channels are numbered with 0-7 based on SFF connector pin numbering.
		But the MEAD pods had to rearrange this due to routing.
		Actual pin ordering from left to right is 7-6-3-2-1-0-5-4.
	 */
	lssamples_t			current_sample;

	//combinatorial because no actual logic, just renaming nets
	always_comb begin
		if(REORDER_MEAD_CHANNELS) begin

			for(integer i=0; i<12; i++) begin

				//Special handling for last pod
				//TODO: is this numbering right?
				if(i == 11) begin
					current_sample[i*8 + 3]	= current_sample_merged[i*8 + 3];
					current_sample[i*8 + 2]	= current_sample_merged[i*8 + 2];
					current_sample[i*8 + 1]	= current_sample_merged[i*8 + 1];
					current_sample[i*8 + 0]	= current_sample_merged[i*8 + 0];
				end

				//Normal pods
				else begin
					current_sample[i*8 + 7]	= current_sample_merged[i*8 + 7];
					current_sample[i*8 + 6]	= current_sample_merged[i*8 + 6];
					current_sample[i*8 + 5]	= current_sample_merged[i*8 + 3];
					current_sample[i*8 + 4]	= current_sample_merged[i*8 + 2];
					current_sample[i*8 + 3]	= current_sample_merged[i*8 + 1];
					current_sample[i*8 + 2]	= current_sample_merged[i*8 + 0];
					current_sample[i*8 + 1]	= current_sample_merged[i*8 + 5];
					current_sample[i*8 + 0]	= current_sample_merged[i*8 + 4];
				end

			end

		end

		else begin
			current_sample	= current_sample_merged;
		end
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Pipeline delay on the input to allow for propagation across the chip to the trigger blocks etc

	//Don't infer shift registers, we want separate DFFs to provide more flexibility for the placer
	(* SHREG_EXTRACT = "no" *)	lssamples_t	current_sample_ff;
	(* SHREG_EXTRACT = "no" *)	lssamples_t	current_sample_ff2;

	always_ff @(posedge clk_312mhz) begin
		current_sample_ff	<= current_sample;
		current_sample_ff2	<= current_sample_ff;
	end

	assign samples = current_sample_ff2;

endmodule
