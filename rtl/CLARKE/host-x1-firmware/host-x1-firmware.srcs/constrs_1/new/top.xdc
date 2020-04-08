set_property PACKAGE_PIN A5 [get_ports {ram0_dq[5]}]
set_property PACKAGE_PIN C7 [get_ports {ram0_dq[4]}]
set_property PACKAGE_PIN B6 [get_ports {ram0_dq[3]}]
set_property PACKAGE_PIN B7 [get_ports {ram0_dq[2]}]
set_property PACKAGE_PIN B4 [get_ports {ram0_dq[1]}]
set_property PACKAGE_PIN B5 [get_ports {ram0_dq[0]}]
set_property PACKAGE_PIN C1 [get_ports {ram1_dq[5]}]
set_property PACKAGE_PIN B1 [get_ports {ram1_dq[4]}]
set_property PACKAGE_PIN C2 [get_ports {ram1_dq[3]}]
set_property PACKAGE_PIN D4 [get_ports {ram1_dq[2]}]
set_property PACKAGE_PIN E1 [get_ports {ram1_dq[1]}]
set_property PACKAGE_PIN D1 [get_ports {ram1_dq[0]}]
set_property PACKAGE_PIN H1 [get_ports {ram2_dq[5]}]
set_property PACKAGE_PIN H4 [get_ports {ram2_dq[4]}]
set_property PACKAGE_PIN J4 [get_ports {ram2_dq[3]}]
set_property PACKAGE_PIN H3 [get_ports {ram2_dq[2]}]
set_property PACKAGE_PIN K1 [get_ports {ram2_dq[1]}]
set_property PACKAGE_PIN H2 [get_ports {ram2_dq[0]}]
set_property PACKAGE_PIN A4 [get_ports {ram0_dq[6]}]
set_property PACKAGE_PIN E2 [get_ports {ram1_dq[6]}]
set_property PACKAGE_PIN J1 [get_ports {ram2_dq[6]}]
set_property PACKAGE_PIN R2 [get_ports {ram3_dq[6]}]
set_property PACKAGE_PIN P1 [get_ports {ram3_dq[5]}]
set_property PACKAGE_PIN M2 [get_ports {ram3_dq[4]}]
set_property PACKAGE_PIN N1 [get_ports {ram3_dq[3]}]
set_property PACKAGE_PIN M1 [get_ports {ram3_dq[2]}]
set_property PACKAGE_PIN T2 [get_ports {ram3_dq[1]}]
set_property PACKAGE_PIN R1 [get_ports {ram3_dq[0]}]
set_property PACKAGE_PIN A3 [get_ports {ram0_dq[7]}]
set_property PACKAGE_PIN F2 [get_ports {ram1_dq[7]}]
set_property PACKAGE_PIN K2 [get_ports {ram2_dq[7]}]
set_property PACKAGE_PIN R3 [get_ports {ram3_dq[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]
set_property PACKAGE_PIN R5 [get_ports {led[3]}]
set_property PACKAGE_PIN T5 [get_ports {led[2]}]
set_property PACKAGE_PIN R6 [get_ports {led[1]}]
set_property PACKAGE_PIN T7 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports clk_100mhz]
set_property PACKAGE_PIN N11 [get_ports clk_100mhz]

set_property PACKAGE_PIN D15 [get_ports i2c_scl]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_scl]
set_property PACKAGE_PIN G15 [get_ports i2c_sda]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_sda]
create_clock -period 10.000 -name clk_100mhz -waveform {0.000 5.000} [get_ports clk_100mhz]

