# Intro

This is the umbrella repo for a lot of my T&M projects. Some will end up in separate repos.

# Project Codenames

Boards, subsystems, etc are all named after famous electrical engineers who made major contributions to the field of test equipment design.

# Platform Architecture

All instruments are planned to share the same basic platform. Generally speaking, this platform will be:

## Mechanical form factor

* 1U rackmount, depth dependent on the specific instrument.

## Power
* 48V DC power on 6-pin Molex Mini-Fit Jr connector (back left)
* Intermediate bus converter based on the [trigger crossbar](https://github.com/azonenberg/triggercrossbar/tree/main/pcb/ibc) IBC design to produce 12V output.
* Possible changes from current design (as of 2024-03-31): switch to bigger MCU with flash space for A/B firmware images, consider swapping main DC-DC module to something with lower standby power (current IBC wastes ~3W no-load which isn't great)
* STM32L0 based power/reset sequencing supervisor with soft power on/off

## Software/firmware stack

* ngscopeclient as primary UI
* staticnet as TCP/IP stack
* Bare metal, no OS, no dynamic memory allocation
* SFTP based firmware update, eventually with signed updates (user can add new signing keys via uart console)

## Main chipset
* STM32H7 as main processor running SCPI stack, sshd, and control plane functionality (low speed ADCs/DACs, GPIOs, etc)
* Xilinx UltraScale+ / UltraScale / 7 series FPGA as main datapath. Some instruments may have >1 FPGA.

## Communications

* KSZ9031 based 10/100/1000 baseT fallback Ethernet interface
* 10Gbase-R SFP+ / 25Gbase-R SFP28 interface for primary remote control path
* Twinlan transport, SCPI control plane socket plus bare TCP socket for binary waveform data
* 2.13" monochrome e-ink display with IP/version/status information
* RS232 console on rear panel RJ45 (Cisco pinout)

## RF / signal interface

* Front panel SMA/BNC probe ports. Number of channels dependent on PCB size.
* Rear panel SMA for 10 MHz reference in, level TBD
* May have reference out TBD
* May have PPS in/out TBD
* Rear panel trigger in/out if applicable

# Roadmap (including external repos)

1. [Trigger Crossbar](https://github.com/azonenberg/triggercrossbar)  
Currently in progress. Not planning to make in volume, focus is on prototyping as much of the platform as possible to speed development and de-risk future projects. Prototype assembled, firmware dev in progress.

1. [kup-lulz](https://github.com/azonenberg/misc-devboards/tree/master/kup-lulz): One-off Kintex UltraScale+ test board on OSHPark 4 layers, using a sketchy reballed aliexpress FPGA. Intended as a low-risk validation for UltraScale+ based power, pcb footprint/schematic, and some RTL development. Schematic complete, fine tuning layout.

1. [GROVER](https://github.com/azonenberg/grover): Kintex UltraScale+ based 10/25G BERT. On hold until kup-lulz is brought up and working as it will essentially be a scaled-up version of the same design

1. VOLLUM (Howard Vollum, co-inventor of triggered-sweep oscilloscope)
    - No design progress yet, but can probably leverage some old frontend work. One 6 Gbps AD9213 is in inventory for a scaled down (7 series based) single channel prototype.
    - 2 GHz / 10 Gsps 12 bit oscilloscope, as many channels as I can fit in 1U
    - Per channel: 1x AD9213, frontend, XCAU25P-2FFVB676, 72-bit DDR4 LRDIMM
    - Top level: One more FPGA, details TBD, doing trigger sync and MSO channels
    - Will need to use parallel / bonded serial LVDS for waveform download since all 12 GTYs on the KU25Ps will be used for the JESD204











-----

# Stuff below here is way old and needs to be redone

-----

## General

* STARSHIPRAIDER: umbrella term for the entire project
* CLARKE (Edith Clarke, first female EE professor in USA): the original STARSHIPRAIDER project

## Oscilloscopes

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
