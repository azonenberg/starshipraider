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
	@brief Formal testbench for SPIRegisterInterface
 */
module SPIRegisterInterface_formal(
	input wire			clk,

	input wire			wr_en,
	input wire[15:0]	wr_addr,
	input wire[31:0]	wr_data
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Generate SPI transactions when a write happens

	typedef enum logic[3:0]
	{
		TX_STATE_IDLE		= 0,
		TX_STATE_ADDR_0		= 1,
		TX_STATE_ADDR_1		= 2,
		TX_STATE_DATA_0		= 3,
		TX_STATE_DATA_1		= 4,
		TX_STATE_DATA_2		= 5,
		TX_STATE_DATA_3		= 6,
		TX_STATE_DONE		= 7,
		TX_STATE_WAIT		= 8
	} txstate_t;
	txstate_t tx_state = TX_STATE_IDLE;

	logic		cs_n		= 1;

	logic		shift_en	= 0;
	wire		shift_done;
	logic[7:0]	tx_data		= 0;

	logic[15:0]	wr_addr_saved	= 0;
	logic[31:0]	wr_data_saved	= 0;

	//Input constraints
	always_comb begin

		//Cannot start a new transaction if one is in progress
		if(tx_state != TX_STATE_IDLE)
			assume(!wr_en);

		//Don't change data when a transaction is active
		if(!wr_en) begin
			assume(wr_addr == wr_addr_saved);
			assume(wr_data == wr_data_saved);
		end

	end

	always_ff @(posedge clk) begin

		shift_en	<= 0;

		case(tx_state)

			//Wait for stuff to happen
			TX_STATE_IDLE: begin

				if(wr_en) begin
					cs_n		<= 0;
					tx_state	<= TX_STATE_ADDR_0;

					wr_data_saved	<= wr_data;
					wr_addr_saved	<= wr_addr;
				end

			end	//end TX_STATE_IDLE

			//Send the address
			TX_STATE_ADDR_0: begin
				shift_en		<= 1;
				tx_data			<= wr_addr[15:8];
				tx_state		<= TX_STATE_ADDR_1;
			end	//end TX_STATE_ADDR_0

			TX_STATE_ADDR_1: begin
				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_addr[7:0];
					tx_state	<= TX_STATE_DATA_0;
				end
			end	//end TX_STATE_ADDR_0

			//Send the data
			TX_STATE_DATA_0: begin
				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_addr[31:24];
					tx_state	<= TX_STATE_DATA_1;
				end
			end	//end TX_STATE_DATA_0

			TX_STATE_DATA_1: begin
				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_addr[23:16];
					tx_state	<= TX_STATE_DATA_2;
				end
			end	//end TX_STATE_DATA_1

			TX_STATE_DATA_2: begin
				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_addr[15:8];
					tx_state	<= TX_STATE_DATA_3;
				end
			end	//end TX_STATE_DATA_2

			TX_STATE_DATA_3: begin
				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_addr[7:0];
					tx_state	<= TX_STATE_DONE;
				end
			end	//end TX_STATE_DATA_3

			TX_STATE_DONE: begin
				if(shift_done) begin
					cs_n		<= 1;
					tx_state	<= TX_STATE_WAIT;
				end
			end	//end TX_STATE_DONE

			//Wait for the slave to finish processing the transaction
			TX_STATE_WAIT: begin
				if(reg_wr_en)
					tx_state	<= TX_STATE_IDLE;
			end	//end TX_STATE_WAIT

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPI host controller for translating external native memory interface to SPI transactions

	wire	sck;
	wire	mosi;
	wire	miso;

	SPIHostInterface host(
		.clk(clk),
		.clkdiv(4),

		.spi_sck(sck),
		.spi_mosi(mosi),
		.spi_miso(miso),

		.shift_en(shift_en),
		.shift_done(shift_done),
		.tx_data(tx_data),
		.rx_data()
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The actual DUT

	wire		reg_wr_en;
	wire[15:0]	reg_wr_addr;
	wire[31:0]	reg_wr_data;

	SPIRegisterInterface dut(
		.clk_312mhz(clk),

		.mcu_spi_cs_n(cs_n),
		.mcu_spi_sck(sck),
		.mcu_spi_mosi(mosi),
		.mcu_spi_miso(miso),

		.reg_wr_en(reg_wr_en),
		.reg_wr_addr(reg_wr_addr),
		.reg_wr_data(reg_wr_data)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Verification logic

	always_ff @(posedge clk) begin

		//When we get a write, make sure it's correct
		if(reg_wr_en) begin
			assert(wr_addr == reg_wr_addr);
			assert(wr_data == reg_wr_data);
		end

	end

endmodule
