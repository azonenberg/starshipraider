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
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "500 MHz Active Differential Probe"
Date "2017-11-30"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R?
U 1 1 5A1F7B04
P 1900 2200
F 0 "R?" H 1970 2246 50  0000 L CNN
F 1 "49.9" H 1970 2155 50  0000 L CNN
F 2 "" V 1830 2200 50  0000 C CNN
F 3 "" H 1900 2200 50  0000 C CNN
	1    1900 2200
	1    0    0    -1  
$EndComp
$Comp
L BNC P?
U 1 1 5A1F7B3B
P 1650 2350
F 0 "P?" H 1751 2234 50  0000 L CNN
F 1 "SMA" H 1751 2325 50  0000 L CNN
F 2 "" H 1650 2350 50  0000 C CNN
F 3 "" H 1650 2350 50  0000 C CNN
	1    1650 2350
	-1   0    0    1   
$EndComp
$Comp
L THS3217 U?
U 1 1 5A1F7B74
P 3650 3100
F 0 "U?" H 3625 5347 60  0000 C CNN
F 1 "THS3217" H 3625 5241 60  0000 C CNN
F 2 "" H 3650 3050 60  0001 C CNN
F 3 "" H 3650 3050 60  0001 C CNN
	1    3650 3100
	1    0    0    -1  
$EndComp
$Comp
L BNC P?
U 1 1 5A1F7C3D
P 1650 2600
F 0 "P?" H 1751 2576 50  0000 L CNN
F 1 "SMA" H 1751 2485 50  0000 L CNN
F 2 "" H 1650 2600 50  0000 C CNN
F 3 "" H 1650 2600 50  0000 C CNN
	1    1650 2600
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A1F7D30
P 1900 2750
F 0 "R?" H 1970 2796 50  0000 L CNN
F 1 "49.9" H 1970 2705 50  0000 L CNN
F 2 "" V 1830 2750 50  0000 C CNN
F 3 "" H 1900 2750 50  0000 C CNN
	1    1900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2350 2600 2350
Wire Wire Line
	1800 2600 1900 2600
Wire Wire Line
	1650 2150 1650 2050
Wire Wire Line
	1350 2050 1900 2050
Wire Wire Line
	1650 2800 1650 2900
Wire Wire Line
	1350 2900 1900 2900
Text Label 1350 2900 2    60   ~ 0
GND
Connection ~ 1650 2900
Text Label 1350 2050 2    60   ~ 0
GND
Connection ~ 1650 2050
Wire Wire Line
	2600 2350 2600 2400
Wire Wire Line
	2600 2400 2850 2400
Connection ~ 1900 2350
Wire Wire Line
	1900 2600 1900 2550
Wire Wire Line
	1900 2550 2600 2550
Wire Wire Line
	2600 2550 2600 2500
Wire Wire Line
	2600 2500 2850 2500
Text Label 2200 2350 0    60   ~ 0
VIN_P
Text Label 2200 2550 0    60   ~ 0
VIN_N
Wire Wire Line
	2700 1100 2850 1100
Wire Wire Line
	2750 1100 2750 1200
Wire Wire Line
	2750 1200 2850 1200
Connection ~ 2750 1100
Wire Wire Line
	2700 1300 2850 1300
Wire Wire Line
	2750 1300 2750 1400
Wire Wire Line
	2750 1400 2850 1400
Connection ~ 2750 1300
Wire Wire Line
	2700 1500 2850 1500
Wire Wire Line
	2850 1600 2750 1600
Wire Wire Line
	2750 1600 2750 1500
Connection ~ 2750 1500
Text Label 2350 1800 2    60   ~ 0
5V0_P
$Comp
L R R?
U 1 1 5A1F818B
P 2600 1800
F 0 "R?" V 2650 1650 50  0000 C CNN
F 1 "0" V 2600 1800 50  0000 C CNN
F 2 "" V 2530 1800 50  0000 C CNN
F 3 "" H 2600 1800 50  0000 C CNN
	1    2600 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 1800 2450 1800
Wire Wire Line
	2750 1800 2850 1800
$Comp
L R R?
U 1 1 5A1F8312
P 2600 1900
F 0 "R?" V 2650 1750 50  0000 C CNN
F 1 "0" V 2600 1900 50  0000 C CNN
F 2 "" V 2530 1900 50  0000 C CNN
F 3 "" H 2600 1900 50  0000 C CNN
	1    2600 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 1900 2850 1900
Wire Wire Line
	2450 1900 2400 1900
Wire Wire Line
	2400 1900 2400 1800
Connection ~ 2400 1800
Text Label 2700 3000 2    60   ~ 0
VOFFSET_BUF
Wire Wire Line
	2700 3000 2850 3000
Text Label 4500 2100 0    60   ~ 0
VOFFSET_BUF
Wire Wire Line
	4500 2100 4400 2100
NoConn ~ 4400 2800
NoConn ~ 2850 2800
NoConn ~ 2850 2900
Text Label 2850 2100 2    60   ~ 0
VOFFSET
Text Label 4500 2400 0    60   ~ 0
VOUT_RAW
Wire Wire Line
	4400 2400 7100 2400
$Comp
L BNC P?
U 1 1 5A1F85E9
P 9000 2400
F 0 "P?" H 9101 2376 50  0000 L CNN
F 1 "SMA" H 9101 2285 50  0000 L CNN
F 2 "" H 9000 2400 50  0000 C CNN
F 3 "" H 9000 2400 50  0000 C CNN
	1    9000 2400
	1    0    0    -1  
