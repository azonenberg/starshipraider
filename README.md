# Welcome to STARSHIPRAIDER
Welcome to the STARSHIPRAIDER repository! This project is a collection of electrical engineering projects, each named after a famous figure in the field. These projects include oscilloscopes, probes, peripherals, and signal generators.

The oscilloscopes are 8-channel devices with impressive specifications, such as bandwidths ranging from 50 MHz to 1 GHz and sample rates from 125 Msps to 5 Gsps. Each oscilloscope is named after a pioneer in the field of test equipment design. For example,  Andre-Eugene Blondel, inventor of the electromechanical oscillograph, and Howard Vollum, co-inventor of the triggered-sweep oscilloscope.

In addition to our oscilloscopes, there is a range of probes and peripherals. These include logic analyzer pods named after VLSI pioneers Mead and Conway, active and passive probes named after James Clerk Maxwell, who discovered Maxwell's Equations, and Karl Ferdinand Braun, inventor of the optically scanned CRT oscilloscope.

Finally, we have 4-channel signal generators with high-resolution and fast sample rates. These generators, named after John Ambrose Fleming, inventor of the vacuum tube, are capable of producing arbitrary waveforms with sample rates up to 2.5 Gsps.

# Oscilloscopes

Individual instrument projects are named after famous electrical engineers who made major contributions to the field of test equipment design. All oscilloscopes are 8-channel devices.

## BLONDEL
Named after Andre-Eugene Blondel, inventor of electromechanical oscillograph.

Blondel is an 8-bit oscilloscope with a bandwidth of 100 MHz and sample rates of 250, 500, and 1000 Msps. It also has a 12-bit option with a bandwidth of 50 MHz and sample rates of 125, 250, and 500 Msps. The oscilloscope features 4 AFE channels and has two acquisition cards, each with 4 channels. It is equipped with an XC7A100T-2FGG676 on the main board and a DDR3 800 SODIMM.

* 8 bit: 100 MHz / 250 - 500 - 1000 Msps 
* 12 bit: 50 MHz / 125 - 250 - 500 Msps
* 4 AFE : 1 HMCAD1520
* Two acquisition cards, 4 channels each
* One XC7A100T-2FGG676 on main board
* One DDR3 800 SODIMM on main board

## DUDDELL
Named after William Duddell, inventor of moving-coil mirror oscillograph.

Duddell is a 250 MHz oscilloscope with a 1 Gsps sample rate and 1 AFE channel. It has an XC7K160T-2FFG676 and eight analog cards, each with one HMCAD1520 and one AFE. It also has a digital card with 1-2 SFF-8087 connectors for LA and an AWG card with a JESD204 DAC using unused serdes lanes.

* 250 MHz / 1 Gsps, 
* 1 AFE : 1 HMCAD1520
* 1x XC7K160T-2FFG676
* Eight analog cards, one HMCAD1520 + one AFE each
* One digital card with 1-2 SFF-8087 connectors for LA
* One AWG card with a TBD JESD204 DAC using unused SERDES lanes (assuming 4 for 40G, one for 10G, three available)

## ZENNECK
Named after Jonathan Zenneck, inventor of electrically scanned CRT oscilloscope.

Zenneck is a 500 MHz or 1 GHz oscilloscope with a 5 Gsps sample rate and 1 AFE channel. It has a per-channel configuration of an XC7A200T-2FFG1156, an AD9213 in a 6G speed grade, and 2 DDR3 800 SODIMM. The global configuration includes an XC7K160T-2FFG160T.

* 500 MHz or 1 GHz / 5 Gsps
* 1 AFE : 1 AD9213-6G

Per channel:
  * 1x XC7A200T-2FFG1156
  * 1x AD9213 in 6G speed grade
  * 2x DDR3 800 SODIMM

Global:
  * 1x XC7K160T-2FFG160T (could do six channels with direct lane to each one)

## VOLLUM 
Named after Howard Vollum, co-inventor of triggered-sweep oscilloscope.

Vollum is a 1-2 GHz oscilloscope with a 10 Gsps sample rate and one AFE.

* 1-2 GHz / 10 Gsps
* 1 AFE : 1 AD9213

## MURDOCK 
Named after Melvin Jack Murdock, co-inventor of triggered-sweep oscilloscope.

Murdock is a 6 GHz oscilloscope with a 40 Gsps sample rate and four AFE.

* 6 GHz / 40 Gsps
* 1 AFE : 4 AD9213


# Probes / Peripherals
This section of the repository contains information on probes and peripherals for electrical engineering projects. These devices include logic analyzer pods with 8-bit comparator-to-LVDS technology and SFF-8087 interfaces, a low-bandwidth active probe with an ADA4817-1ACPZ-R7 chip, and a passive probe model AKL-PT1. These probes and peripherals offer a variety of capabilities for electrical engineering projects.

## CONWAY 
Named after VLSI pioneer Carver Mead.

*   8*bit comparator*to*LVDS logic analyzer pod with SFF*8087 interface and high*impedance inputs

## MEAD 
Named after other half of Mead & Conway.

*   8*bit comparator*to*LVDS logic analyzer pod with SFF*8087 interface and 50 ohm inputs

## MAXWELL 
Named after James Clerk Maxwell, discovered Maxwell's Equations.

*   Kintex*7 ISERDESE2 based LA

## DENNARD 
Named after Robert Dennard, inventor of DRAM.

*   Kintex*7 GTX based LA

## BRAUN 
Named after Karl Ferdinand Braun, inventor of optically scanned CRT oscilloscope and phased array.

*   Low*bandwidth active probe
*   ADA4817*1ACPZ*R7

## HALL 
Named after Edwin Herbert Hall who discovered Hall effect.

*   AKL*PT1 passive probe

## Signal Generators

### FLEMING
The signal generator in this repository is named after John Ambrose Fleming, the inventor of the vacuum tube. It is a 4-channel device with 14-bit resolution and a sample rate of 2.5 Gsps, capable of generating arbitrary waveforms. It is based on the AD9739 chip, implemented on a Kintex-7 FPGA and utilizing a DDR3 SODIMM for high-speed data storage. Each channel has 14-bit LVDS, 4 wire SPI, and an IRQ. The global configuration includes 4 DACs, 84 pairs of pins, and 15 slow lines. The signal generator requires a high amount of RAM bandwidth, approximately 160 Gbps, to operate efficiently. It also has digital outputs in the form of LVDS and LVCMOS connections and may have additional slow pin headers.

* 4 channel 14 bit 2.5 Gsps arbitrary waveform generator
* AD9739 + Kintex*7 + DDR3 SODIMM based
* Requires ~160 Gbps of RAM bandwidth to keep them fed

Per channel:

* 14*bit LVDS
* 4 wire SPI
* IRQ

Global:

* 4x DAC
* 84 pairs (168 pins used / 4 banks / 200 allocated)
* 15 slow lines
* Two xc7k160t's
* Two dacs + 1 SODIMM of ram on each
* 4GB DDR3 SODIMM
* 1 GB per channel = 512 Mpoints of waveform data
* Digital outputs (mix of LVDS and LVCMOS, and maybe some slow pin headers?)-   Digital outputs (mix of LVDS and LVCMOS, and maybe some slow pin headers?)