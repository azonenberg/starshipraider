# Schematic review checklist

## General

* [x] CAD ERC 100% clean. If some errors are invalid due to toolchain quirks, each exception must be inspected and signed
off as invalid.
* [x] Verify pin numbers of all schematic symbols against datasheet or external interface specification document (if not yet board proven).
* [x] Schematic symbol matches chosen component package
* [x] Thermal pads are connected to correct power rail (may not always be ground)
* [x] Debug interfaces are not power gated in sleep mode

## Passive components
* [x] Power/voltage/tolerance ratings specified as required
* [x] Ceramic capacitors appropriately de-rated for C/V curve
* [x] Polarized components specified in schematic if using electrolytic caps etc

## Power supply

### System power input

* [x] Fusing and/or reverse voltage protection at system power inlet
* [x] Check total input capacitance and add inrush limiter if needed

### Regulators

* [x] Under/overvoltage protection configured correctly if used
* [x] Verify estimated power usage per rail against regulator rating
* [x] Current-sense resistors on power rails after regulator output caps, not in switching loop
* [x] Remote sense used on low voltage or high current rails
* [x] Linear regulators are stable with selected output cap ESR
* [x] Confirm power rail sequencing against device datasheets

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
* [x] Pullups on all open-drain outputs
* [x] Pulldowns on all PECL outputs
* [x] Termination on all high-speed signals
* [x] AC coupling caps on gigabit transceivers
* [x] TX/RX paired correctly for UART, SPI, MGT, etc
* [x] Differential pair polarity / pairing correct
* [x] Active high/low enable signal polarity correct
* [x] I/O banking rules met on FPGAs etc

### Analog

* [x] RC time constant for attenuators sane given ADC sampling frequency
* [x] Verify frequency response of RF components across entire operating range. Don't assume a "1-100 MHz" amplifier has the
same gain across the whole range.
* [x] Verify polarity of op-amp feedback

### Clocks

* [x] All oscillators meet required jitter / frequency tolerance. Be extra cautious with MEMS oscillators as these tend to have higher jitter.
* [x] Correct load caps provided for discrete crystals
* [x] Crystals only used if IC has an integrated crystal driver
* [x] Banking / clock capable input rules met for clocks going to FPGAs

### Strap/init pins
* [x] Pullup/pulldowns on all signals that need defined state at boot
* [x] Strap pins connected to correct rail for desired state
* [x] JTAG/ICSP connector provided for all programmable devices
* [x] Config/boot flash provided for all FPGAs or MPUs without internal flash
* [x] Reference resistors correct value and reference rail

### External interface protection

* [x] Power outputs (USB etc) current limited
* [x] ESD protection on data lines going off board

### Debugging / reworkability

* [x] Use 0-ohm resistors vs direct hard-wiring for strap pins when possible
* [x] Provide multiple ground clips/points for scope probes
* [x] Dedicated ground in close proximity to analog test points
* [x] Test points on all power rails
* [x] Test points on interesting signals which may need probing for bringup/debug

## Thermal

* [x] Power estimates for all large / high power ICs
* [x] Thermal calculations for all large / high power ICs
* [x] Specify heatsinks as needed

