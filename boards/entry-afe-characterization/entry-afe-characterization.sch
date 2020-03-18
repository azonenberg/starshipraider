EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-17"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Top Level"
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 800  3000 1000 1750
U 5E704852
F0 "Power Supply" 50
F1 "psu.sch" 50
F2 "0V5_REF" O R 1800 4200 50 
F3 "N0V5_REF" O R 1800 4300 50 
$EndSheet
$Sheet
S 850  5600 650  1750
U 5E704937
F0 "DAC" 50
F1 "dac.sch" 50
$EndSheet
Text Notes 6350 3850 0    50   ~ 0
SYSTEM GAIN CALCULATIONS\n\nHMCAD1520 wants 2V full scale\nIn 12-bit mode: 488 µV/LSB @ 0 dB gain\nIn 8-bit mode: 7.8 mV/LSB @ 0 dB gain\n\nMIN GAIN:\n10V input range, -13 dB system gain (0.2V/V)\n-9 dB gain on VGA\n12 bit mode: 2.4 mV/LSB\n8 bit mode: 39 mV/LSB\n\nMAX GAIN:\n159 mV input range, +22 dB system gain (12.59V/V)\n+26 dB gain on VGA\n12 bit mode: 38.7 µV/LSB\n8 bit mode: 619.5 µV/LSB
$Sheet
S 3900 5500 650  1750
U 5E72E351
F0 "MCU" 50
F1 "mcu.sch" 50
$EndSheet
$Sheet
S 900  650  1100 900 
U 5E7383DD
F0 "Input" 50
F1 "input.sch" 50
F2 "GND" I L 900 1050 50 
F3 "VIN_FILTERED" O R 2000 750 50 
F4 "VIN_EN" I L 900 1450 50 
F5 "5V0_P" I L 900 850 50 
F6 "5V0_N" I L 900 1250 50 
F7 "12V0" I L 900 750 50 
F8 "0V5_REF" I L 900 950 50 
F9 "N0V5_REF" I L 900 1150 50 
$EndSheet
Text Label 900  1050 2    50   ~ 0
GND
$Sheet
S 2600 650  1200 900 
U 5E73DF00
F0 "Offset Stage" 50
F1 "offset.sch" 50
F2 "VIN_FILTERED" I L 2600 750 50 
F3 "VIN_OFFSET" I L 2600 850 50 
F4 "VSHIFTED_P" O R 3800 750 50 
F5 "VSHIFTED_N" O R 3800 850 50 
F6 "GND" I L 2600 1350 50 
F7 "2V5_REF" I L 2600 1250 50 
F8 "6V0_P" I L 2600 1050 50 
F9 "6V0_N" I L 2600 1150 50 
$EndSheet
Text Label 2600 850  2    50   ~ 0
VIN_OFFSET
Wire Wire Line
	2000 750  2600 750 
Text Label 2600 1350 2    50   ~ 0
GND
Text Label 2600 1250 2    50   ~ 0
2V5_REF
$Sheet
S 4500 650  1150 950 
U 5E743C43
F0 "Gain Stage" 50
F1 "gainstage.sch" 50
F2 "GAIN_PWRUP" I L 4500 1050 50 
F3 "VSHIFTED_P" I L 4500 750 50 
F4 "VSHIFTED_N" I L 4500 850 50 
F5 "VGAIN_P" O R 5650 750 50 
F6 "VGAIN_N" O R 5650 850 50 
F7 "2V5_REF" I L 4500 1150 50 
$EndSheet
Wire Wire Line
	4500 750  3800 750 
Wire Wire Line
	3800 850  4500 850 
Text Label 4500 1050 2    50   ~ 0
GAIN_PWRUP
Text Label 5150 5600 2    50   ~ 0
GAIN_PWRUP
Text Label 1850 5950 2    50   ~ 0
VIN_OFFSET
Text Label 2150 3050 2    50   ~ 0
5V0_P
Text Label 2150 3150 2    50   ~ 0
5V0_N
Text Label 2150 3350 2    50   ~ 0
GND
Text Label 2150 3250 2    50   ~ 0
2V5_REF
Text Notes 900  2050 0    50   ~ 0
VIN_FILTERED\n± 2.5V range\nNet gain = 0.5 V/V (-6 dB)
Text Notes 2600 2050 0    50   ~ 0
VSHIFTED\n0-5V range, 2.5V CM\nNet gain = 0.5V/V (-6 dB)\nVIN_OFFSET is ± 2.5V range
Text Notes 4500 2050 0    50   ~ 0
VGAIN\n2.5V CM\nNet gain = 0.177 - 10 V/V\n-15 to +20 dB
Text Label 4500 1150 2    50   ~ 0
2V5_REF
$Sheet
S 6350 650  950  950 
U 5E75B917
F0 "Common mode shift" 50
F1 "cm_shift.sch" 50
F2 "VGAIN_P" I L 6350 750 50 
F3 "VGAIN_N" I L 6350 850 50 
F4 "GND" I L 6350 1150 50 
F5 "VOUT_P" O R 7300 750 50 
F6 "VOUT_N" O R 7300 850 50 
F7 "0V9_REF" I L 6350 1050 50 
$EndSheet
Wire Wire Line
	6350 750  5650 750 
Wire Wire Line
	5650 850  6350 850 
Text Label 6350 1150 2    50   ~ 0
GND
Text Notes 6350 2050 0    50   ~ 0
VOUT\n900 mV CM\nNet gain = 0.223 - 12.59 V/V\n-13 to +22 dB
Text Label 6350 1050 2    50   ~ 0
0V9_REF
Text Label 2600 1050 2    50   ~ 0
6V0_P
Text Label 2600 1150 2    50   ~ 0
6V0_N
Text Label 2150 3450 2    50   ~ 0
6V0_P
Text Label 2150 3550 2    50   ~ 0
6V0_N
Text Label 2150 3650 2    50   ~ 0
0V9_REF
Text Label 5150 5500 2    50   ~ 0
VIN_EN
Text Label 900  1450 2    50   ~ 0
VIN_EN
Text Label 900  850  2    50   ~ 0
5V0_P
Text Label 900  1250 2    50   ~ 0
5V0_N
Text Label 900  750  2    50   ~ 0
12V0
Text Label 2150 3750 2    50   ~ 0
12V0
Text Label 2150 3950 2    50   ~ 0
0V5_REF
Text Label 900  1150 2    50   ~ 0
N0V5_REF
Text Label 900  950  2    50   ~ 0
0V5_REF
$EndSCHEMATC
