EESchema Schematic File Version 3
LIBS:analog-azonenberg
LIBS:cmos
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:silego-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:conn
LIBS:device
LIBS:diffprobe-calibrated-prototype-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 4
Title "500 MHz Active Differential Probe"
Date "2017-12-19"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 "Top Level"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3000 800  1400 1100
U 5A1F7AED
F0 "Signal Path" 60
F1 "sigpath.sch" 60
F2 "5V0_P" I R 4400 1100 60 
F3 "5V0_N" I R 4400 1200 60 
F4 "GND" I R 4400 1400 60 
F5 "3V3" I R 4400 1300 60 
F6 "SPI_CS_N" I L 3000 900 60 
F7 "SPI_SCK" I L 3000 1000 60 
F8 "SPI_MOSI" I L 3000 1100 60 
F9 "SPI_MISO" O L 3000 1200 60 
F10 "12V0_P" I R 4400 900 60 
F11 "RELAY1_DIR" I L 3000 1400 60 
F12 "RELAY1_EN" I L 3000 1500 60 
F13 "RELAY2_DIR" I L 3000 1700 60 
F14 "RELAY2_EN" I L 3000 1800 60 
$EndSheet
$Sheet
S 4950 800  950  1100
U 5A1F893C
F0 "Power Supply" 60
F1 "psu.sch" 60
F2 "5V0_P" O L 4950 1100 60 
F3 "5V0_N" O L 4950 1200 60 
F4 "GND" O L 4950 1400 60 
F5 "3V3" O L 4950 1300 60 
F6 "12V0_P" O L 4950 900 60 
$EndSheet
$Sheet
S 1600 800  1000 1100
U 5A1F893F
F0 "Microcontroller" 60
F1 "mcu.sch" 60
F2 "3V3" I L 1600 900 60 
F3 "GND" I L 1600 1000 60 
F4 "SPI_CS_N" O R 2600 900 60 
F5 "SPI_MOSI" O R 2600 1100 60 
F6 "SPI_SCK" O R 2600 1000 60 
F7 "SPI_MISO" I R 2600 1200 60 
F8 "RELAY1_DIR" O R 2600 1400 60 
F9 "RELAY1_EN" O R 2600 1500 60 
F10 "RELAY2_DIR" O R 2600 1700 60 
F11 "RELAY2_EN" O R 2600 1800 60 
$EndSheet
Wire Wire Line
	4400 900  4950 900 
Wire Wire Line
	4950 1100 4400 1100
Wire Wire Line
	4400 1200 4950 1200
Wire Wire Line
	4950 1300 4400 1300
Wire Wire Line
	4400 1400 4950 1400
Wire Wire Line
	2600 900  3000 900 
Wire Wire Line
	3000 1000 2600 1000
Wire Wire Line
	2600 1100 3000 1100
Wire Wire Line
	3000 1200 2600 1200
Wire Wire Line
	2600 1400 3000 1400
Wire Wire Line
	3000 1500 2600 1500
Wire Wire Line
	2600 1700 3000 1700
Wire Wire Line
	3000 1800 2600 1800
Text Label 1400 900  2    60   ~ 0
3V3
Wire Wire Line
	1400 900  1600 900 
Text Label 1400 1000 2    60   ~ 0
GND
Wire Wire Line
	1400 1000 1600 1000
Text Label 4800 1300 2    60   ~ 0
3V3
Text Label 4800 1400 2    60   ~ 0
GND
$EndSCHEMATC
