`default_nettype none
`timescale 1ns / 1ps
/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                      *
*                                                                                                                      *
* Copyright (c) 2012-2019 Andrew D. Zonenberg                                                                          *
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

`include "I2CTransceiver.svh"

module top(
	input wire 			clk_100mhz,
	output logic[3:0] 	led,

	inout wire			i2c_sda,
	output wire			i2c_scl
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Sanity check blinky

	logic[20:0] count = 0;
	always_ff @(posedge clk_100mhz) begin
		count <= count + 1'h1;
		if(count == 0)
			led <= led + 1'h1;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I2C bus for talking to line card
	i2c_in_t	i2c_cin;
	i2c_out_t	i2c_cout;
	I2CTransceiver i2c_txvr(
		.clk(clk_100mhz),
		.clkdiv(250),		//400 kHz

		.i2c_scl(i2c_scl),
		.i2c_sda(i2c_sda),

		.cin(i2c_cin),
		.cout(i2c_cout)
    );

	logic		driver_request	= 0;
	logic		driver_done		= 0;
	wire		driver_ack;

    i2c_in_t	driver_cin;
	i2c_out_t	driver_cout;

    I2CArbiter #(
		.NUM_PORTS(1)
	) i2c_arbiter(
		.clk(clk_100mhz),

		.driver_request(driver_request),
		.driver_done(driver_done),
		.driver_ack(driver_ack),
		.driver_cin(driver_cin),
		.driver_cout(driver_cout),

		.txvr_cin(i2c_cin),
		.txvr_cout(i2c_cout)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// INA226 driver

	//Control logic
	logic[7:0] state = 0;

	//8'h80 for ina226
	localparam INA226_ADDR	= 8'h80;
	localparam I2C_WRITE 	= 1'h0;
	localparam I2C_READ		= 1'h1;
	always_ff @(posedge clk_100mhz) begin

		driver_request			<= 0;
		driver_done				<= 0;

		driver_cin.tx_en		<= 0;
		driver_cin.rx_en		<= 0;
		driver_cin.rx_ack		<= 1;
		driver_cin.start_en		<= 0;
		driver_cin.restart_en	<= 0;
		driver_cin.stop_en		<= 0;

		case(state)

			0: begin
				driver_request		<= 1;
				state				<= 1;
			end

			1: begin
				if(driver_ack) begin
					driver_cin.start_en	<= 1;
					state				<= 2;
				end
			end

			2: begin
				if(!driver_cout.busy) begin
					driver_cin.tx_en	<= 1;
					driver_cin.tx_data	<= INA226_ADDR | I2C_WRITE;
					state				<= 3;
				end
			end
			3: begin
				if(!driver_cout.busy) begin
					driver_cin.tx_en	<= 1;
					driver_cin.tx_data	<= 8'h00;	//configuration register
					state				<= 4;
				end
			end
			4: begin
				if(!driver_cout.busy) begin
					driver_cin.restart_en	<= 1;
					state					<= 5;
				end
			end

			5: begin
				if(!driver_cout.busy) begin
					driver_cin.tx_en	<= 1;
					driver_cin.tx_data	<= INA226_ADDR | I2C_READ;
					state				<= 6;
				end
			end

			6: begin
				if(!driver_cout.busy) begin
					driver_cin.rx_en	<= 1;
					state				<= 7;
				end
			end

			7: begin
				if(!driver_cout.busy) begin
					driver_cin.rx_en	<= 1;
					state				<= 8;
				end
			end

			8: begin
				if(!driver_cout.busy) begin
					driver_cin.stop_en	<= 1;
					state				<= 9;
				end
			end

			9: begin
				if(!driver_cout.busy) begin
					driver_done			<= 1;
					state				<= 10;
				end
			end

			10: begin
				state	<= 0;
			end

		endcase

	end

	//Logic analyzer
	ila_0 ila(
		.clk(clk_100mhz),
		.probe0(driver_cin),
		.probe1(driver_cout),
		.probe2(state),
		.probe3(driver_request),
		.probe4(driver_ack),
		.probe5(driver_done)
	);

endmodule
