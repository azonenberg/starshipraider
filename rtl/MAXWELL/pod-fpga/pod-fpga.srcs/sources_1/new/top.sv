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
	@brief Top level module for MAXWELL I/O pod control FPGA

	The SPI interface
 */
module top(

	//Main system clock (156.25 MHz)
	input wire			sysclk_p,
	input wire			sysclk_n,

	//Boot flash (SCK uses STARTUPE2 primitive and isn't a top level port)
	inout wire[3:0]		flash_dq,
	output wire			flash_cs_n,

	//SPI to STM32
	input wire			mgmt_sck,
	input wire			mgmt_cs_n,
	input wire			mgmt_mosi,
	output wire			mgmt_miso,

	//Pod UARTs
	input wire[11:0]	pod_uart_rx,
	output wire[11:0]	pod_uart_tx,

	//Pod power control
	input wire[11:0]	pod_present_n,
	input wire[11:0]	pod_power_alert,
	output wire[11:0]	pod_power_en
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Startup block (needed to drive CCLK to boot flash)

	wire	cclk_out;

	STARTUPE2 #(
		.SIM_CCLK_FREQ(10),
		.PROG_USR("FALSE")
	) startup(
		.CLK(),
		.GSR(1'b0),
		.GTS(1'b0),
		.KEYCLEARB(1'b0),
		.PACK(),
		.PREQ(),
		.USRCCLKO(cclk_out),
		.USRCCLKTS(1'b0),
		.USRDONEO(1'b1),
		.USRDONETS(1'b0),
		.CFGCLK(),
		.CFGMCLK(),
		.EOS()
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// System clock buffer

	wire	sysclk_raw;
	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(0),					//ODT = 1 requires VCCO = 2.5V
									//but we run both banks at 3.3V
		.OPTIMIZE("SPEED")
	) sysclk_ibuf (
		.pad_in_p(sysclk_p),
		.pad_in_n(sysclk_n),
		.fabric_out(sysclk_raw)
	);

	wire sysclk;
	ClockBuffer #(
		.TYPE("GLOBAL"),
		.CE("NO")
	) sysclk_buf (
		.clkin(sysclk_raw),
		.ce(1'b1),
		.clkout(sysclk)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPI interface to STM32

	wire		spi_cs_falling;
	logic[7:0]	spi_tx_data			= 0;
	logic		spi_tx_data_valid	= 0;

	wire		spi_rx_data_valid;
	wire[7:0]	spi_rx_data;

	SPIDeviceInterface mcu_spi (
		.clk(sysclk),
		.spi_cs_n(mgmt_cs_n),
		.spi_sck(mgmt_sck),
		.spi_mosi(mgmt_mosi),
		.spi_miso(mgmt_miso),

		.cs_falling(spi_cs_falling),
		.tx_data(spi_tx_data),
		.tx_data_valid(spi_tx_data_valid),
		.rx_data(spi_rx_data),
		.rx_data_valid(spi_rx_data_valid)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// QSPI interface to boot flash

	QuadSPIFlashController #(
		.SFDP_ADDRESS_32B(0)
	) flash_ctrl(
		.clk(sysclk),

		.spi_sck(cclk_out),
		.spi_dq(flash_dq),
		.spi_cs_n(flash_cs_n),

		.clkdiv(8),	//19.53125 MHz

		.cmd_en(1'b0),
		.cmd_id(),
		.cmd_len(),
		.cmd_addr(),
		.read_data(),
		.read_valid(),
		.write_data(),
		.write_valid(),
		.write_ready(),
		.busy(),

		.capacity_mbits(),
		.sfdp_bad()
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Input channel controls

	logic[11:0]	uart_tx_fifo_push_en	= 0;
	logic[7:0]	uart_tx_fifo_push_data	= 0;

	logic[7:0]	uart_rx_fifo_rd_en		= 0;
	wire[7:0]	uart_rx_fifo_rd_data[7:0];
	wire[5:0]	uart_rx_fifo_rd_size[7:0];

	for(genvar g=0; g<12; g++) begin

		//Hotswap power control
		PowerControl power(
			.sysclk(sysclk),

			.pod_present_n(pod_present_n[g]),
			.pod_power_en(pod_power_en[g])
		);

		//UARTs and FIFOs
		UartBlock uart(
			.sysclk(sysclk),

			.pod_uart_tx(pod_uart_tx[g]),
			.pod_uart_rx(pod_uart_rx[g]),

			.tx_fifo_push_en(uart_tx_fifo_push_en[g]),
			.tx_fifo_push_data(uart_tx_fifo_push_data[g]),

			.rx_fifo_rd_en(uart_rx_fifo_rd_en[g]),
			.rx_fifo_rd_data(uart_rx_fifo_rd_data[g]),
			.rx_fifo_rd_size(uart_rx_fifo_rd_size[g])
		);

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPI interface logic

	/*
		First byte is opcode
		Second byte is channel number
		Anything after that is command specific
	 */

	typedef enum logic[7:0]
	{
		OP_NOP			= 8'h0,		//Nothing
		OP_UART_WRITE	= 8'h1,		//Write to UART FIFO (arbitrarily many bytes)
		OP_UART_RSIZE	= 8'h2,		//Read number of bytes ready in UART FIFO
		OP_UART_READ	= 8'h3		//Read data from UART FIFO  (one byte at a time)

		//TODO: allow querying write fifo capacity
		//TODO: allow querying/forcing channel power state
	} opcode_t;

	enum logic[3:0]
	{
		SPI_STATE_IDLE		= 0,
		SPI_STATE_CHANNEL	= 1,
		SPI_STATE_DISPATCH	= 2,
		SPI_STATE_DATA		= 3

	} spi_state = SPI_STATE_IDLE;

	logic[7:0]	opcode		= 0;
	logic[7:0]	channel		= 0;

	always_ff @(posedge sysclk) begin

		uart_tx_fifo_push_en	<= 0;
		uart_rx_fifo_rd_en		<= 0;
		spi_tx_data_valid		<= 0;

		//Reset when CS# falls
		if(spi_cs_falling)
			spi_state	<= SPI_STATE_IDLE;

		case(spi_state)

			////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Read inbound headers

			SPI_STATE_IDLE: begin

				spi_tx_data	<= 0;

				if(spi_rx_data_valid) begin
					opcode		<= spi_rx_data;
					spi_state	<= SPI_STATE_CHANNEL;

				end

			end	//end SPI_STATE_IDLE

			SPI_STATE_CHANNEL: begin

				spi_tx_data	<= 0;

				if(spi_rx_data_valid) begin

					//Clip channel number to valid range
					if(spi_rx_data <= 11)
						channel	<= spi_rx_data;
					else
						channel	<= 11;

					//Dispatch the read request if needed
					if(opcode == OP_UART_READ)
						uart_rx_fifo_rd_en[spi_rx_data]	<= 1;

					spi_state	<= SPI_STATE_DISPATCH;
				end

			end	//end SPI_STATE_CHANNEL

			////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// Process data coming in from the host

			SPI_STATE_DISPATCH: begin

				//Reply to the incoming request
				case(opcode)

					OP_UART_RSIZE: begin
						spi_tx_data_valid	<= 1;
						spi_tx_data			<= uart_rx_fifo_rd_size[channel];
						spi_state			<= SPI_STATE_DATA;
					end	//end OP_UART_RSIZE

					OP_UART_READ: begin

						//Delay by a cycle so the read has time to execute
						if(!uart_rx_fifo_rd_en) begin
							spi_tx_data_valid	<= 1;
							spi_tx_data			<= uart_rx_fifo_rd_data[channel];
							spi_state			<= SPI_STATE_DATA;
						end

					end	//end OP_UART_READ

					default:
						spi_state		<= SPI_STATE_DATA;

				endcase

			end	//end SPI_STATE_DISPATCH

			SPI_STATE_DATA: begin

				if(spi_rx_data_valid) begin

					case(opcode)

						//Write data to the UART (can write arbitrarily many bytes until the fifo fills up)
						OP_UART_WRITE: begin

							uart_tx_fifo_push_en[channel]	<= 1;
							uart_tx_fifo_push_data			<= spi_rx_data;
						end

						default: begin
						end

					endcase

					//Get ready to send the next byte, if any
					spi_state	<= SPI_STATE_DISPATCH;

				end

			end	//end SPI_STATE_DATA

		endcase

	end

endmodule
