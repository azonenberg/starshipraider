/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2017 Andrew D. Zonenberg                                                                               *
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

/*
	CONNECTIONS

	PMOD B
		Pin 4 = PRBS output (pmod_b[3])
		Pin 10 = PRBS input (pmod_b[7])

	PMOD C
		Pin 4 = sync clock (pmod_c[3])
 */
module PRBSTesterTop(
	input wire clk,
	inout wire[7:0] pmod_b,
	inout wire[7:0] pmod_c,
	output reg[3:0] led = 0);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Drive unused PMod pins to ground as shields

	assign pmod_b[2:0] = 3'b000;
	assign pmod_b[6:4] = 3'b000;

	assign pmod_c[2:0] = 3'b000;
	assign pmod_c[7:4] = 4'b0000;

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Buffer the incoming clock

	wire clk_bufg;
	ClockBuffer #(
		.TYPE("GLOBAL"),
		.CE("NO")
	) clk_buf (
		.clkin(clk),
		.clkout(clk_bufg),
		.ce(1'b1)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Reconfigurable PLL for generating I/O clocks

	wire[4:0]	clk_unused;
	wire		sysclk;

	reg			pll_reset					= 0;
	wire		pll_locked;
	wire		pll_busy;

	wire		reconfig_clk				= clk_bufg;
	reg			reconfig_start				= 0;
	reg			reconfig_finish				= 0;
	wire		reconfig_cmd_done;
	reg			reconfig_vco_en				= 0;
	reg[6:0]	reconfig_vco_mult			= 0;
	reg[6:0]	reconfig_vco_indiv			= 0;
	reg			reconfig_vco_bandwidth		= 1;
	reg			reconfig_output_en			= 0;
	reg[2:0]	reconfig_output_idx			= 0;
	reg[7:0]	reconfig_output_div			= 0;

	ReconfigurablePLL #(
		.OUTPUT_GATE(6'b000001),		//Gate our output when PLL isn't locked
		.OUTPUT_BUF_GLOBAL(6'b000001),	//Use BUFG on sysclk
		.OUTPUT_BUF_LOCAL( 6'b000000),	//Don't use BUFHs anywhere
		.IN0_PERIOD(8.000),				//Input clock (125 MHz)
		.OUT0_MIN_PERIOD( 2.500),		//Max frequency of outputs (400 MHz, used for static timing)
		.OUT1_MIN_PERIOD( 2.500),
		.OUT2_MIN_PERIOD( 2.500),
		.OUT3_MIN_PERIOD( 2.500),
		.OUT4_MIN_PERIOD( 2.500),
		.OUT5_MIN_PERIOD( 2.500),
		.ACTIVE_ON_START(0),			//Start in reset (requires explicit reset to start)
		.PRINT_CONFIG(0)				//Don't spam the console with the default configuration
	) system_pll (

		.clkin({1'b0, clk_bufg}),		//Input clocks (need to tie off the other clock input)
		.clksel(1'b0),					//always use the one clock source
		.clkout({clk_unused, sysclk}),

		.reset(pll_reset),
		.locked(pll_locked),
		.busy(pll_busy),

		.reconfig_clk(reconfig_clk),
		.reconfig_start(reconfig_start),
		.reconfig_finish(reconfig_finish),
		.reconfig_cmd_done(reconfig_cmd_done),
		.reconfig_vco_en(reconfig_vco_en),
		.reconfig_vco_mult(reconfig_vco_mult),
		.reconfig_vco_indiv(reconfig_vco_indiv),
		.reconfig_vco_bandwidth(reconfig_vco_bandwidth),
		.reconfig_output_en(reconfig_output_en),
		.reconfig_output_idx(reconfig_output_idx),
		.reconfig_output_div(reconfig_output_div)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Initial reconfiguration

	/*
		125 MHz input
		Divide by 1
		Multiply by 8 to get 1 GHz Fvco
		Divide by 10 to get 100 MHz Fout
	 */
	reg[7:0] init_state = 0;
	always @(posedge clk_bufg) begin

		reconfig_start		<= 0;
		reconfig_finish		<= 0;
		reconfig_vco_en		<= 0;
		reconfig_output_en	<= 0;
		pll_reset			<= 0;

		case(init_state)

			//Wait for PLL to stop being busy.
			//When it's done, start reconfiguring stuff.
			0: begin
				if(!pll_busy) begin
					reconfig_start		<= 1;
					init_state			<= 1;
				end
			end

			//Configure VCO
			1: begin
				if(!reconfig_start) begin
					reconfig_vco_en			<= 1;
					reconfig_vco_mult		<= 8;	//1 GHz
					reconfig_vco_indiv		<= 1;
					reconfig_vco_bandwidth	<= 1;	//high/optimized
					init_state				<= 2;
				end

				//Prepare to reconfigure channel 0 (will increment when we send the first write and wrap)
				reconfig_output_idx			<= 7;

			end

			//Configure each output in sequence
			2: begin
				if(reconfig_cmd_done) begin
					reconfig_output_en	<= 1;
					reconfig_output_div	<= 5; //200 MHz //10;		//100 MHz
					reconfig_output_idx	<= reconfig_output_idx + 1'h1;

					//If we're about to write the last output, move on
					if(reconfig_output_idx == 4)
						init_state			<= 3;
				end
			end

			//Restart the PLL
			3: begin
				if(reconfig_cmd_done) begin
					reconfig_finish		<=  1;
					init_state			<=  4;
				end
			end

			//Wait for PLL to lock
			4: begin
				if(pll_locked) begin
					init_state			<= 5;
				end
			end

			//Done, hang here forever
			5: begin

			end

		endcase

		led <= init_state[3:0];

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// PRBS31 generator

	reg [30:0] d = 1;
    always @(posedge sysclk) begin
         d <= { d[29:0], d[30] ^ d[27] };
    end
    assign pmod_b[3] = d[0];

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Reference clock driver

	DDROutputBuffer #(
		.WIDTH(1)
	) refclkbuf (
		.clk_p(sysclk),
		.clk_n(!sysclk),
		.dout({pmod_c[3]}),
		.din0(1'b1),
		.din1(1'b0)
	);

endmodule
