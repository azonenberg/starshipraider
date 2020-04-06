# Introduction

This document is a high level design of the BLONDEL oscilloscope.

# Boards

* FPGA board ("brain")
* 2x acquisition board (4x AFE + 1x HMCAD1520)
* UI board (STM32 with LCD controller for driving front panel status display)
* LA/external trigger board

# Interfacing

Convention: QSH on FPGA board, QTH on everything else

## Acquisition board

Outputs to FPGA board

* ADC data (8x LVDS)
* FCLK (LVDS)
* LCLK (LVDS)
* DAC SPI data out (1x LVCMOS33)
* Input channel relay enable (4x 5V, need to level shift to LVCMOS33)
* Input channel overvoltage state (4x 5V, need to level shift to LVCMOS33)

Inputs from FPGA board
* ADC clock (LVDS)
* ADC power down (LVCMOS18)
* ADC reset (LVCMOS18)
* ADC SPI bus (3x LVCMOS18)
* Gain stage SPI CS/clock (6x LVCMOS33)
* Gain stage performance mode (2x LVCMOS33)
* Gain stage power-up (4x LVCMOS33)
* Common mode stage power-up (4x LVCMOS33)
* Offset stage power-up (4x LVCMOS33)
* DAC SPI bus (3x LVCMOS33)
* DAC reset (LVCMOS33)
* Input channel reset (4x LVCMOS33)

Bidirectional
* Gain stage SPI data (2x, natively 5V, need to level shift to/from LVCMOS33)
* 1x I2C for TBD sensors (2x LVCMOS33)

Total:
* 11x LVDS to FPGA (one on clock capable input)
* 1x LVDS directly to PLL
* 41x LVCMOS33
* 5x LVCMOS18
* 70 pins, plus power/ground

We probably want to use a QTH-060 here.

## UI board

## LA / trigger board

Outputs to FPGA board
* LA data (8x LVDS)
* External trigger input (1x LVDS)
* SPI data out from trigger threshold DAC (1x LVCMOS33)

Inputs from FPGA board
* UART to LA MCU (2x LVCMOS33)
* SPI bus to DAC for setting trigger threshold (3x LVCMOS33)

Bidirectional
* I2C for TBD sensors (2x LVCMOS33)

Total:
* 9x LVDS
* 8x LVCMOS33
* 26 pins, plus power/ground

Should easily fit in a QTH-030

# FPGA banks etc
