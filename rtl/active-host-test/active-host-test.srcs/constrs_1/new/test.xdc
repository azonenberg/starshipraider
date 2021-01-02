## Input clock (100MHz)... maybe it should be 25MHz or something?
set_property IOSTANDARD LVCMOS33 [get_ports emcclk]
set_property PACKAGE_PIN A10 [get_ports emcclk]
create_clock -period 10.000 -name emcclk_100mhz -waveform {0.000 5.000} [get_ports emcclk]

#### All IO assignments below here are temporary and dependant on final schematic.

## UART Connections (to probe)
# There's a way to do this, not sure if this is valid...
set_property IOSTANDARD LVCMOS33 [get_ports sbu[*]]
set_property PACKAGE_PIN K12 [get_ports sbu[1]]
set_property PACKAGE_PIN L12 [get_ports sbu[0]]

## I2C Connections (to USB-C controller)
set_property IOSTANDARD LVCMOS33 [get_ports i2c_sda]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_scl]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_int]
set_property PACKAGE_PIN G14 [get_ports i2c_sda]
set_property PACKAGE_PIN H14 [get_ports i2c_scl]
set_property PACKAGE_PIN J14 [get_ports i2c_int]
set_property PULLUP TRUE [get_ports i2c_sda]
set_property PULLUP TRUE [get_ports i2c_scl]

## Power Gates
set_property IOSTANDARD LVCMOS33 [get_ports probe_pwr_en]
set_property IOSTANDARD LVCMOS33 [get_ports probe_vbus_en_b]
set_property PACKAGE_PIN L14 [get_ports probe_pwr_en]
set_property PACKAGE_PIN M14 [get_ports probe_vbus_en_b]

## SPI Device Interface
set_property IOSTANDARD LVCMOS33 [get_ports spi_copi]
set_property IOSTANDARD LVCMOS33 [get_ports spi_cipo]
set_property IOSTANDARD LVCMOS33 [get_ports spi_cs]
set_property IOSTANDARD LVCMOS33 [get_ports spi_clk]
set_property PACKAGE_PIN N14 [get_ports spi_copi]
set_property PACKAGE_PIN N13 [get_ports spi_cipo]
set_property PACKAGE_PIN P13 [get_ports spi_cs]
set_property PACKAGE_PIN P12 [get_ports spi_clk]
set_property PULLUP TRUE [get_ports spi_cs]
