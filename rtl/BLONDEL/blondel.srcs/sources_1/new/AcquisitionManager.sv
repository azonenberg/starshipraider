`timescale 1ns / 1ps
`default_nettype none
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

`include "HMCAD1520.svh"
`include "TCPv4Bus.svh"

/**
	@brief Acquisition control logic for the scope
 */
module AcquisitionManager(

	//Analog inputs
	input wire				adc_clk,
	input wire h1520bus_t	adc_bus,

	//TODO: proper TCP arbiter.
	//For now, we just forward UART traffic through us
	input wire				uart_rts,
	output logic			uart_cts	= 0,
	input wire TCPv4TxBus	uart_tx_bus,

	//TCP protocol
	input wire				tcp_clk,
	input wire[15:0]		tcp_port,
	input wire TCPv4RxBus	tcp_rx_bus,
	output logic TCPv4TxBus	tcp_tx_bus
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TCP transmit path (TODO: refactor some of this out into a separate arbiter)

	enum logic[3:0]
	{
		TX_STATE_IDLE	= 0,
		TX_STATE_UART	= 1
	} tx_state = TX_STATE_IDLE;

	always_ff @(posedge tcp_clk) begin

		uart_cts				<= 0;
		tcp_tx_bus.start		<= 0;
		tcp_tx_bus.data_valid	<= 0;
		tcp_tx_bus.commit		<= 0;
		tcp_tx_bus.drop			<= 0;

		case(tx_state)

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Wait for data to transmit

			TX_STATE_IDLE: begin

				if(uart_rts) begin
					uart_cts	<= 1;
					tx_state	<= TX_STATE_UART;
				end

			end	//end TX_STATE_IDLE

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Forward a packet from the UART

			TX_STATE_UART: begin
				tcp_tx_bus	<= uart_tx_bus;

				if(uart_tx_bus.commit || uart_tx_bus.drop)
					tx_state	<= TX_STATE_IDLE;

			end	//end TX_STATE_UART

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// TODO: actual waveform transmit path

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Debug ILA

	ila_0 ila(
		.clk(tcp_clk),
		.probe0(uart_rts),
		.probe1(uart_cts),
		.probe2(uart_tx_bus.start),
		.probe3(uart_tx_bus.commit),
		.probe4(tcp_tx_bus.start),
		.probe5(tcp_tx_bus.commit),
		.probe6(tx_state)
	);

endmodule