set_property IOSTANDARD LVCMOS33 [get_ports {pmod_dq[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pmod_dq[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pmod_dq[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pmod_dq[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pmod_dq[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pmod_dq[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pmod_dq[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pmod_dq[0]}]
set_property PACKAGE_PIN H11 [get_ports {pmod_dq[7]}]
set_property PACKAGE_PIN H12 [get_ports {pmod_dq[6]}]
set_property PACKAGE_PIN F12 [get_ports {pmod_dq[5]}]
set_property PACKAGE_PIN F13 [get_ports {pmod_dq[4]}]
set_property PACKAGE_PIN G14 [get_ports {pmod_dq[3]}]
set_property PACKAGE_PIN E11 [get_ports {pmod_dq[1]}]
set_property PACKAGE_PIN G12 [get_ports {pmod_dq[2]}]
set_property PACKAGE_PIN F14 [get_ports {pmod_dq[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {oe[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oe[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oe[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oe[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oe[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oe[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oe[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oe[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {txd[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {txd[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {txd[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {txd[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {txd[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {txd[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {txd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {txd[0]}]
set_property PACKAGE_PIN C8 [get_ports {oe[7]}]
set_property PACKAGE_PIN C9 [get_ports {oe[6]}]
set_property PACKAGE_PIN C14 [get_ports {oe[3]}]
set_property PACKAGE_PIN D13 [get_ports {oe[4]}]
set_property PACKAGE_PIN D11 [get_ports {oe[5]}]
set_property PACKAGE_PIN D14 [get_ports {oe[2]}]
set_property PACKAGE_PIN D16 [get_ports {oe[1]}]
set_property PACKAGE_PIN E16 [get_ports {oe[0]}]
set_property SLEW FAST [get_ports {oe[7]}]
set_property SLEW FAST [get_ports {oe[6]}]
set_property SLEW FAST [get_ports {oe[5]}]
set_property SLEW FAST [get_ports {oe[4]}]
set_property SLEW FAST [get_ports {oe[3]}]
set_property SLEW FAST [get_ports {oe[2]}]
set_property SLEW FAST [get_ports {oe[1]}]
set_property SLEW FAST [get_ports {oe[0]}]
set_property SLEW FAST [get_ports {txd[7]}]
set_property SLEW FAST [get_ports {txd[6]}]
set_property SLEW FAST [get_ports {txd[5]}]
set_property SLEW FAST [get_ports {txd[4]}]
set_property SLEW FAST [get_ports {txd[3]}]
set_property SLEW FAST [get_ports {txd[2]}]
set_property SLEW FAST [get_ports {txd[1]}]
set_property SLEW FAST [get_ports {txd[0]}]
set_property SLEW FAST [get_ports {pmod_dq[7]}]
set_property SLEW FAST [get_ports {pmod_dq[6]}]
set_property SLEW FAST [get_ports {pmod_dq[5]}]
set_property SLEW FAST [get_ports {pmod_dq[4]}]
set_property SLEW FAST [get_ports {pmod_dq[3]}]
set_property SLEW FAST [get_ports {pmod_dq[2]}]
set_property SLEW FAST [get_ports {pmod_dq[1]}]
set_property SLEW FAST [get_ports {pmod_dq[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_txd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_txd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_txd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_txd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rxd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rxd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rxd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_rxd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_txc]
set_property PACKAGE_PIN T15 [get_ports rgmii_rx_ctl]
set_property PACKAGE_PIN N14 [get_ports rgmii_rxc]
set_property PACKAGE_PIN T13 [get_ports rgmii_tx_ctl]
set_property PACKAGE_PIN T14 [get_ports rgmii_txc]

create_clock -period 8.000 -name rgmii_rxc -waveform {0.000 4.000} [get_ports rgmii_rxc]

set_property PACKAGE_PIN P11 [get_ports eth_activity_led]
set_property PACKAGE_PIN P10 [get_ports eth_link_led]
set_property PACKAGE_PIN R8 [get_ports eth_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports eth_activity_led]
set_property IOSTANDARD LVCMOS18 [get_ports eth_link_led]
set_property IOSTANDARD LVCMOS18 [get_ports eth_rst_n]

set_property PULLUP true [get_ports {rgmii_rxd[3]}]
set_property PULLUP true [get_ports {rgmii_rxd[2]}]
set_property PULLUP true [get_ports {rgmii_rxd[1]}]
set_property PULLDOWN true [get_ports {rgmii_rxd[0]}]
set_property PULLDOWN true [get_ports rgmii_rxc]

set_property IOSTANDARD LVCMOS18 [get_ports eth_mdio]
set_property PACKAGE_PIN R12 [get_ports eth_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports eth_mdc]
set_property PACKAGE_PIN T12 [get_ports eth_mdio]
set_property SLEW FAST [get_ports {rgmii_txd[3]}]
set_property SLEW FAST [get_ports {rgmii_txd[2]}]
set_property SLEW FAST [get_ports {rgmii_txd[1]}]
set_property SLEW FAST [get_ports {rgmii_txd[0]}]
set_property SLEW FAST [get_ports rgmii_txc]

set_property PULLDOWN true [get_ports rgmii_rx_ctl]

set_property IOSTANDARD LVCMOS18 [get_ports {ram0_dq[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram0_dq[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram0_dq[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram0_dq[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram0_dq[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram0_dq[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram0_dq[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram0_dq[0]}]
set_property SLEW FAST [get_ports {ram1_dq[7]}]
set_property SLEW FAST [get_ports {ram1_dq[6]}]
set_property SLEW FAST [get_ports {ram1_dq[5]}]
set_property SLEW FAST [get_ports {ram1_dq[4]}]
set_property SLEW FAST [get_ports {ram1_dq[3]}]
set_property SLEW FAST [get_ports {ram1_dq[2]}]
set_property SLEW FAST [get_ports {ram1_dq[1]}]
set_property SLEW FAST [get_ports {ram1_dq[0]}]
set_property SLEW FAST [get_ports {ram0_dq[7]}]
set_property SLEW FAST [get_ports {ram0_dq[6]}]
set_property SLEW FAST [get_ports {ram0_dq[5]}]
set_property SLEW FAST [get_ports {ram0_dq[4]}]
set_property SLEW FAST [get_ports {ram0_dq[3]}]
set_property SLEW FAST [get_ports {ram0_dq[2]}]
set_property SLEW FAST [get_ports {ram0_dq[1]}]
set_property SLEW FAST [get_ports {ram0_dq[0]}]
set_property SLEW FAST [get_ports {ram2_dq[7]}]
set_property SLEW FAST [get_ports {ram2_dq[6]}]
set_property SLEW FAST [get_ports {ram2_dq[5]}]
set_property SLEW FAST [get_ports {ram2_dq[4]}]
set_property SLEW FAST [get_ports {ram2_dq[3]}]
set_property SLEW FAST [get_ports {ram2_dq[2]}]
set_property SLEW FAST [get_ports {ram2_dq[1]}]
set_property SLEW FAST [get_ports {ram2_dq[0]}]
set_property SLEW FAST [get_ports {ram3_dq[7]}]
set_property SLEW FAST [get_ports {ram3_dq[6]}]
set_property SLEW FAST [get_ports {ram3_dq[5]}]
set_property SLEW FAST [get_ports {ram3_dq[4]}]
set_property SLEW FAST [get_ports {ram3_dq[3]}]
set_property SLEW FAST [get_ports {ram3_dq[2]}]
set_property SLEW FAST [get_ports {ram3_dq[1]}]
set_property SLEW FAST [get_ports {ram3_dq[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram1_dq[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram1_dq[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram1_dq[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram1_dq[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram1_dq[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram1_dq[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram1_dq[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram1_dq[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram2_dq[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram2_dq[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram2_dq[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram2_dq[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram2_dq[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram2_dq[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram2_dq[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram2_dq[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram3_dq[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram3_dq[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram3_dq[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram3_dq[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram3_dq[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram3_dq[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram3_dq[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ram3_dq[0]}]
set_property PACKAGE_PIN T4 [get_ports ram3_clk_p]
set_property IOSTANDARD LVCMOS18 [get_ports ram3_clk_p]
set_property SLEW FAST [get_ports ram3_clk_p]
set_property PACKAGE_PIN T3 [get_ports ram3_clk_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram3_clk_n]
set_property SLEW FAST [get_ports ram3_clk_n]
set_property PACKAGE_PIN N3 [get_ports ram3_cs_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram3_cs_n]
set_property SLEW FAST [get_ports ram3_cs_n]
set_property PACKAGE_PIN P3 [get_ports ram3_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram3_rst_n]
set_property PACKAGE_PIN G2 [get_ports ram2_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram2_rst_n]
set_property PACKAGE_PIN G1 [get_ports ram2_cs_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram2_cs_n]
set_property PACKAGE_PIN L3 [get_ports ram2_clk_p]
set_property IOSTANDARD LVCMOS18 [get_ports ram2_clk_p]
set_property PACKAGE_PIN L2 [get_ports ram2_clk_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram2_clk_n]
set_property PACKAGE_PIN B2 [get_ports ram1_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram1_rst_n]
set_property PACKAGE_PIN A2 [get_ports ram1_cs_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram1_cs_n]
set_property PACKAGE_PIN F4 [get_ports ram1_clk_p]
set_property IOSTANDARD LVCMOS18 [get_ports ram1_clk_p]
set_property PACKAGE_PIN F3 [get_ports ram1_clk_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram1_clk_n]
set_property PACKAGE_PIN E5 [get_ports ram0_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram0_rst_n]
set_property PACKAGE_PIN C6 [get_ports ram0_cs_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram0_cs_n]
set_property PACKAGE_PIN D6 [get_ports ram0_clk_p]
set_property IOSTANDARD LVCMOS18 [get_ports ram0_clk_p]
set_property PACKAGE_PIN D5 [get_ports ram0_clk_n]
set_property IOSTANDARD LVCMOS18 [get_ports ram0_clk_n]
set_property SLEW FAST [get_ports ram3_rst_n]
set_property SLEW FAST [get_ports ram0_clk_n]
set_property SLEW FAST [get_ports ram0_clk_p]
set_property SLEW FAST [get_ports ram0_cs_n]
set_property SLEW FAST [get_ports ram0_rst_n]
set_property SLEW FAST [get_ports ram1_clk_n]
set_property SLEW FAST [get_ports ram1_clk_p]
set_property SLEW FAST [get_ports ram1_cs_n]
set_property SLEW FAST [get_ports ram1_rst_n]
set_property SLEW FAST [get_ports ram2_clk_n]
set_property SLEW FAST [get_ports ram2_clk_p]
set_property SLEW FAST [get_ports ram2_cs_n]
set_property SLEW FAST [get_ports ram2_rst_n]
set_property SLEW FAST [get_ports rgmii_tx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports ram0_dqs]
set_property IOSTANDARD LVCMOS18 [get_ports ram2_dqs]
set_property IOSTANDARD LVCMOS18 [get_ports ram1_dqs]
set_property IOSTANDARD LVCMOS18 [get_ports ram3_dqs]
set_property SLEW FAST [get_ports ram3_dqs]
set_property SLEW FAST [get_ports ram2_dqs]
set_property SLEW FAST [get_ports ram1_dqs]
set_property SLEW FAST [get_ports ram0_dqs]


set_property PACKAGE_PIN A7 [get_ports ram0_dqs]
set_property PACKAGE_PIN C3 [get_ports ram1_dqs]
set_property PACKAGE_PIN J3 [get_ports ram2_dqs]
set_property PACKAGE_PIN N2 [get_ports ram3_dqs]
set_property PACKAGE_PIN P14 [get_ports {rgmii_txd[3]}]
set_property PACKAGE_PIN N16 [get_ports {rgmii_txd[2]}]
set_property PACKAGE_PIN M15 [get_ports {rgmii_txd[1]}]
set_property PACKAGE_PIN M16 [get_ports {rgmii_txd[0]}]
set_property PACKAGE_PIN D10 [get_ports {txd[6]}]
set_property PACKAGE_PIN D9 [get_ports {txd[7]}]
set_property PACKAGE_PIN C13 [get_ports {txd[5]}]
set_property PACKAGE_PIN B14 [get_ports {txd[4]}]
set_property PACKAGE_PIN E13 [get_ports {txd[3]}]
set_property PACKAGE_PIN E12 [get_ports {txd[2]}]
set_property PACKAGE_PIN E15 [get_ports {txd[1]}]
set_property PACKAGE_PIN F15 [get_ports {txd[0]}]
set_property PACKAGE_PIN P16 [get_ports {rgmii_rxd[3]}]
set_property PACKAGE_PIN P15 [get_ports {rgmii_rxd[2]}]
set_property PACKAGE_PIN R16 [get_ports {rgmii_rxd[1]}]
set_property PACKAGE_PIN R15 [get_ports {rgmii_rxd[0]}]

set_property DRIVE 8 [get_ports {pmod_dq[7]}]
set_property DRIVE 8 [get_ports {pmod_dq[6]}]
set_property DRIVE 8 [get_ports {pmod_dq[5]}]
set_property DRIVE 8 [get_ports {pmod_dq[4]}]
set_property DRIVE 8 [get_ports {pmod_dq[3]}]
set_property DRIVE 8 [get_ports {pmod_dq[2]}]
set_property DRIVE 8 [get_ports {pmod_dq[1]}]
set_property DRIVE 8 [get_ports {pmod_dq[0]}]


set_clock_groups -asynchronous -group [get_clocks rgmii_rxc] -group [get_clocks p_0_in]
set_clock_groups -asynchronous -group [get_clocks rgmii_rxc] -group [get_clocks p_1_in]
set_clock_groups -asynchronous -group [get_clocks p_0_in] -group [get_clocks rgmii_rxc]

create_generated_clock -name clk_ipstack -source [get_pins pll/mmcm/CLKIN1] -master_clock clk_100mhz [get_pins pll/mmcm/CLKOUT0]
create_generated_clock -name clk_125mhz -source [get_pins pll/mmcm/CLKIN1] -master_clock clk_100mhz [get_pins pll/mmcm/CLKOUT1]
create_generated_clock -name clk_250mhz -source [get_pins pll/mmcm/CLKIN1] -master_clock clk_100mhz [get_pins pll/mmcm/CLKOUT2]
set_clock_groups -asynchronous -group [get_clocks *clk_ipstack*] -group [get_clocks *clk_125mhz*]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_100mhz_IBUF_BUFG]