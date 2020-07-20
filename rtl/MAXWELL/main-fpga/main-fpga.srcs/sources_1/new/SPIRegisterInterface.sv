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

	//Register interface
	output logic				reg_wr_en			= 0,
	output logic[15:0]			reg_wr_addr			= 0,
	output logic[31:0]			reg_wr_data			= 0
);
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPI link layer

	wire		spi_cs_falling;
	logic[7:0]	spi_tx_data			= 0;
	logic		spi_tx_data_valid	= 0;
	wire[7:0]	spi_rx_data;
	wire		spi_rx_data_valid;

	wire		cs_n_sync;

	SPIDeviceInterface iface (
		.clk(clk_312mhz),

		.spi_mosi(mcu_spi_mosi),
		.spi_miso(mcu_spi_miso),
		.spi_sck(mcu_spi_sck),
		.spi_cs_n(mcu_spi_cs_n),

		.cs_falling(spi_cs_falling),
		.cs_n_sync(cs_n_sync),
		.tx_data(spi_tx_data),
		.tx_data_valid(spi_tx_data_valid),
		.rx_data(spi_rx_data),
		.rx_data_valid(spi_rx_data_valid)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Register interface layer

	logic[2:0]	spi_state			= 0;

	always_ff @(posedge clk_312mhz) begin

		reg_wr_en	<= 0;

		//Reset at start of transaction in case we desynced somehow due to garbage
		if(spi_cs_falling || cs_n_sync)
			spi_state				<= 0;

		else if(spi_rx_data_valid) begin

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

		//TODO: readback

	end

endmodule
