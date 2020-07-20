set_max_delay -from [get_cells [list network/mac/mac/sync_link_speed/sync_ack/sync/dout0_reg \
          network/mac/mac/sync_link_speed/sync_en/sync/dout0_reg \
          network/mac/rgmii_bridge/sync_link_speed/sync_ack/sync/dout0_reg \
          network/mac/rgmii_bridge/sync_link_speed/sync_en/sync/dout0_reg \
          network/stack/mac_sync/sync_ack/sync/dout0_reg \
          network/stack/mac_sync/sync_en/sync/dout0_reg \
          network/stack/rx_cdc/rx_cdc_fifo/sync_head/sync_ack/sync/dout0_reg \
          network/stack/rx_cdc/rx_cdc_fifo/sync_head/sync_en/sync/dout0_reg \
          network/stack/rx_cdc/rx_cdc_fifo/sync_tail/sync_ack/sync/dout0_reg \
          network/stack/rx_cdc/rx_cdc_fifo/sync_tail/sync_en/sync/dout0_reg \
          network/stack/sync_link_up/dout0_reg \
          network/stack/tx_arbiter/arp_header_fifo/sync_head/sync_ack/sync/dout0_reg \
          network/stack/tx_arbiter/arp_header_fifo/sync_head/sync_en/sync/dout0_reg \
          network/stack/tx_arbiter/arp_header_fifo/sync_tail/sync_ack/sync/dout0_reg \
          network/stack/tx_arbiter/arp_header_fifo/sync_tail/sync_en/sync/dout0_reg \
          network/stack/tx_arbiter/arp_payload_fifo/sync_head/sync_ack/sync/dout0_reg \
          network/stack/tx_arbiter/arp_payload_fifo/sync_head/sync_en/sync/dout0_reg \
          network/stack/tx_arbiter/arp_payload_fifo/sync_tail/sync_ack/sync/dout0_reg \
          network/stack/tx_arbiter/arp_payload_fifo/sync_tail/sync_en/sync/dout0_reg \
          network/stack/tx_arbiter/ipv4_header_fifo/sync_head/sync_ack/sync/dout0_reg \
          network/stack/tx_arbiter/ipv4_header_fifo/sync_head/sync_en/sync/dout0_reg \
          network/stack/tx_arbiter/ipv4_header_fifo/sync_tail/sync_ack/sync/dout0_reg \
          network/stack/tx_arbiter/ipv4_header_fifo/sync_tail/sync_en/sync/dout0_reg \
          network/stack/tx_arbiter/ipv4_payload_fifo/sync_head/sync_ack/sync/dout0_reg \
          network/stack/tx_arbiter/ipv4_payload_fifo/sync_head/sync_en/sync/dout0_reg \
          network/stack/tx_arbiter/ipv4_payload_fifo/sync_tail/sync_ack/sync/dout0_reg \
          network/stack/tx_arbiter/ipv4_payload_fifo/sync_tail/sync_en/sync/dout0_reg \
          network/stack/tx_buf/header_fifo/sync_head/sync_ack/sync/dout0_reg \
          network/stack/tx_buf/header_fifo/sync_head/sync_en/sync/dout0_reg \
          network/stack/tx_buf/header_fifo/sync_tail/sync_ack/sync/dout0_reg \
          network/stack/tx_buf/header_fifo/sync_tail/sync_en/sync/dout0_reg \
          network/stack/tx_buf/payload_fifo/sync_head/sync_ack/sync/dout0_reg \
          network/stack/tx_buf/payload_fifo/sync_head/sync_en/sync/dout0_reg \
          network/stack/tx_buf/payload_fifo/sync_tail/sync_ack/sync/dout0_reg \
          network/stack/tx_buf/payload_fifo/sync_tail/sync_en/sync/dout0_reg \
          network/uart_bridge/rx_fifo/sync_head/sync_ack/sync/dout0_reg \
          network/uart_bridge/rx_fifo/sync_head/sync_en/sync/dout0_reg \
          network/uart_bridge/rx_fifo/sync_tail/sync_ack/sync/dout0_reg \
          network/uart_bridge/rx_fifo/sync_tail/sync_en/sync/dout0_reg \
          network/uart_bridge/sync_flush/sync/dout0_reg \
          network/uart_bridge/tx_fifo/fifo/sync_rd_ptr/sync_ack/sync/dout0_reg \
          network/uart_bridge/tx_fifo/fifo/sync_rd_ptr/sync_en/sync/dout0_reg \
          network/uart_bridge/tx_fifo/fifo/sync_wr_ptr/sync_ack/sync/dout0_reg \
          network/uart_bridge/tx_fifo/fifo/sync_wr_ptr/sync_en/sync/dout0_reg]] -to [get_cells [list network/mac/mac/sync_link_speed/sync_ack/sync/dout1_reg \
          network/mac/mac/sync_link_speed/sync_en/sync/dout1_reg \
          network/mac/rgmii_bridge/sync_link_speed/sync_ack/sync/dout1_reg \
          network/mac/rgmii_bridge/sync_link_speed/sync_en/sync/dout1_reg \
          network/stack/mac_sync/sync_ack/sync/dout1_reg \
          network/stack/mac_sync/sync_en/sync/dout1_reg \
          network/stack/rx_cdc/rx_cdc_fifo/sync_head/sync_ack/sync/dout1_reg \
          network/stack/rx_cdc/rx_cdc_fifo/sync_head/sync_en/sync/dout1_reg \
          network/stack/rx_cdc/rx_cdc_fifo/sync_tail/sync_ack/sync/dout1_reg \
          network/stack/rx_cdc/rx_cdc_fifo/sync_tail/sync_en/sync/dout1_reg \
          network/stack/sync_link_up/dout1_reg \
          network/stack/tx_arbiter/arp_header_fifo/sync_head/sync_ack/sync/dout1_reg \
          network/stack/tx_arbiter/arp_header_fifo/sync_head/sync_en/sync/dout1_reg \
          network/stack/tx_arbiter/arp_header_fifo/sync_tail/sync_ack/sync/dout1_reg \
          network/stack/tx_arbiter/arp_header_fifo/sync_tail/sync_en/sync/dout1_reg \
          network/stack/tx_arbiter/arp_payload_fifo/sync_head/sync_ack/sync/dout1_reg \
          network/stack/tx_arbiter/arp_payload_fifo/sync_head/sync_en/sync/dout1_reg \
          network/stack/tx_arbiter/arp_payload_fifo/sync_tail/sync_ack/sync/dout1_reg \
          network/stack/tx_arbiter/arp_payload_fifo/sync_tail/sync_en/sync/dout1_reg \
          network/stack/tx_arbiter/ipv4_header_fifo/sync_head/sync_ack/sync/dout1_reg \
          network/stack/tx_arbiter/ipv4_header_fifo/sync_head/sync_en/sync/dout1_reg \
          network/stack/tx_arbiter/ipv4_header_fifo/sync_tail/sync_ack/sync/dout1_reg \
          network/stack/tx_arbiter/ipv4_header_fifo/sync_tail/sync_en/sync/dout1_reg \
          network/stack/tx_arbiter/ipv4_payload_fifo/sync_head/sync_ack/sync/dout1_reg \
          network/stack/tx_arbiter/ipv4_payload_fifo/sync_head/sync_en/sync/dout1_reg \
          network/stack/tx_arbiter/ipv4_payload_fifo/sync_tail/sync_ack/sync/dout1_reg \
          network/stack/tx_arbiter/ipv4_payload_fifo/sync_tail/sync_en/sync/dout1_reg \
          network/stack/tx_buf/header_fifo/sync_head/sync_ack/sync/dout1_reg \
          network/stack/tx_buf/header_fifo/sync_head/sync_en/sync/dout1_reg \
          network/stack/tx_buf/header_fifo/sync_tail/sync_ack/sync/dout1_reg \
          network/stack/tx_buf/header_fifo/sync_tail/sync_en/sync/dout1_reg \
          network/stack/tx_buf/payload_fifo/sync_head/sync_ack/sync/dout1_reg \
          network/stack/tx_buf/payload_fifo/sync_head/sync_en/sync/dout1_reg \
          network/stack/tx_buf/payload_fifo/sync_tail/sync_ack/sync/dout1_reg \
          network/stack/tx_buf/payload_fifo/sync_tail/sync_en/sync/dout1_reg \
          network/uart_bridge/rx_fifo/sync_head/sync_ack/sync/dout1_reg \
          network/uart_bridge/rx_fifo/sync_head/sync_en/sync/dout1_reg \
          network/uart_bridge/rx_fifo/sync_tail/sync_ack/sync/dout1_reg \
          network/uart_bridge/rx_fifo/sync_tail/sync_en/sync/dout1_reg \
          network/uart_bridge/sync_flush/sync/dout1_reg \
          network/uart_bridge/tx_fifo/fifo/sync_rd_ptr/sync_ack/sync/dout1_reg \
          network/uart_bridge/tx_fifo/fifo/sync_rd_ptr/sync_en/sync/dout1_reg \
          network/uart_bridge/tx_fifo/fifo/sync_wr_ptr/sync_ack/sync/dout1_reg \
          network/uart_bridge/tx_fifo/fifo/sync_wr_ptr/sync_en/sync/dout1_reg \
          network/uart_bridge/uart/sync_rx/dout1_reg \
          spi_iface/iface/sync_cs_n/dout1_reg \
          spi_iface/iface/sync_mosi/dout1_reg \
          spi_iface/iface/sync_sck/dout1_reg]] 3.200
