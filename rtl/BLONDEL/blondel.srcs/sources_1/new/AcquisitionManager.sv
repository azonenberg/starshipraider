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
	// Trigger logic

	logic		trigger_found	= 0;
	logic[2:0]	trigger_pos		= 0;
	logic[7:0]	last_sample		= 0;

	always_ff @(posedge adc_clk) begin

		//Assume no trigger found by default
		trigger_found	<= 0;
		last_sample		<= adc_bus.samples[0];

		//Search from sample 0 (newest) to 7 (oldest)
		//so we return the first trigger if there is one.
		//For now, hard code rising edge trigger at the 50% level
		for(integer i=0; i<8; i=i+1) begin

			//Special case oldest sample
			if(i == 7) begin
				if( (adc_bus.samples[i] >= 128) && (last_sample < 128) ) begin
					trigger_found	<= 1;
					trigger_pos		<= i;
				end
			end

			//Nope, normal
			else begin
				if( (adc_bus.samples[i] >= 128) && (adc_bus.samples[i+1] < 128) ) begin
					trigger_found	<= 1;
					trigger_pos		<= i;
				end
			end

		end

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Waveform data buffer

	logic		ram_wr_en	= 0;
	logic[10:0]	ram_wr_addr	= 0;
	h1520bus_t	ram_wr_data	= 0;

	logic		ram_rd_en	= 0;
	logic[10:0]	ram_rd_addr	= 0;
	h1520bus_t	ram_rd_data;

	logic[10:0]	trigger_addr	= 0;
	logic[2:0]	trigger_phase	= 0;

	logic[10:0]	trigger_addr_ff		= 0;
	logic[2:0]	trigger_phase_ff	= 0;
	always_ff @(posedge tcp_clk) begin
		trigger_addr_ff		<= trigger_addr;
		trigger_phase_ff	<= trigger_phase;
	end

	MemoryMacro #(
		.WIDTH(64),			//8 samples * 8 bits
		.DEPTH(2048),		//2K words = 16K samples
		.USE_BLOCK(1),
		.OUT_REG(1),
		.DUAL_PORT(1),
		.TRUE_DUAL(1)
	) waveform_buffer (
		.porta_clk(adc_clk),
		.porta_en(ram_wr_en),
		.porta_addr(ram_wr_addr),
		.porta_we(ram_wr_en),
		.porta_din(ram_wr_data),
		.porta_dout(),

		.portb_clk(tcp_clk),
		.portb_en(ram_rd_en),
		.portb_addr(ram_rd_addr + trigger_addr_ff),
		.portb_we(1'b0),
		.portb_din(),
		.portb_dout(ram_rd_data)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// ADC buffering logic

	wire		trigger_arm_sync;
	logic		waveform_ready	= 0;

	enum logic[3:0]
	{
		ADC_STATE_IDLE		= 0,
		ADC_STATE_PRE_TRIG	= 1,
		ADC_STATE_ARMED		= 2,
		ADC_STATE_CAPTURE	= 3
	} adc_state = ADC_STATE_IDLE;

	always_ff @(posedge adc_clk) begin

		ram_wr_en		<= 0;
		waveform_ready	<= 0;

		case(adc_state)

			ADC_STATE_IDLE: begin

				//When we get the arm pulse, start collecting pre-trigger data
				if(trigger_arm_sync) begin
					ram_wr_addr	<= 0;
					adc_state	<= ADC_STATE_PRE_TRIG;
				end

			end	//end ADC_STATE_IDLE

			ADC_STATE_PRE_TRIG: begin

				ram_wr_en		<= 1;
				ram_wr_addr		<= ram_wr_addr + 1;
				ram_wr_data		<= adc_bus;

				if(ram_wr_addr == 1024)
					adc_state	<= ADC_STATE_ARMED;

			end	//end ADC_STATE_PRE_TRIG

			ADC_STATE_ARMED: begin

				ram_wr_en		<= 1;
				ram_wr_addr		<= ram_wr_addr + 1;
				ram_wr_data		<= adc_bus;

				if(trigger_found) begin
					trigger_phase	<= trigger_pos;
					trigger_addr	<= ram_wr_addr + 1;
					adc_state		<= ADC_STATE_CAPTURE;
				end

			end	//end ADC_STATE_ARMED

			ADC_STATE_CAPTURE: begin

				//Stop when we've recorded the other half of our window
				if( (ram_wr_addr + 1024) == trigger_addr) begin

					//The final trigger address we push is the START of our capture window.
					//This is one after where we began triggering.
					trigger_addr	<= ram_wr_addr + 1;

					adc_state		<= ADC_STATE_IDLE;
					waveform_ready	<= 1;
				end

				//Nope
				else begin
					ram_wr_en		<= 1;
					ram_wr_addr		<= ram_wr_addr + 1;
					ram_wr_data		<= adc_bus;
				end

			end	//end ADC_STATE_CAPTURE

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Event clock domain crossing

	wire	waveform_ready_sync;

	PulseSynchronizer sync_waveform_ready(
		.clk_a(adc_clk),
		.pulse_a(waveform_ready),
		.clk_b(tcp_clk),
		.pulse_b(waveform_ready_sync)
	);

	logic	trigger_arm	= 0;

	PulseSynchronizer sync_arm(
		.clk_a(tcp_clk),
		.pulse_a(trigger_arm),
		.clk_b(adc_clk),
		.pulse_b(trigger_arm_sync)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TCP receive path

	/*
	enum logic[1:0]
	{
		RX_STATE_IDLE	= 0
	} rx_state = RX_STATE_IDLE;

	always_ff @(posedge tcp_clk) begin

		RX_STATE_IDLE: begin

		end	//end RX_STATE_IDLE

	end
	*/

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// TCP transmit path (TODO: refactor some of this out into a separate arbiter)

	enum logic[3:0]
	{
		TX_STATE_IDLE			= 0,
		TX_STATE_UART			= 1,
		TX_STATE_WAVEFORM_0		= 2,
		TX_STATE_WAVEFORM_1		= 3,
		TX_STATE_WAVEFORM_2		= 4,
		TX_STATE_WAVEFORM_3		= 5
	} tx_state = TX_STATE_IDLE;

	logic		waveform_pending	= 0;
	logic		tx_phase			= 0;

	logic[12:0]	tx_delay			= 0;

	//100 MHz, rearm at ~52 Hz
	logic[20:0]	rearm_count			= 0;

	//Saved configuration for the waveform interface
	logic[15:0]	dst_port			= 0;
	logic[31:0]	dst_ip				= 0;
	logic[15:0]	sockid				= 0;

	h1520bus_t	ram_rd_data_ff		= 0;

	always_ff @(posedge tcp_clk) begin

		uart_cts				<= 0;
		tcp_tx_bus.start		<= 0;
		tcp_tx_bus.data_valid	<= 0;
		tcp_tx_bus.commit		<= 0;
		tcp_tx_bus.drop			<= 0;

		trigger_arm				<= 0;

		ram_rd_en				<= 0;

		if(ram_rd_en)
			ram_rd_data_ff		<= ram_rd_data;

		if(waveform_ready_sync)
			waveform_pending	<= 1;

		if(dst_port != 0) begin

			//Only rearm if connection is idle
			if(tx_state == TX_STATE_IDLE) begin
				rearm_count			<= rearm_count + 1;
				if(rearm_count == 0)
					trigger_arm		<= 1;
			end
		end

		//If we get a byte on the incoming TCP connection, arm the trigger
		if(tcp_rx_bus.commit && (tcp_rx_bus.dst_port == tcp_port) && (tcp_rx_bus.payload_len > 0) ) begin
			trigger_arm			<= 1;
			rearm_count			<= 1;

			dst_port			<= tcp_rx_bus.src_port;
			dst_ip				<= tcp_rx_bus.src_ip;
			sockid				<= tcp_rx_bus.sockid;
		end

		//Stop sending traffic if the socket is closed
		if(tcp_rx_bus.close && (tcp_rx_bus.dst_port == tcp_port) ) begin
			dst_port			<= 0;
			dst_ip				<= 0;
			sockid				<= 0;
		end

		case(tx_state)

			////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Wait for data to transmit

			TX_STATE_IDLE: begin

				if(waveform_pending && (dst_port != 0) ) begin
					waveform_pending	<= 0;
					ram_rd_en			<= 1;
					ram_rd_addr			<= 0;
					tx_phase			<= 0;
					tx_state			<= TX_STATE_WAVEFORM_0;
				end

				else if(uart_rts) begin
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
			// Actual waveform transmit path

			TX_STATE_WAVEFORM_0: begin

				tcp_tx_bus.start	<= 1;
				tcp_tx_bus.dst_port	<= dst_port;
				tcp_tx_bus.src_port	<= tcp_port;
				tcp_tx_bus.dst_ip	<= dst_ip;
				tcp_tx_bus.sockid	<= sockid;

				tx_state			<= TX_STATE_WAVEFORM_1;

			end	//end TX_STATE_WAVEFORM_0

			TX_STATE_WAVEFORM_1: begin

				//Send the data
				tcp_tx_bus.data_valid	<= 1;
				tcp_tx_bus.bytes_valid	<= 4;

				tx_phase				<= !tx_phase;

				//First half (start reading more data)
				if(tx_phase == 0) begin
					case(trigger_phase_ff)
						0: tcp_tx_bus.data		<= ram_rd_data.samples[7:4];
						1: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[0], ram_rd_data.samples[7:5]};
						2: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[1:0], ram_rd_data.samples[7:6]};
						3: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[2:0], ram_rd_data.samples[7]};
						4: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[3:0]};
						5: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[4:1]};
						6: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[5:2]};
						7: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[6:3]};
					endcase

					ram_rd_en			<= 1;
					ram_rd_addr			<= ram_rd_addr + 1;
				end

				else begin

					case(trigger_phase_ff)
						0: tcp_tx_bus.data		<= ram_rd_data.samples[3:0];
						1: tcp_tx_bus.data		<= ram_rd_data.samples[4:1];
						2: tcp_tx_bus.data		<= ram_rd_data.samples[5:2];
						3: tcp_tx_bus.data		<= ram_rd_data.samples[6:3];
						4: tcp_tx_bus.data		<= ram_rd_data.samples[7:4];
						5: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[0], ram_rd_data.samples[7:5]};
						6: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[1:0], ram_rd_data.samples[7:6]};
						7: tcp_tx_bus.data		<= { ram_rd_data_ff.samples[2:0], ram_rd_data.samples[7]};
					endcase

					//End this packet every 1024 samples.
					//Slightly inefficient compared to filling the whole segment, but keeps prototype code simple
					if(ram_rd_addr[6:0] == 0)
						tx_state		<= TX_STATE_WAVEFORM_2;

				end

			end	//end TX_STATE_WAVEFORM_1

			TX_STATE_WAVEFORM_2: begin
				tcp_tx_bus.commit		<= 1;
				tx_state				<= TX_STATE_WAVEFORM_3;
				tx_delay				<= 1;

				//If we just wrapped around to 0, we sent the last sample. Stop.
				if(ram_rd_addr == 0)
					tx_state			<= TX_STATE_IDLE;

			end	//end TX_STATE_WAVEFORM_2

			TX_STATE_WAVEFORM_3: begin
				tx_delay				<= tx_delay + 1;			//TODO: fix this
				if(tx_delay == 0)
					tx_state			<= TX_STATE_WAVEFORM_0;
			end	//end TX_STATE_WAVEFORM_3

		endcase

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Debug ILA

	ila_0 ila(
		.clk(tcp_clk),
		.probe0(trigger_arm),
		.probe1(waveform_ready_sync),
		.probe2(tx_state),
		.probe3(waveform_pending),
		.probe4(tcp_tx_bus.start),
		.probe5(ram_rd_en),
		.probe6(ram_rd_addr),
		.probe7(tx_phase),
		.probe8(ram_rd_data),
		.probe9(tcp_tx_bus.data_valid),
		.probe10(tcp_tx_bus.data),
		.probe11(tcp_tx_bus.commit),

		.probe12(trigger_phase_ff),
		.probe13(trigger_addr_ff)
	);

endmodule
