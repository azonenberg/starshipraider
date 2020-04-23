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

`include "TCPv4Bus.svh"

/**
	@brief Bridges a single TCP socket to a UART

	All well-formed packets arriving on any TCP stream to the port are processed.
	Ordering between data from different TCP streams is not implied.
 */
module TCPUARTBridge(
	input wire				clk_uart,
	input wire[15:0]		clkdiv_uart,

	input wire				clk_tcp,
	input wire[15:0]		tcp_port,
	input wire TCPv4RxBus	tcp_rx_bus,

	output wire				uart_tx
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The UART itself

	logic		uart_tx_en		= 0;
	logic[7:0]	uart_tx_data	= 0;
	wire		uart_tx_done;

	UART uart(
		.clk(clk_uart),
		.clkdiv(clkdiv_uart),

		.rx(1'b1),
		.rxactive(),
		.rx_data(),
		.rx_en(),

		.tx(uart_tx),
		.tx_data(uart_tx_data),
		.tx_en(uart_tx_en),
		.txactive(),
		.tx_done(uart_tx_done)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The RX FIFO

	logic		fifo_rd_en	= 0;
	wire[9:0]	fifo_rd_size;
	wire[2:0]	fifo_rd_len;
	wire[31:0]	fifo_rd_data;
	logic		fifo_pop	= 0;

	//35 bits wide: 3 bits "bytes valid", 32 bits data
	CrossClockPacketFifo #(
		.WIDTH(35),
		.DEPTH(512)
	) rx_fifo (
		.wr_clk(clk_tcp),
		.wr_en(tcp_rx_bus.data_valid && (tcp_rx_bus.dst_port == tcp_port)),
		.wr_data({tcp_rx_bus.bytes_valid, tcp_rx_bus.data}),
		.wr_reset(1'b0),
		.wr_size(),
		.wr_commit(tcp_rx_bus.commit),
		.wr_rollback(tcp_rx_bus.drop),

		.rd_clk(clk_uart),
		.rd_en(fifo_rd_en),
		.rd_offset(10'h0),
		.rd_pop_single(fifo_pop),
		.rd_packet_size(),
		.rd_data({fifo_rd_len, fifo_rd_data}),
		.rd_size(fifo_rd_size),
		.rd_reset(1'b0)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// RX-side state machine

	logic[1:0]	rx_count	= 0;

	enum logic[1:0]
	{
		RX_STATE_IDLE	= 0,
		RX_STATE_READ	= 1,
		RX_STATE_DATA	= 2,
		RX_STATE_POP	= 3
	} rx_state = RX_STATE_IDLE;

	always_ff @(posedge clk_uart) begin

		fifo_rd_en	<= 0;
		uart_tx_en	<= 0;
		fifo_pop	<= 0;

		case(rx_state)

			RX_STATE_IDLE: begin
				if(fifo_rd_size != 0) begin
					fifo_rd_en	<= 1;
					rx_state	<= RX_STATE_READ;
				end
			end	//end RX_STATE_IDLE

			RX_STATE_READ: begin
				if(!fifo_rd_en) begin
					rx_count	<= 1;
					rx_state	<= RX_STATE_DATA;

					uart_tx_en		<= 1;
					uart_tx_data	<= fifo_rd_data[31:24];
				end
			end	//end RX_STATE_READ

			RX_STATE_DATA: begin
				if(uart_tx_done) begin

					//Send the next byte
					uart_tx_en	<= 1;
					rx_count	<= rx_count + 1;

					case(rx_count)
						1:	uart_tx_data <= fifo_rd_data[23:16];
						2:	uart_tx_data <= fifo_rd_data[15:8];
						3:	uart_tx_data <= fifo_rd_data[7:0];
					endcase

					//Done with the current word?
					if(rx_count == fifo_rd_len - 1) begin
						fifo_pop	<= 1;
						rx_state	<= RX_STATE_POP;
					end

				end
			end	//end RX_STATE_DATA

			//Done
			RX_STATE_POP: begin
				if(uart_tx_done)
					rx_state	<= RX_STATE_IDLE;
			end	//end RX_STATE_POP

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TODO: TX side

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Debug ILA
	/*
	ila_0 ila(
		.clk(clk_uart),
		.probe0(fifo_rd_en),
		.probe1(fifo_rd_size),
		.probe2(uart_tx_en),
		.probe3(uart_tx_data),
		.probe4(uart_tx_done),
		.probe5(fifo_rd_len),
		.probe6(fifo_rd_data),
		.probe7(fifo_pop),
		.probe8(rx_count),
		.probe9(rx_state)
		);
	*/

endmodule
