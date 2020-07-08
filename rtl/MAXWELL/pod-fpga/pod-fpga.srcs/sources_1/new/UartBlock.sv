`timescale 1ns/1ps
`default_nettype none
/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2020 Andrew D. Zonenberg                                                                               *
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
	@brief The bank of UARTs and associated FIFOs
 */
module UartBlock(

	input wire			sysclk,

	input wire			pod_uart_rx,
	output wire			pod_uart_tx,

	input wire			tx_fifo_push_en,
	input wire[7:0]		tx_fifo_push_data,

	input wire			rx_fifo_rd_en,
	output wire[7:0]	rx_fifo_rd_data,
	output wire[5:0]	rx_fifo_rd_size
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The UART

	wire		uart_rx_en;
	wire[7:0]	uart_rx_data;
	logic		uart_tx_en	= 0;
	wire		uart_tx_done;

	wire[7:0]	tx_fifo_rdata;

	UART uart(
		.clk(sysclk),
		.clkdiv(16'd1356),	//115.2 Kbps @ 156.25 MHz

		.rx(pod_uart_rx),
		.rxactive(),
		.rx_data(uart_rx_data),
		.rx_en(uart_rx_en),

		.tx(pod_uart_tx),
		.tx_data(tx_fifo_rdata),
		.tx_en(uart_tx_en),
		.txactive(),
		.tx_done(uart_tx_done)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Transmit side

	logic		tx_fifo_rd	= 0;

	SingleClockFifo #(
		.WIDTH(8),
		.DEPTH(32),
		.USE_BLOCK(0),
		.OUT_REG(1)
	) tx_fifo (
		.clk(sysclk),

		.wr(tx_fifo_push_en),
		.din(tx_fifo_push_data),

		.rd(tx_fifo_rd),
		.dout(tx_fifo_rdata),

		.overflow(),
		.underflow(),
		.empty(),
		.full(),
		.rsize(),
		.wsize(),
		.reset()
	);

	//UART read state machine
	enum logic[1:0]
	{
		TX_STATE_IDLE		= 0,
		TX_STATE_POP		= 1,
		TX_STATE_SENDING	= 2

	} tx_state = TX_STATE_IDLE;

	always_ff @(posedge sysclk) begin

		case(tx_state)

			TX_STATE_IDLE: begin
				tx_fifo_rd	<= 1;
				tx_state	<= TX_STATE_POP;
			end	//end TX_STATE_IDLE

			TX_STATE_POP: begin

				//Set valid flag when reading.
				//By the time it's set, the fifo read will be done.
				if(tx_fifo_rd)
					uart_tx_en	<= 1;

				//Sending this cycle, wait for send to finish
				else
					tx_state	<= TX_STATE_SENDING;

			end	//end TX_STATE_POP

			TX_STATE_SENDING: begin
				if(uart_tx_done)
					tx_state	<= TX_STATE_IDLE;
			end	//end TX_STATE_SENDING

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Receive side

	SingleClockFifo #(
		.WIDTH(8),
		.DEPTH(32),
		.USE_BLOCK(0),
		.OUT_REG(1)
	) rx_fifo (
		.clk(sysclk),

		.wr(uart_rx_en),
		.din(uart_rx_data),

		.rd(rx_fifo_rd_en),
		.dout(rx_fifo_rd_data),

		.overflow(),
		.underflow(),
		.empty(),
		.full(),
		.rsize(rx_fifo_rd_size),
		.wsize(),
		.reset()
	);

endmodule
