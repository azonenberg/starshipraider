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

	enum logic[3:0]
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
	} tx_state;

	logic		cs_n;

	initial begin
		cs_n	 = 1;
		tx_state = TX_STATE_IDLE;
	end

	logic		shift_en	= 0;
	wire		shift_done;
	logic[7:0]	tx_data		= 0;

	wire[2:0] 	dut_spi_state;

	wire		host_active;
	wire		dut_spi_busy;

	always_ff @(posedge clk) begin

		shift_en	<= 0;

		//Must always be in a valid state
		assert(tx_state <= TX_STATE_WAIT);

		//Cannot send a byte if the DUT is still proecssing the last
		if(shift_en)
			assert(!$past(dut_spi_busy));

		//Cannot start a new transaction if one is in progress
		if(tx_state != TX_STATE_IDLE)
			assume(!wr_en);

		//Don't change data when a transaction is active
		if(!wr_en) begin
			assume(wr_addr == $past(wr_addr));
			assume(wr_data == $past(wr_data));
		end

		case(tx_state)

			//Wait for stuff to happen
			TX_STATE_IDLE: begin

				//DUT should be in the idle state as no bytes have come through yet
				assert(dut_spi_state == 0);

				//CS should be high before starting anything
				assert(cs_n == 1);

				//Host shouldn't be sending anything
				assert(!host_active);

				if(wr_en) begin
					cs_n		<= 0;
					tx_state	<= TX_STATE_ADDR_0;
				end

			end	//end TX_STATE_IDLE

			//Send the address
			TX_STATE_ADDR_0: begin

				//DUT should be in the idle state as no bytes have come through yet
				assert(dut_spi_state == 0);

				shift_en		<= 1;
				tx_data			<= wr_addr[15:8];
				tx_state		<= TX_STATE_ADDR_1;
			end	//end TX_STATE_ADDR_0

			TX_STATE_ADDR_1: begin

				assert(dut_spi_state <= 1);

				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_addr[7:0];
					tx_state	<= TX_STATE_DATA_0;
				end
			end	//end TX_STATE_ADDR_0

			//Send the data
			TX_STATE_DATA_0: begin

				assert(dut_spi_state <= 2);

				if(shift_done) begin

					shift_en	<= 1;
					tx_data		<= wr_data[31:24];
					tx_state	<= TX_STATE_DATA_1;
				end
			end	//end TX_STATE_DATA_0

			TX_STATE_DATA_1: begin

				assert(dut_spi_state <= 3);

				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_data[23:16];
					tx_state	<= TX_STATE_DATA_2;
				end
			end	//end TX_STATE_DATA_1

			TX_STATE_DATA_2: begin

				assert(dut_spi_state <= 4);

				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_data[15:8];
					tx_state	<= TX_STATE_DATA_3;
				end
			end	//end TX_STATE_DATA_2

			TX_STATE_DATA_3: begin

				assert(dut_spi_state <= 5);

				if(shift_done) begin
					shift_en	<= 1;
					tx_data		<= wr_data[7:0];
					tx_state	<= TX_STATE_DONE;
				end
			end	//end TX_STATE_DATA_3

			TX_STATE_DONE: begin

				assert(dut_spi_state <= 6);

				if(shift_done) begin
					cs_n		<= 1;
					tx_state	<= TX_STATE_WAIT;
				end

			end	//end TX_STATE_DONE

			//Wait for the slave to finish processing the transaction
			TX_STATE_WAIT: begin

				//only way to get here is from TX_STATE_DONE
				assert(cs_n == 1);

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
		.rx_data(),

		.active(host_active)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The actual DUT

	wire		reg_wr_en;
	wire[15:0]	reg_wr_addr;
	wire[31:0]	reg_wr_data;

	wire[7:0]	dut_rx_data;

	SPIRegisterInterface dut(
		.clk_312mhz(clk),

		.mcu_spi_cs_n(cs_n),
		.mcu_spi_sck(sck),
		.mcu_spi_mosi(mosi),
		.mcu_spi_miso(miso),

		.reg_wr_en(reg_wr_en),
		.reg_wr_addr(reg_wr_addr),
		.reg_wr_data(reg_wr_data),

		.spi_state(dut_spi_state),
		.spi_busy(dut_spi_busy),
		.rx_data(dut_rx_data)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Verification logic

	always_ff @(posedge clk) begin

		if(reg_wr_en) begin

			//Must have sent the last data word
			assert( (tx_state == TX_STATE_WAIT) || (tx_state == TX_STATE_DONE) );

			//When we get a write, make sure it's correct
			assert(wr_addr == reg_wr_addr);
			assert(wr_data == reg_wr_data);

			//At the end of each read, verify it matches what we sent
			if(shift_done) begin

				//Make sure we get what we wanted
				/*case(tx_state)
					TX_STATE_ADDR_1:	assert(tx_data == reg_wr_addr[15:8]);
					TX_STATE_DATA_0:	assert(tx_data == reg_wr_addr[7:0]);
					TX_STATE_DATA_1:	assert(tx_data == reg_wr_data[31:24]);
					TX_STATE_DATA_2:	assert(tx_data == reg_wr_data[23:16]);
					TX_STATE_DATA_3:	assert(tx_data == reg_wr_data[15:8]);
					TX_STATE_DONE:		assert(tx_data == reg_wr_data[7:0]);
				endcase
				*/

				//Make sure the data received so far is correct
				case(tx_state)

					TX_STATE_DATA_0: begin
						assert(reg_wr_addr[15:8] == wr_addr[15:8]);
					end

					TX_STATE_DATA_1: begin
						assert(reg_wr_addr == wr_addr);
					end

				endcase

				//Verify SPI link data was received correctly
				assert(dut_rx_data == tx_data);

			end

		end

	end

endmodule
