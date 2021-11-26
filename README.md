# Intro

TODO: talk more about the project

# Project Codenames

Boards, subsystems, etc are all named after famous electrical engineers.

## General

* STARSHIPRAIDER: umbrella term for the entire project
* CLARKE (Edith Clarke, first female EE professor in USA): the original STARSHIPRAIDER project

## Oscilloscopes

Individual instrument projects are named after famous electrical engineers who made major contributions to the field of
test equipment design.

All are 8 channels??

* BLONDEL (Andre-Eugene Blondel, inventor of electromechanical oscillograph) \
  8 bit: 100 MHz / 250 - 500 - 1000 Msps \
  12 bit: 50 MHz / 125 - 250 - 500 Msps \
  4 AFE : 1 HMCAD1520 \
  Two acquisition cards, 4 channels each \
  One XC7A100T-2FGG676 on main board \
  One DDR3 800 SODIMM on main board

* DUDDELL (William Duddell, inventor of moving-coil mirror oscillograph) \
  250 MHz / 1 Gsps, 1 AFE : 1 HMCAD1520
  1x XC7K160T-2FFG676

  Eight analog cards, one HMCAD1520 + one AFE each
  One digital card with 1-2 SFF-8087 connectors for LA
  One AWG card with a TBD JESD204 DAC using unused serdes lanes (assuming 4 for 40G, one for 10G, three available)

* ZENNECK (Jonathan Zenneck, inventor of electrically scanned CRT oscilloscope) \
  500 MHz or 1 GHz / 5 Gsps, 1 AFE : 1 AD9213-6G

  Per channel:
  * 1x XC7A200T-2FFG1156
  * 1x AD9213 in 6G speed grade
  * 2x DDR3 800 SODIMM

  Global:
  * 1x XC7K160T-2FFG160T (could do six channels with direct lane to each one)

* VOLLUM (Howard Vollum, co-inventor of triggered-sweep oscilloscope) \
  1-2 GHz / 10 Gsps, 1 AFE : 1 AD9213

* MURDOCK (Melvin Jack Murdock, co-inventor of triggered-sweep oscilloscope) \
  6 GHz / 40 Gsps, 1 AFE : 4 AD9213

## Probes / peripherals

* CONWAY (VLSI pioneer, co-author of Mead & Conway) \
  8-bit comparator-to-LVDS logic analyzer pod with SFF-8087 interface and high-impedance inputs

* MEAD (other half of Mead & Conway) \
  8-bit comparator-to-LVDS logic analyzer pod with SFF-8087 interface and 50 ohm inputs

* MAXWELL (James Clerk Maxwell, discovered Maxwell's Equations) \
  Kintex-7 ISERDESE2 based LA

* TODO: Artix-7 GTP based LA??

* DENNARD (Robert Dennard, inventor of DRAM) \
  Kintex-7 GTX based LA

* BRAUN (Karl Ferdinand Braun, inventor of optically scanned CRT oscilloscope and phased array)
  Low-bandwidth active probe
	ADA4817-1ACPZ-R7

* HALL (discovered Hall effect)
  AKL-PT1 passive probe

## Signal Generators

* FLEMING (John Ambrose Fleming, inventor of vacuum tube)
  4 channel 14 bit 2.5 Gsps arbitrary waveform generator, AD9739 + Kintex-7 + DDR3 SODIMM based.
  Need ~160 Gbps of RAM bandwidth to keep them fed

  Two channels of 14-bit LVDS per DAC = 28 LVDS pairs for data, assume clock/sync are external to FPGA
  Slow control: 4 wire SPI, IRQ = 5 slow lines

  4x DAC = 84 pairs (168 pins used / 4 banks / 200 allocated) + 15 slow lines

  Two xc7k160t's, two dacs + 1 sodimm of ram on each

  4GB DDR3 SODIMM, 1 GB per channel = 512 Mpoints of waveform data
  Probably some digital outputs (mix of LVDS and LVCMOS, and maybe some slow pin headers?)
