# Introduction

This document is a high level design of the BLONDEL oscilloscope.

# Prototype

AFE bugs found

* Relay pinout (already fixed in new kicad library)
* 2V5 oscillates (removing C15 fixes)
* Solder short on 1V8. Need more paste reduction on output diodes
* DAC oscillates. Added 1000 pF to C70, increased C69 to 0.47 uF, added 100 uH L between DAC and load
* LDAC and CS# are swapped on LTC2664 (sch symbol is correct, just wrong net names)
* Per ADL5205 datasheet, should have decoupling cap on Vcm (2V5_REF) to ground. Need to decouple cap from 2V5 reference.
	For final board, should use a reference that's stable with capacitive loads (LT6660)
* LMH6552 output resistors are not needed, should be 0R. But this breaks the diode clipper on the output
* R13/14 did not take ADL5205 output impedance into account. Should be 93.1

ADC board bugs found

* None to date

# Active probe stuff

USB only uses AC coupling on the TX side
Should probably enable power on TX direction first, then RX later
stm32f042 qfn28 probe
stm32f401 qfn48 host
ADA4817-1ACPZ-R7

# Boards

* FPGA board ("brain")
* 2x acquisition board (4x AFE + 1x HMCAD1520)
* UI board (STM32 with LCD controller for driving front panel status display)
* LA/external trigger board

# Interfacing

Convention: QSH on FPGA board, QTH on everything else

# EVERYTHING BELOW HERE NEEDS TO BE UPDATED

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
* I2C for TBD sensors (2x LVCMOS33)

Total:
* 11x LVDS to FPGA (one on clock capable input)
* 1x LVDS directly to PLL
* 41x LVCMOS33
* 5x LVCMOS18
* 70 pins, plus power/ground

We probably want to use a QTH-060 here.

## UI board

Outputs to FPGA board
* SPI bus from UI MCU (3x LVCMOS33)

Inputs from FPGA board
* SPI data out (1x LVCMOS33)

Bidirectional
* I2C for TBD sensors (2x LVCMOS33)

Total:
* 6x LVCMOS33

A Q-strip is probably be overkill here, use a 100 mil pin header to reduce costs?

## LA / trigger board

Outputs to FPGA board
* LA data (8x LVDS)
* External trigger input (1x LVDS)
* SPI data out from trigger threshold DAC (1x LVCMOS33)
* UART from LA MCU (1x LVCMOS33)

Inputs from FPGA board
* UART to LA MCU (1x LVCMOS33)
* SPI bus to DAC for setting trigger threshold (3x LVCMOS33)

Bidirectional
* I2C for TBD sensors (2x LVCMOS33)

Total:
* 9x LVDS
* 8x LVCMOS33
* 26 pins, plus power/ground

Should easily fit in a QTH-030

## Subsystems on FPGA board

* RGMII (12x LVCMOS18, 1 clock capable)
* MDIO (2x LVCMOS18)
* PHY reset (1x LVCMOS18)
* System clock input (1x LVDS)
* I2C to TBD sensors (2x LVCMOS33)

PLL
* STATUS_HOLDOVER (LVCMOS33)
* STATUS_LD (LVCMOS33)
* LE (LVCMOS33)
* CLK (LVCMOS33)
* DATA (LVCMOS33)
* Total: 5x LVCMOS33

DDR3L SODIMM
* A (x16 SSTL135_S)
* BA (x3 SSTL135_S)
* CK (x2 DIFF_SSTL135_S)
* CKE (x2 SSTL135_S)
* DM (x8 SSTL135_S)
* ODT (x2 SSTL135_S)
* RAS# (x1 SSTL135_S)
* CAS# (x1 SSTL135_S)
* WE# (x1 SSTL135_S)
* RST# (x1 SSTL135_S)
* CS# (x2 SSTL135_S)
* SA# (x2 LVCMOS33)
* I2C (x2 LVCMOS33)
* DQ (x64 SSTL135_S)
* DQS (x8 DIFF_SSTL135_S)
* Total: 121x SSTL, 4x LVCMOS33

Total main board:
* 15x LVCMOS18, (1 clock capable)
* 1x LVDS
* 11x LVCMOS33
* 121x SSTL

### Memory requirements

Bandwidth requirements

* 1 Gbps: Waveform readout to Ethernet PHY
* 16 Gbps: incoming LA data
* 16 Gbps: incoming ADC data
* Need at least 33 Gbps of usable bandwidth

Bandwidth available

* DDR3 SODIMM is 64 bit bus width
* -2 Artix-7 can do 800 MT/s on DDR3L in 4:1 mode
* This is 51.2 Gbps of theoretical bandwidth
* We need to hit at least 64% bus efficiency to keep up (assuming no compression)
* Shouldn't be hard with mostly streaming writes

# FPGA banks etc

Need at least -2 speed grade to do 1 Gbps LVDS input

To LA/trigger:
* 9x LVDS
* 8x LVCMOS33

To UI board:
* 6x LVCMOS33

To acquisition boards:
* 22x LVDS (2 clock capable)
* 82x LVCMOS33
* 10x LVCMOS18

To peripherals on FPGA board
* 15x LVCMOS18, (1 clock capable)
* 1x LVDS (clock capable)
* 11x LVCMOS33
* 121x SSTL

Total FPGA signals:
* 32 LVDS (64 pins, 3 clock capable)
* 107x LVCMOS33
* 25x LVCMOS18
* 121x SSTL

Total pins: 317

Banks needed:
* 2x LVDS
* 2x LVCMOS33 (will have to level shift 7 bits from other levels, or eliminate some signals)
* 1x LVCMOS18
* 3x SSTL

We're looking at the XC7A200T in FBG676.