set_property PACKAGE_PIN AB21 [get_ports {lsprobe_in_p[0]}]
set_property PACKAGE_PIN AE22 [get_ports {lsprobe_in_p[1]}]
set_property PACKAGE_PIN AF24 [get_ports {lsprobe_in_p[2]}]
set_property PACKAGE_PIN AD25 [get_ports {lsprobe_in_p[3]}]
set_property PACKAGE_PIN W20 [get_ports {lsprobe_in_p[4]}]
set_property PACKAGE_PIN U17 [get_ports {lsprobe_in_p[5]}]
set_property PACKAGE_PIN R16 [get_ports {lsprobe_in_p[6]}]
set_property PACKAGE_PIN R18 [get_ports {lsprobe_in_p[7]}]
set_property PACKAGE_PIN AD26 [get_ports {lsprobe_in_p[8]}]
set_property PACKAGE_PIN AD23 [get_ports {lsprobe_in_p[9]}]
set_property PACKAGE_PIN AB26 [get_ports {lsprobe_in_p[10]}]
set_property PACKAGE_PIN AA25 [get_ports {lsprobe_in_p[11]}]
set_property PACKAGE_PIN P16 [get_ports {lsprobe_in_p[12]}]
set_property PACKAGE_PIN AE23 [get_ports {lsprobe_in_p[13]}]
set_property PACKAGE_PIN AD21 [get_ports {lsprobe_in_p[14]}]
set_property PACKAGE_PIN AC23 [get_ports {lsprobe_in_p[15]}]
set_property PACKAGE_PIN Y22 [get_ports {lsprobe_in_p[16]}]
set_property PACKAGE_PIN Y25 [get_ports {lsprobe_in_p[17]}]

