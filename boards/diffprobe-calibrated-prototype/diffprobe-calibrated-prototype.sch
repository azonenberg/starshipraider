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
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 4
Title "500 MHz Active Differential Probe"
Date "2017-11-30"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 "Top Level"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2100 1300 1400 1050
U 5A1F7AED
F0 "Signal Path" 60
F1 "sigpath.sch" 60
$EndSheet
$Sheet
S 3950 1300 1450 1050
U 5A1F893C
F0 "Power Supply" 60
F1 "psu.sch" 60
F2 "5V0_P" O R 5400 1400 60 
F3 "5V0_N" O R 5400 1500 60 
F4 "GND" O R 5400 1700 60 
F5 "3V3" O R 5400 1600 60 
$EndSheet
$Sheet
S 6350 1300 1200 1050
U 5A1F893F
F0 "Microcontroller" 60
F1 "mcu.sch" 60
$EndSheet
$EndSCHEMATC
