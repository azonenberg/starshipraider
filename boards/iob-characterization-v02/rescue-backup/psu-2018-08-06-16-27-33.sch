EESchema Schematic File Version 2
LIBS:conn
LIBS:device
LIBS:analog-azonenberg
LIBS:cmos
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "STARSHIPRAIDER I/O Characterization"
Date "2017-05-18"
Rev "0.2"
Comp "Andrew Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1600 850  0    60   Input ~ 0
12V0
Text HLabel 1600 950  0    60   Input ~ 0
5V0
Text HLabel 1600 1050 0    60   Input ~ 0
GND
Text HLabel 1600 1400 0    60   Input ~ 0
I2C_SDA
Text HLabel 1600 1500 0    60   Input ~ 0
I2C_SCL
Text Notes 1400 6650 0    60   ~ 0
I2C to host is 3.3V, shift it to 5V
Text HLabel 5050 1000 0    60   Output ~ 0
VCCO_HI
Text HLabel 5050 1100 0    60   Output ~ 0
VCLIP_HI
Text HLabel 5050 1200 0    60   Output ~ 0
VCLIP_LO
Text HLabel 5050 1350 0    60   Output ~ 0
2V5
Text HLabel 5050 900  0    60   Output ~ 0
VCCO_LO
$Comp
L SIP32408 U11
U 1 1 591F646E
P 7100 2250
F 0 "U11" H 7400 3047 60  0000 C CNN
F 1 "SIP32408" H 7400 2941 60  0000 C CNN
F 2 "" H 7100 2250 60  0000 C CNN
F 3 "" H 7100 2250 60  0000 C CNN
	1    7100 2250
	1    0    0    -1  
$EndComp
$Comp
L SIP32408 U12
U 1 1 591F64B0
P 7100 3300
F 0 "U12" H 7400 4097 60  0000 C CNN
F 1 "SIP32408" H 7400 3991 60  0000 C CNN
F 2 "" H 7100 3300 60  0000 C CNN
F 3 "" H 7100 3300 60  0000 C CNN
	1    7100 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
