EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 18
Title "MAXWELL Main Board"
Date "2020-06-20"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1200 1100 0    50   ~ 0
Input is 24V @ 4A or 48V @ 8A.\nUse 10A fuse to provide some headroom\nSupply recommends more like 20 for inrush though?
$Comp
L power-azonenberg:VES180_MINIFITJR J?
U 1 1 611CD68D
P 1550 2250
AR Path="/5EDD7150/611CD68D" Ref="J?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD68D" Ref="J24"  Part="1" 
F 0 "J24" H 1667 3325 50  0000 C CNN
F 1 "VES180_MINIFITJR" H 1667 3234 50  0000 C CNN
F 2 "" H 1550 2250 50  0001 C CNN
F 3 "" H 1550 2250 50  0001 C CNN
	1    1550 2250
	-1   0    0    -1  
$EndComp
Text Label 1650 1600 0    50   ~ 0
VIN
Wire Wire Line
	1650 1400 1650 1500
Connection ~ 1650 1500
Wire Wire Line
	1650 1500 1650 1600
Connection ~ 1650 1600
Wire Wire Line
	1650 1600 1650 1700
$Comp
L power-azonenberg:FUSE_PWROUT F?
U 1 1 611CD699
P 2350 1600
AR Path="/5EDD7150/611CD699" Ref="F?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD699" Ref="F13"  Part="1" 
F 0 "F13" H 2350 1840 50  0000 C CNN
F 1 "10A" H 2350 1749 50  0000 C CNN
F 2 "" H 2350 1600 60  0000 C CNN
F 3 "" H 2350 1600 60  0000 C CNN
	1    2350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1600 2100 1600
Text Label 2600 1600 0    50   ~ 0
VIN_FUSED
$Comp
L passive-azonenberg:BNX003-11 FL?
U 1 1 611CD6A1
P 3200 1950
AR Path="/5EDD7150/611CD6A1" Ref="FL?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD6A1" Ref="FL1"  Part="1" 
F 0 "FL1" H 3650 2525 50  0000 C CNN
F 1 "BNX003-11" H 3650 2434 50  0000 C CNN
F 2 "" H 3200 1950 50  0001 C CNN
F 3 "" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1600 2600 1600
Text Label 1650 1900 0    50   ~ 0
GND_IN
Wire Wire Line
	1650 2200 1650 2100
Connection ~ 1650 2000
Wire Wire Line
	1650 2000 1650 1900
Connection ~ 1650 2100
Wire Wire Line
	1650 2100 1650 2000
Wire Wire Line
	1650 1900 3100 1900
Connection ~ 1650 1900
Text Label 4200 1600 0    50   ~ 0
VIN_FILT
Text HLabel 4200 1900 2    50   Output ~ 0
GND
Text HLabel 6900 1600 2    50   Output ~ 0
12V0
$Comp
L power-azonenberg:E36SC12009NRFA U52
U 1 1 611D31C4
P 5350 2050
F 0 "U52" H 5825 2725 50  0000 C CNN
F 1 "E36SC12009NRFA" H 5825 2634 50  0000 C CNN
F 2 "" H 5350 2050 50  0001 C CNN
F 3 "" H 5350 2050 50  0001 C CNN
	1    5350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1600 4550 1600
Text Label 5250 1700 2    50   ~ 0
GND
Text Label 6400 2000 0    50   ~ 0
GND
Wire Wire Line
	6400 1600 6400 1700
Wire Wire Line
	6400 1900 6400 2000
Text Notes 5350 1200 0    50   ~ 0
Expected efficiency @ 48V in is ~~93%.\nAssuming 7.3A load, we'll dissipate a bit under 7W in this module.\nOvercurrent shutdown at around 11A
Text Label 4550 2000 0    50   ~ 0
GND
NoConn ~ 5250 1900
$Comp
L device:CP1 C106
U 1 1 611F0163
P 4550 1750
F 0 "C106" H 4665 1796 50  0000 L CNN
F 1 "100 uF 63V" H 4665 1705 50  0000 L CNN
F 2 "" H 4550 1750 50  0001 C CNN
F 3 "" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
Connection ~ 4550 1600
Wire Wire Line
	4550 1600 5250 1600
Wire Wire Line
	4550 1900 4550 2000
Text Notes 4500 2650 0    50   ~ 0
Hard power switch (back side)
$Comp
L Switch:SW_SPST SW2
U 1 1 61205A23
P 4700 2500
F 0 "SW2" H 4700 2735 50  0000 C CNN
F 1 "SW_SPST" H 4700 2644 50  0000 C CNN
F 2 "" H 4700 2500 50  0001 C CNN
F 3 "" H 4700 2500 50  0001 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
Text Label 4500 2500 2    50   ~ 0
GND
Text Label 5250 2500 0    50   ~ 0
12V0_ON_N
Wire Wire Line
	5250 2500 4900 2500
Wire Wire Line
	5250 2500 5250 2000
$Comp
L device:CP1 C282
U 1 1 61210D30
P 6900 1750
F 0 "C282" H 7015 1796 50  0000 L CNN
F 1 "100 uF 25V" H 7015 1705 50  0000 L CNN
F 2 "" H 6900 1750 50  0001 C CNN
F 3 "" H 6900 1750 50  0001 C CNN
	1    6900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1600 6400 1600
Connection ~ 6400 1600
Wire Wire Line
	6400 1900 6900 1900
Connection ~ 6400 1900
Text Notes 1600 3150 0    50   ~ 0
5V standby rail is just used to drive enable lines for DC-DC's\nDoesn't need high current
$Comp
L power-azonenberg:MCP1755S-DFN U?
U 1 1 61463D9C
P 2150 3700
AR Path="/5EDD7150/61463D9C" Ref="U?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61463D9C" Ref="U56"  Part="1" 
F 0 "U56" H 2425 4175 50  0000 C CNN
F 1 "MCP1755S-DFN" H 2425 4084 50  0000 C CNN
F 2 "" H 2150 3700 50  0001 C CNN
F 3 "" H 2150 3700 50  0001 C CNN
	1    2150 3700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 61463DA2
P 1300 3600
AR Path="/5EDD7150/61463DA2" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61463DA2" Ref="C323"  Part="1" 
F 0 "C323" H 1415 3646 50  0000 L CNN
F 1 "4.7 uF 25V" H 1415 3555 50  0000 L CNN
F 2 "" H 1338 3450 50  0001 C CNN
F 3 "" H 1300 3600 50  0001 C CNN
	1    1300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3750 1950 3650
Connection ~ 1950 3650
Wire Wire Line
	1950 3650 1950 3550
Wire Wire Line
	1300 3450 1950 3450
Wire Wire Line
	1300 3750 1950 3750
$Comp
L device:C C?
U 1 1 61463DAD
P 2900 3600
AR Path="/5EDD7150/61463DAD" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61463DAD" Ref="C324"  Part="1" 
F 0 "C324" H 3015 3646 50  0000 L CNN
F 1 "1 uF" H 3015 3555 50  0000 L CNN
F 2 "" H 2938 3450 50  0001 C CNN
F 3 "" H 2900 3600 50  0001 C CNN
	1    2900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3450 2900 3450
Connection ~ 2900 3450
Text Label 1300 3750 2    50   ~ 0
GND
Connection ~ 1950 3750
Wire Wire Line
	2900 3750 1950 3750
Text Label 1300 3450 2    50   ~ 0
12V0
Text HLabel 3250 3450 2    50   Output ~ 0
5V0_SB
Text HLabel 3250 4250 2    50   Output ~ 0
3V3_SB
$EndSCHEMATC
