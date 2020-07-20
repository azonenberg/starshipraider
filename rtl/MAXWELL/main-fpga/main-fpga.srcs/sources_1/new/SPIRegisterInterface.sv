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

`include "InputState.svh"
`include "PatternMatcher.svh"

/**
	@file
	@author Andrew D. Zonenberg
	@brief SPIRegisterInterface.sv

	The SPI interface used for downloading configuration data from the STM32

	All registers have a 16-bit address and 32-bit value. SPI wire format is big endian addr then value.
 */
module SPIRegisterInterface(

	//Main system core clock
	input wire					clk_312mhz,

	//SPI interface to MCU
	input wire					mcu_spi_cs_n,
	input wire					mcu_spi_sck,
	input wire					mcu_spi_mosi,
	output wire					mcu_spi_miso,

	//Pattern matching engine configuration
	output spmeconfig_t[7:0]	spme_configs = 0,
	output ppmeconfig_t[1:0]	ppme_configs = 0
);

	typedef enum logic[15:0]
	{
		//SYSTEM 	0x0000 - 0x0fff
		//	TODO

		//TRIGGER 	0x1000 - 0x1fff
		//	SPMEx	0x1000 - 0x10ff
			SPME_ADDR		= 16'h1000,		//Address of the SPME being configured
											//0-3 = 8 bit
											//4-5 = 16 bit
											//6-7 = 32 bit

			SPME_CLK_SEL	= 16'h1001,		//Channel selector for SPME clock
			SPME_RST_SEL	= 16'h1002,		//Channel selector for SPME reset
			SPME_DATA_SEL	= 16'h1003,		//Channel selector for SPME reset
			SPME_CLK_CONFIG	= 16'h1004,		//Clock/reset polarity
											//[3] = clock match rising edge
											//[2] = clock match falling edge
											//[1] = reset match rising edge
											//[0] = reset match falling edge

			SPME_TARGET_0	= 16'h1010,		//Comparator 0 value
			SPME_MASK_0		= 16'h1011,		//Comparator 0 mask
			SPME_TARGET_1	= 16'h1012,		//Comparator 1 value
			SPME_MASK_1		= 16'h1013,		//Comparator 1 mask
			SPME_TARGET_2	= 16'h1014,		//Comparator 2 value
			SPME_MASK_2		= 16'h1015,		//Comparator 2 mask
			SPME_TARGET_3	= 16'h1016,		//Comparator 3 value
			SPME_MASK_3		= 16'h1017,		//Comparator 3 mask

		//	PPMEx	0x1100 - 0x11ff
			PPME_ADDR		= 16'h1100,		//Address of the PPME being configured
			PPME_CLK_SEL	= 16'h1101,		//Channel selector for PPME clock
			PPME_CLK_CONFIG	= 16'h1102,		//Clock/reset polarity
											//[1] = clock match rising edge
											//[0] = clock match falling edge
			PPME_DATA_SEL_0	= 16'h1110,		//Channel selector for PPME data bit 0
			PPME_DATA_SEL_1	= 16'h1111,		//Channel selector for PPME data bit 1
			PPME_DATA_SEL_2	= 16'h1112,		//Channel selector for PPME data bit 2
			PPME_DATA_SEL_3	= 16'h1113,		//Channel selector for PPME data bit 3
			PPME_DATA_SEL_4	= 16'h1114,		//Channel selector for PPME data bit 4
			PPME_DATA_SEL_5	= 16'h1115,		//Channel selector for PPME data bit 5
			PPME_DATA_SEL_6	= 16'h1116,		//Channel selector for PPME data bit 6
			PPME_DATA_SEL_7	= 16'h1117,		//Channel selector for PPME data bit 7
			PPME_TARGET_0	= 16'h1120,		//Comparator 0 value
			PPME_MASK_0		= 16'h1121,		//Comparator 0 mask
			PPME_TARGET_1	= 16'h1122,		//Comparator 1 value
			PPME_MASK_1		= 16'h1123,		//Comparator 1 mask
			PPME_TARGET_2	= 16'h1124,		//Comparator 2 value
			PPME_MASK_2		= 16'h1125,		//Comparator 2 mask
			PPME_TARGET_3	= 16'h1126,		//Comparator 3 value
			PPME_MASK_3		= 16'h1127		//Comparator 3 mask

		//	TRIGGER_CONFIG	1200		Arm/disarm/force trigger
		//								[1] = write to trigger immediately and unconditionally
		//								[0] = trigger armed

		//INPUT PODS	(0x1300 - 0x13ff)
		//Do we need any config for these? Should be pretty much all handled by the MCU
	} regaddr_t;

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPI link layer

	wire		spi_cs_falling;
	logic[7:0]	spi_tx_data			= 0;
	logic		spi_tx_data_valid	= 0;
	wire[7:0]	spi_rx_data;
	wire		spi_rx_data_valid;

	SPIDeviceInterface iface (
		.clk(clk_312mhz),

		.spi_mosi(mcu_spi_mosi),
		.spi_miso(mcu_spi_miso),
		.spi_sck(mcu_spi_sck),
		.spi_cs_n(mcu_spi_cs_n),

		.cs_falling(spi_cs_falling),
		.tx_data(spi_tx_data),
		.tx_data_valid(spi_tx_data_valid),
		.rx_data(spi_rx_data),
		.rx_data_valid(spi_rx_data_valid)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Register interface layer

	logic		reg_wr_en			= 0;
	logic[15:0]	reg_wr_addr			= 0;
	logic[31:0]	reg_wr_data			= 0;

	logic[2:0]	spi_state			= 0;

	always_ff @(posedge clk_312mhz) begin

		reg_wr_en	<= 0;

		if(spi_rx_data_valid) begin

			//Ignore anything after the first 6 bytes
			if(spi_state >= 6) begin
			end

			//Save current data
			case(spi_state)
				0:	reg_wr_addr[15:8]	<= spi_rx_data;
				1:	reg_wr_addr[7:0]	<= spi_rx_data;
				2:	reg_wr_data[31:24]	<= spi_rx_data;
				3:	reg_wr_data[23:16]	<= spi_rx_data;
				4:	reg_wr_data[15:8]	<= spi_rx_data;
				5: begin
					reg_wr_data[7:0]	<= spi_rx_data;
					reg_wr_en			<= 1;
				end
			endcase

			spi_state				<= spi_state + 1;

		end

		//Reset at start of transaction in case we desynced somehow due to garbage
		if(spi_cs_falling)
			spi_state				<= 0;

		//TODO: readback

	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPME register write logic

	logic[2:0]	spme_addr;
	logic		ppme_addr;

	always_ff @(posedge clk_312mhz) begin
		if(reg_wr_en) begin

			case(reg_wr_addr)

				//SPMEs
				SPME_ADDR:			spme_addr									<= reg_wr_data;
				SPME_CLK_SEL:		spme_configs[spme_addr].muxsel_clk			<= reg_wr_data;
				SPME_RST_SEL:		spme_configs[spme_addr].muxsel_rst			<= reg_wr_data;
				SPME_DATA_SEL:		spme_configs[spme_addr].muxsel_data			<= reg_wr_data;
				SPME_CLK_CONFIG: begin
					spme_configs[spme_addr].clock_match_rising					<= reg_wr_data[3];
					spme_configs[spme_addr].clock_match_falling					<= reg_wr_data[2];
					spme_configs[spme_addr].reset_match_rising					<= reg_wr_data[1];
					spme_configs[spme_addr].reset_match_falling					<= reg_wr_data[0];
				end
				SPME_TARGET_0:		spme_configs[spme_addr].target_values[0]	<= reg_wr_data;
				SPME_TARGET_1:		spme_configs[spme_addr].target_values[1]	<= reg_wr_data;
				SPME_TARGET_2:		spme_configs[spme_addr].target_values[2]	<= reg_wr_data;
				SPME_TARGET_3:		spme_configs[spme_addr].target_values[3]	<= reg_wr_data;
				SPME_MASK_0:		spme_configs[spme_addr].target_masks[0]		<= reg_wr_data;
				SPME_MASK_1:		spme_configs[spme_addr].target_masks[1]		<= reg_wr_data;
				SPME_MASK_2:		spme_configs[spme_addr].target_masks[2]		<= reg_wr_data;
				SPME_MASK_3:		spme_configs[spme_addr].target_masks[3]		<= reg_wr_data;

				//PPMEs
				PPME_ADDR:			ppme_addr									<= reg_wr_data;
				PPME_CLK_SEL:		ppme_configs[ppme_addr].muxsel_clk			<= reg_wr_data;
				PPME_DATA_SEL_0:	ppme_configs[ppme_addr].muxsel_data[0]		<= reg_wr_data;
				PPME_DATA_SEL_1:	ppme_configs[ppme_addr].muxsel_data[1]		<= reg_wr_data;
				PPME_DATA_SEL_2:	ppme_configs[ppme_addr].muxsel_data[2]		<= reg_wr_data;
				PPME_DATA_SEL_3:	ppme_configs[ppme_addr].muxsel_data[3]		<= reg_wr_data;
				PPME_DATA_SEL_4:	ppme_configs[ppme_addr].muxsel_data[4]		<= reg_wr_data;
				PPME_DATA_SEL_5:	ppme_configs[ppme_addr].muxsel_data[5]		<= reg_wr_data;
				PPME_DATA_SEL_6:	ppme_configs[ppme_addr].muxsel_data[6]		<= reg_wr_data;
				PPME_DATA_SEL_7:	ppme_configs[ppme_addr].muxsel_data[7]		<= reg_wr_data;
				PPME_CLK_CONFIG: begin
					ppme_configs[ppme_addr].clock_match_rising					<= reg_wr_data[1];
					ppme_configs[ppme_addr].clock_match_falling					<= reg_wr_data[0];
				end
				PPME_TARGET_0:		ppme_configs[ppme_addr].target_values[0]	<= reg_wr_data;
				PPME_TARGET_1:		ppme_configs[ppme_addr].target_values[1]	<= reg_wr_data;
				PPME_TARGET_2:		ppme_configs[ppme_addr].target_values[2]	<= reg_wr_data;
				PPME_TARGET_3:		ppme_configs[ppme_addr].target_values[3]	<= reg_wr_data;
				PPME_MASK_0:		ppme_configs[ppme_addr].target_masks[0]		<= reg_wr_data;
				PPME_MASK_1:		ppme_configs[ppme_addr].target_masks[1]		<= reg_wr_data;
				PPME_MASK_2:		ppme_configs[ppme_addr].target_masks[2]		<= reg_wr_data;
				PPME_MASK_3:		ppme_configs[ppme_addr].target_masks[3]		<= reg_wr_data;

			endcase

		end
	end

endmodule
