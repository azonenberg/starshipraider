# Schematic review checklist

## General

* [x] CAD ERC 100% clean. If some errors are invalid due to toolchain quirks, each exception must be inspected and signed
off as invalid.
    * FL1.4 - U52.4: using isolated DC-DC as non-isolated so connecting both grounds
    * U1 C1: VBAT is driven by a Schottky and resistor, not a PSU directly
* [x] Verify pin numbers of all schematic symbols against datasheet or external interface specification document (if not yet board proven).
    * [x] ADCMP582
    * [x] BNX003-11
    * [x] CONN_QSFP_HOST
    * [x] DDR3_SODIMM
        [x] Power
        [x] DQ
        [x] Control / address
    * [x] E36SC12009NRFA
    * [x] ESD7008
    * [x] IAF12020A007V-003-R
    * [x] INA233
    * [x] LM27761
    * [x] LMK04806B
    * [x] MCP1755S
    * [x] NCP4225IMNTWG-H
    * [x] OSC_LVDS_VCXO
    * [x] RCLAMP0542T
    * [x] MIC2605
    * [x] MOP-TFT480116-38G-BLH-TPC_HM
    * [x] RPM5.0-2.0
    * [x] RT9088A
    * [x] SY56017RMG
    * [x] SY89835U
    * [x] TSCR421
    * [x] VES180_MINIFITJR
    * [x] XC7KxT-FFG676
        * [x] Ground
        * [x] Power
        * [x] Config
        * [x] Bank 12
        * [x] Bank 13
        * [x] Bank 14
        * [x] Bank 15
        * [x] Bank 16
        * [x] Bank 32
        * [x] Bank 33
        * [x] Bank 34
        * [x] Bank 115
        * [x] Bank 116
    * [x] XC7Sx-FTGB196
        * [x] Power/ground
        * [x] Config
        * [x] Bank 14
        * [x] Bank 34
* [x] Schematic symbol matches chosen component package
* [x] Thermal pads are connected to correct power rail (may not always be ground)
    * NCP45525: pad is Vin
    * S25FL128: pad is not mentioned in datasheet at all, assuming it's NC
    * SY56017R: pad is ground
    * KSZ9031: pad is ground
    * AT24MAC402: pad is not mentioned in datasheet at all, assuming it's NC
    * SY89835: pad is ground
    * LMH7322: pad is Vee
    * ADCMP582: pad is NC
    * MCP1755: pad is ground
    * RT9088: pad is not internally connected but should be soldered to ground for heatsinking
    * MIC2605: pad is "for thermal cooling", no electrical functionality mentioned.\
    Connecting to ground plane for heatsinking.
    * LM27761: pad is ground
    * AT30TS74: pad is not mentioned in datasheet at all, assuming it's NC
* [x] Debug interfaces are not power gated in sleep mode
    * FPGAs are completely shut down when in soft powerdown
    * STM32 JTAG runs in 3V3_SB power domain

## Passive components
* [x] Power/voltage/tolerance ratings specified as required
* [x] Ceramic capacitors appropriately de-rated for C/V curve
* [x] Polarized components specified in schematic if using electrolytic caps etc

## Power supply

### System power input

* [x] Fusing and/or reverse voltage protection at system power inlet
* [x] Check total input capacitance and add inrush limiter if needed
    * VIN: 100 uF plus U52, 1 A2S. Fuse is rated for 15
    * 12V0: 788.9 uF, supply is rated for 2000

### Regulators

* [x] Under/overvoltage protection configured correctly if used
* [x] Verify estimated power usage per rail against regulator rating
* [x] Current-sense resistors on power rails after regulator output caps, not in switching loop
* [x] Remote sense used on low voltage or high current rails
* [x] Linear regulators and voltage reference ICs are stable with selected output cap ESR
* [x] Confirm power rail sequencing against device datasheets
    * During standby, 12V0, 5V0_SB, and 3V3_SB are only active rails
    * Everything else is switched on command from the STM32

### Decoupling
* [x] Decoupling present for all ICs
* [x] Decoupling meets/exceeds vendor recommendations if specified
* [x] Bulk decoupling present at PSU

### General
* [x] All power inputs fed by correct voltage
* [x] Check high-power discrete semiconductors and passives to confirm they can handle expected load
* [x] Analog rails filtered/isolated from digital circuitry as needed

