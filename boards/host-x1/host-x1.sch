EESchema Schematic File Version 2
LIBS:host-x1-rescue
LIBS:conn
LIBS:device
LIBS:analog-azonenberg
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:switches
LIBS:host-x1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "STARSHIPRAIDER Single-Lane Host"
Date "2017-05-07"
Rev "0.1"
Comp "Andrew D. Zonenberg"
Comment1 "Top level"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 800  900  900  600 
U 590BFAA3
F0 "Power Supply" 60
F1 "power_supply.sch" 60
F2 "GND" O R 1700 1450 60 
F3 "1V0" O R 1700 1350 60 
F4 "1V2" O R 1700 1250 60 
F5 "1V8" O R 1700 1150 60 
F6 "3V3" O R 1700 1050 60 
F7 "5V0" O R 1700 950 60 
$EndSheet
$Sheet
S 2600 900  1050 1450
U 590BFAB4
F0 "RAM" 60
F1 "ram.sch" 60
F2 "1V8" I L 2600 950 60 
F3 "GND" I L 2600 1050 60 
$EndSheet
$Sheet
S 4400 900  1100 1450
U 590BFAC9
F0 "Line Card" 60
F1 "line_card.sch" 60
F2 "5V0" I L 4400 950 60 
F3 "3V3" I L 4400 1050 60 
F4 "GND" I L 4400 1150 60 
$EndSheet
$Sheet
S 6000 900  1100 1450
U 590BFAE6
F0 "FPGA support" 60
F1 "fpga_support.sch" 60
F2 "GND" I L 6000 1150 60 
F3 "1V8" I L 6000 1050 60 
F4 "FLASH_SCK" O R 7100 1050 60 
F5 "3V3" I L 6000 950 60 
$EndSheet
Text Label 1850 1150 0    60   ~ 0
1V8
Wire Wire Line
	1850 1150 1700 1150
Text Label 1850 950  0    60   ~ 0
5V0
Text Label 1850 1050 0    60   ~ 0
3V3
Text Label 1850 1250 0    60   ~ 0
1V2
Text Label 1850 1350 0    60   ~ 0
1V0
Text Label 1850 1450 0    60   ~ 0
GND
Text Label 2450 1050 2    60   ~ 0
GND
Text Label 2450 950  2    60   ~ 0
1V8
Wire Wire Line
	2450 950  2600 950 
Wire Wire Line
	2600 1050 2450 1050
Wire Wire Line
	1850 950  1700 950 
Wire Wire Line
	1700 1050 1850 1050
Wire Wire Line
	1850 1250 1700 1250
Wire Wire Line
	1700 1350 1850 1350
Wire Wire Line
	1850 1450 1700 1450
$Sheet
S 7850 900  1100 1450
U 590E8635
F0 "Flash / Ethernet" 60
F1 "flash_ethernet.sch" 60
F2 "FLASH_SCK" I L 7850 1050 60 
F3 "GND" I L 7850 1550 60 
F4 "1V8" I L 7850 1350 60 
F5 "3V3" I L 7850 1250 60 
F6 "1V2" I L 7850 1450 60 
$EndSheet
Text Label 4250 950  2    60   ~ 0
5V0
Wire Wire Line
	4250 950  4400 950 
Text Label 4250 1050 2    60   ~ 0
3V3
Wire Wire Line
	4250 1050 4400 1050
Text Label 4250 1150 2    60   ~ 0
GND
Wire Wire Line
	4250 1150 4400 1150
Text Label 5850 1150 2    60   ~ 0
GND
Wire Wire Line
	5850 1150 6000 1150
Text Label 7250 1050 0    60   ~ 0
FLASH_SCK
Wire Wire Line
	7100 1050 7850 1050
Text Label 5850 1050 2    60   ~ 0
1V8
Wire Wire Line
	5850 1050 6000 1050
Text Label 7700 1250 2    60   ~ 0
3V3
Wire Wire Line
	7700 1250 7850 1250
Text Label 7700 1350 2    60   ~ 0
1V8
Wire Wire Line
	7700 1350 7850 1350
Text Label 7700 1450 2    60   ~ 0
1V2
Wire Wire Line
	7700 1450 7850 1450
Text Label 7700 1550 2    60   ~ 0
GND
Wire Wire Line
	7700 1550 7850 1550
Text Label 5850 950  2    60   ~ 0
3V3
Wire Wire Line
	5850 950  6000 950 
$EndSCHEMATC
