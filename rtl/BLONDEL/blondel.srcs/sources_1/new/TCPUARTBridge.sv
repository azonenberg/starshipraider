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
	output logic TCPv4TxBus	tcp_tx_bus,

	output logic			tcp_rts	= 0,
	input wire				tcp_cts,

	output wire				uart_tx,
	input wire				uart_rx
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The UART itself

	logic		uart_tx_en		= 0;
	logic[7:0]	uart_tx_data	= 0;
	wire		uart_tx_done;

	wire		uart_rx_en;
	wire[7:0]	uart_rx_data;
	wire		uart_rx_active;

	UART uart(
		.clk(clk_uart),
		.clkdiv(clkdiv_uart),

		.rx(uart_rx),
		.rxactive(uart_rx_active),
		.rx_data(uart_rx_data),
		.rx_en(uart_rx_en),

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
					fifo_rd_en		<= 1;
					rx_state		<= RX_STATE_READ;
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
	// TX-side data buffering

	//Baud rate counter
	logic[15:0] baud_count	= 0;
	logic		baud_tick	= 0;
	always_ff @(posedge clk_uart) begin
		baud_tick	<= 0;
		baud_count	<= baud_count + 1;
		if(baud_count == clkdiv_uart) begin
			baud_tick	<= 1;
			baud_count	<= 0;
		end
	end

	//Flush the FIFO 128 UIs (16 byte times) after the last received packet, or when we see a \n
	logic		wr_flush			= 0;
	logic		rx_flush_pending	= 0;
	logic[7:0]	rx_idlecount		= 0;
	always_ff @(posedge clk_uart) begin

		wr_flush	<= 0;

		//If a byte is in progress, reset the counter
		if(uart_rx_active) begin
			rx_flush_pending	<= 1;
			rx_idlecount		<= 0;
		end

		//Count UIs
		else if(rx_flush_pending && baud_tick) begin
			rx_idlecount		<= rx_idlecount + 1;
			if(rx_idlecount == 127) begin
				wr_flush			<= 1;
				rx_flush_pending	<= 0;
			end
		end

		//Flush immediately if we see a \n on the UART
		if(uart_rx_en && uart_rx_data == "\n") begin
			wr_flush			<= 1;
			rx_flush_pending	<= 0;
		end

	end

	wire		tx_flush_sync;
	PulseSynchronizer sync_flush(
		.clk_a(clk_uart),
		.pulse_a(wr_flush),
		.clk_b(clk_tcp),
		.pulse_b(tx_flush_sync)
	);

	logic		tx_rd_en	= 0;
	wire[31:0]	tx_rd_data;
	wire[2:0]	tx_rd_bytes_valid;
	wire[10:0]	tx_fifo_rsize;

	CrossClockByteInputFifo #(
		.DEPTH(512)
	) tx_fifo (
		.wr_clk(clk_uart),
		.wr_en(uart_rx_en),
		.wr_data({uart_rx_data, 24'h0}),
		.wr_bytes_valid(3'd1),
		.wr_flush(wr_flush),

		.rd_clk(clk_tcp),
		.rd_en(tx_rd_en),
		.rd_data(tx_rd_data),
		.rd_bytes_valid(tx_rd_bytes_valid),
		.rd_size(tx_fifo_rsize),
		.rd_empty(),
		.rd_underflow()
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TX-side state machine

	enum logic[2:0]
	{
		TX_STATE_IDLE	= 0,
		TX_STATE_POP	= 1,
		TX_STATE_DATA	= 2,
		TX_STATE_LAST	= 3,
		TX_STATE_COMMIT	= 4
	} tx_state = TX_STATE_IDLE;

	logic		tx_flush_pending	= 0;
	logic[6:0]	tx_flush_delay;

	always_ff @(posedge clk_tcp) begin

		tx_rd_en				<= 0;
		tcp_tx_bus.start		<= 0;
		tcp_tx_bus.data_valid	<= 0;
		tcp_tx_bus.commit		<= 0;
		tcp_tx_bus.drop			<= 0;

		//Use the socket of the last inbound segment with valid data as our reply address for now
		//(only save committed packets to our port)
		if(tcp_rx_bus.commit && (tcp_rx_bus.dst_port == tcp_port) && (tcp_rx_bus.payload_len > 0) ) begin
			tcp_tx_bus.dst_port	<= tcp_rx_bus.src_port;
			tcp_tx_bus.src_port	<= tcp_port;
			tcp_tx_bus.dst_ip	<= tcp_rx_bus.src_ip;
			tcp_tx_bus.sockid	<= tcp_rx_bus.sockid;
		end

		//When a flush request comes in, start a timer.
		//This ensures that all flush events have propagated through the FIFO.
		//We need a large delay because the UART clock domain is much slower than us.
		if(tx_flush_sync)
			tx_flush_delay	<= 1;
		if(tx_flush_delay) begin
			tx_flush_delay	<= tx_flush_delay + 1;
			if(tx_flush_delay == 127)
				tx_flush_pending	<= 1;
		end

		case(tx_state)

			TX_STATE_IDLE: begin

				//Purge any garbage that gets in prior to our session coming up
				if(tcp_tx_bus.dst_ip == 32'h00000000) begin
					if( (tx_fifo_rsize != 0) && !tx_rd_en) begin
						tx_rd_en			<= 1;
						tx_flush_pending	<= 0;
					end
				end

				//Start a packet if we are flushed, or if we get more than 256 words (1024 bytes) in the fifo.
				else if( (tx_fifo_rsize >= 256) || (tx_flush_pending && tx_fifo_rsize != 0) ) begin
					tx_rd_en			<= 1;
					tx_flush_pending	<= 0;
					tx_state			<= TX_STATE_POP;

					tcp_rts				<= 1;
				end

			end	//end TX_STATE_IDLE

			TX_STATE_POP: begin

				if(tcp_cts) begin
					tcp_rts	<= 0;

					tcp_tx_bus.start	<= 1;

					if(tx_fifo_rsize > 1) begin
						tx_rd_en		<= 1;
						tx_state		<= TX_STATE_DATA;
					end

					else
						tx_state		<= TX_STATE_LAST;
				end

			end	//end TX_STATE_POP

			TX_STATE_DATA: begin
				if(tx_fifo_rsize > 1)
					tx_rd_en		<= 1;
				else
					tx_state		<= TX_STATE_LAST;

				tcp_tx_bus.data_valid	<= 1;
				tcp_tx_bus.bytes_valid	<= tx_rd_bytes_valid;
				tcp_tx_bus.data			<= tx_rd_data;

			end	//end TX_STATE_DATA

			TX_STATE_LAST: begin

				tcp_tx_bus.data_valid	<= 1;
				tcp_tx_bus.bytes_valid	<= tx_rd_bytes_valid;
				tcp_tx_bus.data			<= tx_rd_data;

				tx_state				<= TX_STATE_COMMIT;

			end	//end TX_STATE_DATA

			TX_STATE_COMMIT: begin

				//Last frame done
				tcp_tx_bus.commit	<= 1;
				tx_state			<= TX_STATE_IDLE;
			end	//end TX_STATE_COMMIT

		endcase

	end

endmodule