## Signals

### Digital

* [x] Signals are correct logic level for input pin
    * NCP45525 is 2V Vih, fed by LVCMOS33
    * ADCMP582 is VCCO-0.94 to VCCO-1.33V, so 390 mV single ended swing / 780 mV differential
    * SY56017 needs 200 mV single / 400 mV differential swing
    * SY56017 has 390 mV single ended / 780 mV differential output swing below 1.2V VCCO.\
    This is 1.0V common mode
    * GTX needs 150 mV differential, ideal 720 mV common mode (no range specified though). Terminate to AVTT
    * LVDS inputs need 100 mV differential, 0.3 - 1.5V common mode
    * iAF12020 is 4.2V Vih, LVCMOS33 won't work. Use 5V NMOS level shifter
    * RT9088 is 1.7V Vih
    * OKL-T/3 is 3.5V Vih, need to level shift
    * LM27761 is 1.2V Vih
    * RPM5.0 is 0.9V Vih
    * MIC2605 is 1.5V Vih
    * TSCR421 is weird and analog between 1-2V, but fully on after around 2V
    * Everything else has same VCC on both ends of the link
* [x] Pullups on all open-drain outputs
    [x] QSFP status lines
    [x] Pod present
    [x] Power rail PGOOD pins (using on die MCU pullups)
    [x] I2C1
    [x] I2C2
    [x] I2C3
    [x] I2C4
* [ ] Pulldowns on all PECL outputs
* [ ] Termination on all high-speed signals
* [ ] AC coupling caps on gigabit transceivers
* [ ] TX/RX paired correctly for UART, SPI, MGT, etc
    * SPI buses all go to FPGA pins, freely reassignable
    * MCU UART goes to FPGA pins
* [ ] Differential pair polarity / pairing correct
* [ ] Active high/low enable signal polarity correct
* [ ] I/O banking rules met on FPGAs etc

### Analog

* [x] RC time constant for attenuators sane given ADC sampling frequency
* [x] Verify frequency response of RF components across entire operating range. Don't assume a "1-100 MHz" amplifier has the
same gain across the whole range.
* [x] Verify polarity of op-amp feedback

### Clocks

* [x] All oscillators meet required jitter / frequency tolerance. Be extra cautious with MEMS oscillators as these tend to have higher jitter.
* [ ] Correct load caps provided for discrete crystals
* [x] Crystals only used if IC has an integrated crystal driver
* [ ] Banking / clock capable input rules met for clocks going to FPGAs

### Strap/init pins
* [ ] Pullup/pulldowns on all signals that need defined state at boot
* [ ] Strap pins connected to correct rail for desired state
* [x] JTAG/ICSP connector provided for all programmable devices
* [x] Config/boot flash provided for all FPGAs or MPUs without internal flash
* [ ] Reference resistors correct value and reference rail

### External interface protection

* [ ] Power outputs (USB etc) current limited
* [ ] ESD protection on data lines going off board

### Debugging / reworkability

* [ ] Use 0-ohm resistors vs direct hard-wiring for strap pins when possible
* [ ] Provide multiple ground clips/points for scope probes
* [ ] Dedicated ground in close proximity to analog test points
* [ ] Test points on all power rails
* [ ] Test points on interesting signals which may need probing for bringup/debug

## Thermal

* [x] Power estimates for all large / high power ICs
    * DCDC modules are within operating limits, so should be fine
    * RAM could be up to 8W instantaneous, likely not sustained
    * Big FPGA is ~11W dissipation
    * Small FPGA is barely going to get warm
    * STM32 is 1W
    * QSFP+ is 3W max
    * PLL is 2W
    * Everything else should be <1W per chip
* [x] Thermal calculations for all large / high power ICs
    * Not much we can do for RAM or DCDCs
    * FPGA is 11.7C/W so 129C rise with no heatsink!!
    * STM32 is 29C/W so max 29C rise, should be OK
    * No good data for QSFP+ but 3W over a fairly large area shoooould be ok? Not a dense array of them
    * PLL is 25.2C/W Ja, 6.9 Jc. 50W rise with no heatsink is borderline
* [x] Specify heatsinks as needed
    * FPGA needs heatsink for sure. Wakefield 658-60ABT3 is 2C/W @ 500LFM so total ~22C rise
    * Put one on PLL to be safe. Assmann V2016B should be good.

