`timescale 1ns / 1ps
`default_nettype none
/***********************************************************************************************************************
*                                                                                                                      *
* ANTIKERNEL v0.1                                                                                                      *
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

module SocketManager_sim();

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clock

	logic ready = 0;
	logic clk = 0;
	initial begin
		#100;
		ready = 1;
	end

	always begin
		#5;
		clk = ready;
		#5;
		clk = 0;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// The DUT

	`include "SocketBus.svh"

	logic			lookup_en		= 0;
	socketstate_t	lookup_headers	= {$bits(socketstate_t){1'b0}};
	wire			lookup_done;
	wire			lookup_hit;
	wire[10:0]		lookup_sockid;

	logic			insert_en		= 0;
	socketstate_t	insert_headers	= {$bits(socketstate_t){1'b0}};
	wire			insert_done;
	wire[10:0]		insert_sockid;
	wire			insert_fail;

	logic			remove_en		= 0;
	logic[10:0]		remove_sockid	= 0;
	wire			remove_done;

	logic			aging_tick		= 0;
	logic[9:0]		max_age			= 10;

	SocketManager mgr(
		.clk(clk),

		.lookup_en(lookup_en),
		.lookup_headers(lookup_headers),
		.lookup_done(lookup_done),
		.lookup_hit(lookup_hit),
		.lookup_sockid(lookup_sockid),

		.insert_en(insert_en),
		.insert_headers(insert_headers),
		.insert_done(insert_done),
		.insert_sockid(insert_sockid),
		.insert_fail(insert_fail),

		.remove_en(remove_en),
		.remove_sockid(remove_sockid),
		.remove_done(remove_done),

		.aging_tick(aging_tick),
		.max_age(max_age)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Test state machine

	logic[7:0] state = 0;

	always_ff @(posedge clk) begin

		lookup_en	<= 0;
		insert_en	<= 0;
		remove_en	<= 0;

		case(state)

			0: begin
				lookup_en						<= 1;
				lookup_headers.client_port		<= 41414;
				lookup_headers.server_port		<= 50100;
				lookup_headers.address			<= { 8'd10, 8'd2, 8'd6, 8'd42 };
				state							<= 1;
			end

			1: begin
				if(lookup_done) begin
					insert_en					<= 1;
					insert_headers.client_port	<= 41414;
					insert_headers.server_port	<= 50100;
					insert_headers.address		<= { 8'd10, 8'd2, 8'd6, 8'd42 };
					state						<= 2;
				end
			end

			2: begin
				if(insert_done) begin
					lookup_en					<= 1;
					state						<= 3;
				end
			end

			3: begin
				if(lookup_done) begin
					remove_en					<= 1;
					remove_sockid				<= insert_sockid;
					state						<= 4;
				end
			end

			4: begin
				if(remove_done) begin
					lookup_en						<= 1;
					lookup_headers.client_port		<= 41414;
					lookup_headers.server_port		<= 50100;
					lookup_headers.address			<= { 8'd10, 8'd2, 8'd6, 8'd42 };
					state							<= 5;
				end
			end

		endcase

	end

endmodule