set_property PACKAGE_PIN W25 [get_ports {lsprobe_in_p[18]}]
set_property PACKAGE_PIN U26 [get_ports {lsprobe_in_p[19]}]
set_property PACKAGE_PIN AB22 [get_ports {lsprobe_in_p[20]}]
set_property PACKAGE_PIN AA23 [get_ports {lsprobe_in_p[21]}]
set_property PACKAGE_PIN Y23 [get_ports {lsprobe_in_p[22]}]
set_property PACKAGE_PIN W23 [get_ports {lsprobe_in_p[23]}]
set_property PACKAGE_PIN U24 [get_ports {lsprobe_in_p[24]}]
set_property PACKAGE_PIN T24 [get_ports {lsprobe_in_p[25]}]
set_property PACKAGE_PIN R26 [get_ports {lsprobe_in_p[26]}]
set_property PACKAGE_PIN P24 [get_ports {lsprobe_in_p[27]}]
set_property PACKAGE_PIN V21 [get_ports {lsprobe_in_p[28]}]
set_property PACKAGE_PIN U22 [get_ports {lsprobe_in_p[29]}]
set_property PACKAGE_PIN T22 [get_ports {lsprobe_in_p[30]}]
set_property PACKAGE_PIN R22 [get_ports {lsprobe_in_p[31]}]
set_property PACKAGE_PIN N26 [get_ports {lsprobe_in_p[32]}]
set_property PACKAGE_PIN M25 [get_ports {lsprobe_in_p[33]}]
set_property PACKAGE_PIN M24 [get_ports {lsprobe_in_p[34]}]
set_property PACKAGE_PIN K25 [get_ports {lsprobe_in_p[35]}]
set_property PACKAGE_PIN R25 [get_ports {lsprobe_in_p[36]}]
set_property PACKAGE_PIN P23 [get_ports {lsprobe_in_p[37]}]
set_property PACKAGE_PIN N21 [get_ports {lsprobe_in_p[38]}]
set_property PACKAGE_PIN M21 [get_ports {lsprobe_in_p[39]}]
set_property PACKAGE_PIN T18 [get_ports {lsprobe_in_p[40]}]
set_property PACKAGE_PIN T20 [get_ports {lsprobe_in_p[41]}]
set_property PACKAGE_PIN R21 [get_ports {lsprobe_in_p[42]}]
set_property PACKAGE_PIN P19 [get_ports {lsprobe_in_p[43]}]
set_property PACKAGE_PIN V23 [get_ports {lsprobe_in_p[44]}]
set_property PACKAGE_PIN U19 [get_ports {lsprobe_in_p[45]}]
set_property PACKAGE_PIN N19 [get_ports {lsprobe_in_p[46]}]
set_property PACKAGE_PIN N18 [get_ports {lsprobe_in_p[47]}]
set_property PACKAGE_PIN H19 [get_ports {lsprobe_in_p[48]}]
set_property PACKAGE_PIN G19 [get_ports {lsprobe_in_p[49]}]
set_property PACKAGE_PIN F19 [get_ports {lsprobe_in_p[50]}]
set_property PACKAGE_PIN L17 [get_ports {lsprobe_in_p[51]}]

