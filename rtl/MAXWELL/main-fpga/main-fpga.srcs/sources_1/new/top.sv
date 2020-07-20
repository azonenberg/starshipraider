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

`include "InputState.svh"
`include "PatternMatcher.svh"

/**
	@file
	@author Andrew D. Zonenberg
	@brief Top level module for MAXWELL
 */
module top(

	//DDR3 interface
	output wire[15:0]	ddr3_addr,
	output wire[2:0]	ddr3_ba,
	output wire			ddr3_cas_n,
	output wire			ddr3_ck_p,
	output wire			ddr3_ck_n,
	output wire			ddr3_cke,
	output wire			ddr3_ras_n,
	output wire			ddr3_reset_n,
	output wire			ddr3_we_n,
	inout wire[63:0]	ddr3_dq,
	inout wire[7:0]		ddr3_dqs_p,
	inout wire[7:0]		ddr3_dqs_n,
	output wire			ddr3_cs_n,
	output wire[7:0]	ddr3_dm,
	output wire			ddr3_odt,

	//QSFP+ interface
	/*
	input wire			qsfp_refclk_p,
	input wire			qsfp_refclk_n,
	output wire[3:0]	qsfp_tx_p,
	output wire[3:0]	qsfp_tx_n,
	input wire[3:0]		qsfp_rx_p,
	input wire[3:0]		qsfp_rx_n,
	*/

	//RGMII interface
	input wire			rgmii_rx_clk,
	input wire[3:0]		rgmii_rxd,
	input wire			rgmii_rx_dv,
	output wire			rgmii_tx_clk,
	output wire			rgmii_tx_en,
	output wire[3:0]	rgmii_txd,
	output wire			rgmii_rst_n,
	output wire			eth_mdc,
	inout wire			eth_mdio,

	//QSPI flash interface
	inout wire[3:0]		qspi_dq,
	output wire			qspi_cs_n,
	//no SCK, this is output through CCLK via STARTUPE2

	//SPI interface to MCU
	input wire			mcu_spi_cs_n,
	input wire			mcu_spi_sck,
	input wire			mcu_spi_mosi,
	output wire			mcu_spi_miso,

	//SCPI UART to MCU
	output wire			scpi_uart_rx,
	input wire			scpi_uart_tx,

	//RMII interface to MCU
	output wire			rmii_crs_dv,
	output wire[1:0]	rmii_rxd,
	input wire			rmii_tx_en,
	input wire[1:0]		rmii_txd,
	output wire			rmii_refclk,

	//High speed (10 Gsps) inputs
	/*
	input wire			hsin_refclk_p,
	input wire			hsin_refclk_n,
	input wire[3:0]		hsprobe_in_p,
	input wire[3:0]		hsprobe_in_n,
	*/
	output wire[3:0]	mux_eq,
	output wire[3:0]	mux_sel,

	//Low speed (1.25 Gsps) inputs
	input wire[91:0]	lsprobe_in_p,
	input wire[91:0]	lsprobe_in_n,

	//Clocks
	input wire			sys_clk_p,	//RAM clock
	input wire			sys_clk_n,

	input wire			k7_clk_p,
	input wire			k7_clk_n,

	//External trigger sync
	output wire			trig_out_p,
	output wire			trig_out_n,

	input wire			ext_trig_p,
	input wire			ext_trig_n,
	/*
	output wire			hstrig_out_p,
	output wire			hstrig_out_n,
	*/

	//High speed input sync
	input wire			sync_clk_p,
	input wire			sync_clk_n,

	//PLL phase synchronization
	output wire			pll_sync,

	//GPS PPS input
	input wire			pps_in_p,
	input wire			pps_in_n,

	input wire			mcu_1588_pps,

	//MAC address EEPROM
	inout wire			mac_i2c_sda,
	output wire			mac_i2c_scl
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Clock synthesis

	wire	clk_50mhz;
	wire	clk_125mhz;
	wire	clk_156mhz;
	wire	clk_200mhz;
	wire	clk_250mhz;
	wire	clk_312mhz;
	wire	clk_400mhz;
	wire	clk_625mhz;

	ClockSynthesis clocks(
		.k7_clk_p(k7_clk_p),
		.k7_clk_n(k7_clk_n),

		.clk_50mhz(clk_50mhz),
		.clk_125mhz(clk_125mhz),
		.clk_156mhz(clk_156mhz),
		.clk_200mhz(clk_200mhz),
		.clk_250mhz(clk_250mhz),
		.clk_312mhz(clk_312mhz),
		.clk_400mhz(clk_400mhz),
		.clk_625mhz(clk_625mhz)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// SPI logic (configures everything else on request from the MCU)

	spmeconfig_t[7:0]	spme_configs;
	ppmeconfig_t[1:0]	ppme_configs;

	wire 				reg_wr_en;
	wire[15:0]			reg_wr_addr;
	wire[31:0]			reg_wr_data;

	SPIRegisterInterface spi_iface(
		.clk_312mhz(clk_312mhz),

		.mcu_spi_cs_n(mcu_spi_cs_n),
		.mcu_spi_sck(mcu_spi_sck),
		.mcu_spi_mosi(mcu_spi_mosi),
		.mcu_spi_miso(mcu_spi_miso),

		.reg_wr_en(reg_wr_en),
		.reg_wr_addr(reg_wr_addr),
		.reg_wr_data(reg_wr_data)
	);

	ControlRegisters regs (
		.clk_312mhz(clk_312mhz),

		.reg_wr_en(reg_wr_en),
		.reg_wr_addr(reg_wr_addr),
		.reg_wr_data(reg_wr_data),

		.spme_configs(spme_configs),
		.ppme_configs(ppme_configs)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Ethernet stuff

	EthernetSubsystem network(
		.clk_125mhz(clk_125mhz),
		.clk_156mhz(clk_156mhz),
		.clk_250mhz(clk_250mhz),

		.rgmii_rx_clk(rgmii_rx_clk),
		.rgmii_rxd(rgmii_rxd),
		.rgmii_rx_dv(rgmii_rx_dv),
		.rgmii_tx_clk(rgmii_tx_clk),
		.rgmii_txd(rgmii_txd),
		.rgmii_tx_en(rgmii_tx_en),
		.rgmii_rst_n(rgmii_rst_n),

		.scpi_uart_rx(scpi_uart_rx),
		.scpi_uart_tx(scpi_uart_tx),

		.mac_i2c_sda(mac_i2c_sda),
		.mac_i2c_scl(mac_i2c_scl)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Sensors (needed for DDR cal)

	wire[11:0]		die_temp_native;

	OnDieSensors_7series sensors(
		.clk(clk_156mhz),
		.vin_p(16'hz),
		.vin_n(16'hz),

		.die_temp(),
		.volt_core(),
		.volt_ram(),
		.volt_aux(),
		.sensors_update(),

		.ext_in(),
		.ext_update(),

		.die_temp_native(die_temp_native)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// DDR3 SODIMM interface

	wire			mem_calib_complete;

	wire[29:0]		app_addr		= 0;
	wire[2:0]		app_cmd			= 0;
	wire			app_en			= 0;
	wire[511:0]		app_wdf_data	= 0;
	wire			app_wdf_end		= 0;
	wire			app_wdf_wren	= 0;
	wire[63:0]		app_wdf_mask	= 0;
	wire[511:0]		app_rd_data;
	wire			app_rd_data_end;
	wire			app_rd_data_valid;
	wire			app_rdy;
	wire			app_wdf_rdy;
	wire			app_sr_req		= 0;
	wire			app_ref_req		= 0;
	wire			app_zq_req		= 0;
	wire			app_sr_active;
	wire			app_ref_ack;
	wire			app_zq_ack;
	wire			ui_clk;
	wire			ui_clk_sync_rst;

	wire			ram_reset		= 0;

	ddr_mem ddr_controller (
		.ddr3_addr                      (ddr3_addr),
		.ddr3_ba                        (ddr3_ba),
		.ddr3_cas_n                     (ddr3_cas_n),
		.ddr3_ck_n                      (ddr3_ck_n),
		.ddr3_ck_p                      (ddr3_ck_p),
		.ddr3_cke                       (ddr3_cke),
		.ddr3_ras_n                     (ddr3_ras_n),
		.ddr3_reset_n                   (ddr3_reset_n),
		.ddr3_we_n                      (ddr3_we_n),
		.ddr3_dq                        (ddr3_dq),
		.ddr3_dqs_n                     (ddr3_dqs_n),
		.ddr3_dqs_p                     (ddr3_dqs_p),
		.init_calib_complete            (mem_calib_complete),
		.ddr3_cs_n                      (ddr3_cs_n),
		.ddr3_dm                        (ddr3_dm),
		.ddr3_odt                       (ddr3_odt),
		.app_addr                       (app_addr),
		.app_cmd                        (app_cmd),
		.app_en                         (app_en),
		.app_wdf_data                   (app_wdf_data),
		.app_wdf_end                    (app_wdf_end),
		.app_wdf_wren                   (app_wdf_wren),
		.app_rd_data                    (app_rd_data),
		.app_rd_data_end                (app_rd_data_end),
		.app_rd_data_valid              (app_rd_data_valid),
		.app_rdy                        (app_rdy),
		.app_wdf_rdy                    (app_wdf_rdy),
		.app_sr_req                     (app_sr_req),
		.app_ref_req                    (app_ref_req),
		.app_zq_req                     (app_zq_req),
		.app_sr_active                  (app_sr_active),
		.app_ref_ack                    (app_ref_ack),
		.app_zq_ack                     (app_zq_ack),
		.ui_clk                         (ui_clk),
		.ui_clk_sync_rst                (ui_clk_sync_rst),
		.app_wdf_mask                   (app_wdf_mask),
		.sys_clk_p                      (sys_clk_p),
		.sys_clk_n                      (sys_clk_n),

		.clk_ref_i                      (clk_200mhz),
		.device_temp_i                  (die_temp_native),
		.sys_rst                        (ram_reset)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// QSFP+ SERDES interface

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Low-speed probe inputs

	sample_t current_sample;

	LowSpeedInputs low_in(
		.clk_312mhz(clk_312mhz),
		.clk_400mhz(clk_400mhz),
		.clk_625mhz(clk_625mhz),

		.probe_in_p(lsprobe_in_p),
		.probe_in_n(lsprobe_in_n),

		.samples(current_sample.lo)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// High-speed probe inputs

	//For now, tie off the high speed inputs
	assign current_sample.hi = 0;

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Sample compression TODO

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Trigger system

	TriggerSystem trig(

		//Clocking
		.clk_312mhz(clk_312mhz),

		.sync_clk_p(sync_clk_p),
		.sync_clk_n(sync_clk_n),

		.mcu_1588_pps(mcu_1588_pps),

		.pps_in_p(pps_in_p),
		.pps_in_n(pps_in_n),

		//Trigger sync
		.ext_trig_p(ext_trig_p),
		.ext_trig_n(ext_trig_n),

		.trig_out_p(trig_out_p),
		.trig_out_n(trig_out_n),

		//Input data
		.current_sample(current_sample),

		//Configuration registers
		.spme_configs(spme_configs),
		.ppme_configs(ppme_configs)
	);

endmodule