$EndComp
Text Notes 1000 7350 0    60   ~ 0
TODO: Decoupling for everything
Text Label 3250 7300 2    60   ~ 0
VOFFSET
$Comp
L HMC346AMS8GE U?
U 1 1 5A1FD030
P 7300 3100
F 0 "U?" H 7575 4047 60  0000 C CNN
F 1 "HMC346AMS8GE" H 7575 3941 60  0000 C CNN
F 2 "" H 7500 3100 60  0001 C CNN
F 3 "" H 7500 3100 60  0001 C CNN
	1    7300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2400 8850 2400
Text Label 8350 2400 0    60   ~ 0
VOUT
Text Label 8850 2600 2    60   ~ 0
GND
Wire Wire Line
	8850 2600 9000 2600
Text Label 6950 2950 2    60   ~ 0
GND
Wire Wire Line
	6950 2950 7100 2950
Wire Wire Line
	7000 2950 7000 3050
Wire Wire Line
	7000 3050 7100 3050
Connection ~ 7000 2950
$Comp
L AD8675 U?
U 1 1 5A1FD8B9
P 5300 3550
F 0 "U?" H 5700 4397 60  0000 C CNN
F 1 "AD8675" H 5700 4291 60  0000 C CNN
F 2 "" H 5300 3550 60  0001 C CNN
F 3 "" H 5300 3550 60  0001 C CNN
	1    5300 3550
	1    0    0    -1  
$EndComp
Text Label 4950 2950 2    60   ~ 0
5V0_P
Text HLabel 2700 1100 0    60   Input ~ 0
5V0_P
Text HLabel 2700 1500 0    60   Input ~ 0
5V0_N
Text HLabel 2700 1300 0    60   Input ~ 0
GND
Text Label 4950 3050 2    60   ~ 0
5V0_N
NoConn ~ 6300 2950
NoConn ~ 6300 3050
Wire Wire Line
	6300 3400 6700 3400
Wire Wire Line
	6700 3400 6700 2800
Wire Wire Line
	6700 2800 7100 2800
Text Label 6700 3400 0    60   ~ 0
ATTEN_V2
$Comp
L D D?
U 1 1 5A1FDC38
P 6550 2800
F 0 "D?" H 6450 2850 50  0000 C CNN
F 1 "1N4148" H 6500 2700 50  0000 C CNN
F 2 "" H 6550 2800 50  0000 C CNN
F 3 "" H 6550 2800 50  0000 C CNN
	1    6550 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2800 6350 2800
Wire Wire Line
	6350 2800 6350 2500
Wire Wire Line
	6350 2500 7100 2500
Text Label 6350 2500 0    60   ~ 0
ATTEN_REF
Text Label 4950 3450 2    60   ~ 0
ATTEN_REF
$Comp
L R R?
U 1 1 5A1FDE64
P 5050 3600
F 0 "R?" H 5120 3646 50  0000 L CNN
F 1 "3.9K" H 5120 3555 50  0000 L CNN
F 2 "" V 4980 3600 50  0000 C CNN
F 3 "" H 5050 3600 50  0000 C CNN
	1    5050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2950 5100 2950
Wire Wire Line
	5100 3050 4950 3050
Wire Wire Line
	4950 3450 5100 3450
Connection ~ 5050 3450
$Comp
L R R?
U 1 1 5A1FE1FD
P 5050 4000
F 0 "R?" H 5120 4046 50  0000 L CNN
F 1 "3.9K" H 5120 3955 50  0000 L CNN
F 2 "" V 4980 4000 50  0000 C CNN
F 3 "" H 5050 4000 50  0000 C CNN
	1    5050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3750 5050 3850
Text Label 4950 3800 2    60   ~ 0
5V0_N
Wire Wire Line
	4400 4150 5400 4150
Wire Wire Line
	4950 3800 5050 3800
Connection ~ 5050 3800
Wire Wire Line
	4400 3350 5100 3350
$Comp
L R R?
U 1 1 5A1FE4D8
P 5400 4000
F 0 "R?" H 5470 4046 50  0000 L CNN
F 1 "499" H 5470 3955 50  0000 L CNN
F 2 "" V 5330 4000 50  0000 C CNN
F 3 "" H 5400 4000 50  0000 C CNN
	1    5400 4000
	1    0    0    -1  
$EndComp
Text Label 5400 3800 0    60   ~ 0
GND
Wire Wire Line
	5400 3800 5400 3850
Connection ~ 5050 4150
Text Label 4950 3350 2    60   ~ 0
VATTEN_P
Wire Wire Line
	4400 3350 4400 4150
Text Label 7100 2700 2    60   ~ 0
VATTEN
Text Label 3250 7200 2    60   ~ 0
VATTEN
Text Notes 5900 4800 0    60   ~ 0
VOUT should not exceed 5V RMS to avoid damaging DSO\nVOUT_RAW should not exceed +18 dBm (1.776 Vrms / 5V p-p) AC voltage\nHMC346AMS doesn't specify max common mode voltage other than "should be about zero"\nWith 2V/V gain:\n* Input differential = 0.89 Vrms max (17.76V w/ 20x probes)\n* Input common mode = unspecified
$EndSCHEMATC