set_property PACKAGE_PIN M17 [get_ports {lsprobe_in_p[52]}]
set_property PACKAGE_PIN L19 [get_ports {lsprobe_in_p[53]}]
set_property PACKAGE_PIN K20 [get_ports {lsprobe_in_p[54]}]
set_property PACKAGE_PIN J18 [get_ports {lsprobe_in_p[55]}]
set_property PACKAGE_PIN C19 [get_ports {lsprobe_in_p[56]}]
set_property PACKAGE_PIN A18 [get_ports {lsprobe_in_p[57]}]

set_property PACKAGE_PIN B17 [get_ports {lsprobe_in_p[58]}]
set_property PACKAGE_PIN C16 [get_ports {lsprobe_in_p[59]}]
set_property PACKAGE_PIN E18 [get_ports {lsprobe_in_p[60]}]
set_property PACKAGE_PIN C17 [get_ports {lsprobe_in_p[61]}]
set_property PACKAGE_PIN F17 [get_ports {lsprobe_in_p[62]}]
set_property PACKAGE_PIN D15 [get_ports {lsprobe_in_p[63]}]
set_property PACKAGE_PIN B15 [get_ports {lsprobe_in_p[64]}]
set_property PACKAGE_PIN B14 [get_ports {lsprobe_in_p[65]}]
set_property PACKAGE_PIN C14 [get_ports {lsprobe_in_p[66]}]
set_property PACKAGE_PIN A13 [get_ports {lsprobe_in_p[67]}]
set_property PACKAGE_PIN E15 [get_ports {lsprobe_in_p[68]}]
set_property PACKAGE_PIN D14 [get_ports {lsprobe_in_p[69]}]
set_property PACKAGE_PIN E13 [get_ports {lsprobe_in_p[70]}]
set_property PACKAGE_PIN C12 [get_ports {lsprobe_in_p[71]}]
set_property PACKAGE_PIN B12 [get_ports {lsprobe_in_p[72]}]
set_property PACKAGE_PIN B10 [get_ports {lsprobe_in_p[73]}]
set_property PACKAGE_PIN C9 [get_ports {lsprobe_in_p[74]}]
set_property PACKAGE_PIN A9 [get_ports {lsprobe_in_p[75]}]
set_property PACKAGE_PIN E11 [get_ports {lsprobe_in_p[76]}]
set_property PACKAGE_PIN G10 [get_ports {lsprobe_in_p[77]}]
set_property PACKAGE_PIN D9 [get_ports {lsprobe_in_p[78]}]
set_property PACKAGE_PIN F9 [get_ports {lsprobe_in_p[79]}]
set_property PACKAGE_PIN G17 [get_ports {lsprobe_in_p[80]}]
set_property PACKAGE_PIN K16 [get_ports {lsprobe_in_p[81]}]
set_property PACKAGE_PIN J15 [get_ports {lsprobe_in_p[82]}]
set_property PACKAGE_PIN F14 [get_ports {lsprobe_in_p[83]}]
set_property PACKAGE_PIN H12 [get_ports {lsprobe_in_p[84]}]
set_property PACKAGE_PIN H17 [get_ports {lsprobe_in_p[85]}]
set_property PACKAGE_PIN H16 [get_ports {lsprobe_in_p[86]}]
set_property PACKAGE_PIN G15 [get_ports {lsprobe_in_p[87]}]
set_property PACKAGE_PIN G11 [get_ports {lsprobe_in_p[88]}]
set_property PACKAGE_PIN H14 [get_ports {lsprobe_in_p[89]}]
set_property PACKAGE_PIN J11 [get_ports {lsprobe_in_p[90]}]
set_property PACKAGE_PIN J13 [get_ports {lsprobe_in_p[91]}]
set_property PACKAGE_PIN D19 [get_ports {mux_eq[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {mux_eq[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {mux_eq[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {mux_eq[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {mux_eq[0]}]
set_property PACKAGE_PIN K15 [get_ports {mux_eq[2]}]
set_property PACKAGE_PIN J8 [get_ports {mux_eq[1]}]
set_property PACKAGE_PIN J14 [get_ports {mux_eq[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {mux_sel[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {mux_sel[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {mux_sel[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {mux_sel[0]}]
set_property PACKAGE_PIN D20 [get_ports {mux_sel[3]}]
set_property PACKAGE_PIN M16 [get_ports {mux_sel[2]}]
set_property PACKAGE_PIN F12 [get_ports {mux_sel[1]}]
set_property PACKAGE_PIN G12 [get_ports {mux_sel[0]}]
set_property PACKAGE_PIN E10 [get_ports k7_clk_p]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi_dq[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi_dq[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi_dq[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi_dq[0]}]
set_property PACKAGE_PIN A22 [get_ports {qspi_dq[3]}]
set_property PACKAGE_PIN B22 [get_ports {qspi_dq[2]}]
set_property PACKAGE_PIN A25 [get_ports {qspi_dq[1]}]
set_property PACKAGE_PIN B24 [get_ports {qspi_dq[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_rxd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_rxd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_rxd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_rxd[0]}]
set_property PACKAGE_PIN G24 [get_ports {rgmii_rxd[3]}]
set_property PACKAGE_PIN F25 [get_ports {rgmii_rxd[2]}]
set_property PACKAGE_PIN G25 [get_ports {rgmii_rxd[1]}]
set_property PACKAGE_PIN G26 [get_ports {rgmii_rxd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_txd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_txd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_txd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgmii_txd[0]}]
set_property PACKAGE_PIN H24 [get_ports {rgmii_txd[3]}]
set_property PACKAGE_PIN H23 [get_ports {rgmii_txd[2]}]
set_property PACKAGE_PIN J25 [get_ports {rgmii_txd[1]}]
set_property PACKAGE_PIN J24 [get_ports {rgmii_txd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rmii_rxd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rmii_rxd[0]}]
set_property PACKAGE_PIN C22 [get_ports {rmii_rxd[1]}]
set_property PACKAGE_PIN D25 [get_ports {rmii_rxd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rmii_txd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rmii_txd[0]}]
set_property PACKAGE_PIN D24 [get_ports {rmii_txd[1]}]
set_property PACKAGE_PIN E22 [get_ports {rmii_txd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports eth_mdc]
set_property PACKAGE_PIN E25 [get_ports eth_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports eth_mdio]
set_property PACKAGE_PIN E26 [get_ports eth_mdio]
set_property IOSTANDARD LVCMOS33 [get_ports mac_i2c_scl]
set_property PACKAGE_PIN J21 [get_ports mac_i2c_scl]
set_property IOSTANDARD LVCMOS33 [get_ports mac_i2c_sda]
set_property PACKAGE_PIN B21 [get_ports mac_i2c_sda]

set_property PACKAGE_PIN E23 [get_ports mcu_1588_pps]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_1588_pps]
set_property PACKAGE_PIN H22 [get_ports mcu_spi_cs_n]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_spi_cs_n]
set_property PACKAGE_PIN A23 [get_ports mcu_spi_miso]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_spi_miso]
set_property PACKAGE_PIN B26 [get_ports mcu_spi_mosi]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_spi_mosi]
set_property PACKAGE_PIN F22 [get_ports mcu_spi_sck]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_spi_sck]
set_property PACKAGE_PIN L23 [get_ports pll_sync]
set_property IOSTANDARD LVCMOS33 [get_ports pll_sync]
set_property PACKAGE_PIN C23 [get_ports qspi_cs_n]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_cs_n]
set_property PACKAGE_PIN F23 [get_ports rgmii_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_rst_n]
set_property PACKAGE_PIN G22 [get_ports rgmii_rx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_rx_clk]
set_property PACKAGE_PIN F24 [get_ports rgmii_rx_dv]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_rx_dv]

set_property PACKAGE_PIN L22 [get_ports ext_trig_p]
set_property PACKAGE_PIN B20 [get_ports pps_in_p]
set_property PACKAGE_PIN J26 [get_ports rgmii_tx_clk]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_tx_clk]
set_property PACKAGE_PIN H26 [get_ports rgmii_tx_en]
set_property IOSTANDARD LVCMOS33 [get_ports rgmii_tx_en]
set_property PACKAGE_PIN C24 [get_ports rmii_crs_dv]
set_property IOSTANDARD LVCMOS33 [get_ports rmii_crs_dv]
set_property PACKAGE_PIN D23 [get_ports rmii_refclk]
set_property IOSTANDARD LVCMOS33 [get_ports rmii_refclk]
set_property PACKAGE_PIN E21 [get_ports rmii_tx_en]
set_property IOSTANDARD LVCMOS33 [get_ports rmii_tx_en]
set_property PACKAGE_PIN D26 [get_ports scpi_uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports scpi_uart_rx]
set_property PACKAGE_PIN A24 [get_ports scpi_uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports scpi_uart_tx]
set_property PACKAGE_PIN K23 [get_ports sync_clk_p]

set_property PACKAGE_PIN H9 [get_ports trig_out_p]

create_clock -period 8.000 -name rgmii_rx_clk -waveform {0.000 4.000} [get_ports rgmii_rx_clk]

create_clock -period 6.400 -name k7_clk_p -waveform {0.000 3.200} [get_ports k7_clk_p]
create_generated_clock -name clk_50mhz -source [get_pins clocks/main_pll/mmcm/CLKIN1] -master_clock [get_clocks k7_clk_p] [get_pins clocks/main_pll/mmcm/CLKOUT0]
create_generated_clock -name clk_125mhz -source [get_pins clocks/main_pll/mmcm/CLKIN1] -master_clock [get_clocks k7_clk_p] [get_pins clocks/main_pll/mmcm/CLKOUT1]
create_generated_clock -name clk_156mhz -source [get_pins clocks/main_pll/mmcm/CLKIN1] -master_clock [get_clocks k7_clk_p] [get_pins clocks/main_pll/mmcm/CLKOUT2]
create_generated_clock -name clk_250mhz -source [get_pins clocks/main_pll/mmcm/CLKIN1] -master_clock [get_clocks k7_clk_p] [get_pins clocks/main_pll/mmcm/CLKOUT3]
create_generated_clock -name clk_312mhz -source [get_pins clocks/main_pll/mmcm/CLKIN1] -master_clock [get_clocks k7_clk_p] [get_pins clocks/main_pll/mmcm/CLKOUT4]
create_generated_clock -name clk_625mhz -source [get_pins clocks/main_pll/mmcm/CLKIN1] -master_clock [get_clocks k7_clk_p] [get_pins clocks/main_pll/mmcm/CLKOUT5]
create_generated_clock -name clk_400mhz -source [get_pins clocks/even_pll/mmcm/CLKIN1] -master_clock [get_clocks clk_50mhz] [get_pins clocks/even_pll/mmcm/CLKOUT0]
set_clock_groups -asynchronous -group [get_clocks rgmii_rx_clk] -group [get_clocks clk_125mhz]
set_clock_groups -asynchronous -group [get_clocks clk_156mhz] -group [get_clocks clk_pll_i]
set_clock_groups -asynchronous -group [get_clocks clk_125mhz] -group [get_clocks rgmii_rx_clk]
set_false_path -from [get_clocks clk_156mhz] -to [get_clocks rgmii_rx_clk]

set_clock_groups -asynchronous -group [get_clocks rgmii_rx_clk] -group [get_clocks clk_156mhz]

create_generated_clock -name clk_200mhz -source [get_pins clocks/even_pll/mmcm/CLKIN1] -master_clock [get_clocks clk_50mhz] [get_pins clocks/even_pll/mmcm/CLKOUT1]

set_max_delay -datapath_only -from [get_cells -hierarchical *reg_a_ff*] -to [get_cells -hierarchical *reg_b_reg*] 3.200

set_max_delay -from [get_cells -hierarchical *dout0_reg*] -to [get_cells -hierarchical *dout1_reg*] 3.200

create_pblock pblock_network
add_cells_to_pblock [get_pblocks pblock_network] [get_cells -quiet [list network]]
resize_pblock [get_pblocks pblock_network] -add {CLOCKREGION_X0Y2:CLOCKREGION_X0Y4}
create_pblock pblock_trigger
add_cells_to_pblock [get_pblocks pblock_trigger] [get_cells -quiet [list trig]]
resize_pblock [get_pblocks pblock_trigger] -add {CLOCKREGION_X0Y0:CLOCKREGION_X0Y1}
create_pblock pblock_ddr
add_cells_to_pblock [get_pblocks pblock_ddr] [get_cells -quiet [list ddr_controller]]
resize_pblock [get_pblocks pblock_ddr] -add {CLOCKREGION_X1Y0:CLOCKREGION_X1Y2}
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_312mhz]
