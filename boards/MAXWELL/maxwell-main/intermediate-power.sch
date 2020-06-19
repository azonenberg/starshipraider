EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 16
Title "MAXWELL Main Board"
Date "2020-06-19"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2900 2850 0    50   ~ 0
Input is 24V @ 4A or 48V @ 8A.\nUse 10A fuse to provide some headroom\nSupply recommends more like 20 for inrush though?
$Comp
L power-azonenberg:VES180_MINIFITJR J?
U 1 1 611CD68D
P 3250 4000
AR Path="/5EDD7150/611CD68D" Ref="J?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD68D" Ref="J24"  Part="1" 
F 0 "J24" H 3367 5075 50  0000 C CNN
F 1 "VES180_MINIFITJR" H 3367 4984 50  0000 C CNN
F 2 "" H 3250 4000 50  0001 C CNN
F 3 "" H 3250 4000 50  0001 C CNN
	1    3250 4000
	-1   0    0    -1  
$EndComp
Text Label 3350 3350 0    50   ~ 0
VIN
Wire Wire Line
	3350 3150 3350 3250
Connection ~ 3350 3250
Wire Wire Line
	3350 3250 3350 3350
Connection ~ 3350 3350
Wire Wire Line
	3350 3350 3350 3450
$Comp
L power-azonenberg:FUSE_PWROUT F?
U 1 1 611CD699
P 4050 3350
AR Path="/5EDD7150/611CD699" Ref="F?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD699" Ref="F13"  Part="1" 
F 0 "F13" H 4050 3590 50  0000 C CNN
F 1 "10A" H 4050 3499 50  0000 C CNN
F 2 "" H 4050 3350 60  0000 C CNN
F 3 "" H 4050 3350 60  0000 C CNN
	1    4050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3350 3800 3350
Text Label 4300 3350 0    50   ~ 0
VIN_FUSED
$Comp
L passive-azonenberg:BNX003-11 FL?
U 1 1 611CD6A1
P 4900 3700
AR Path="/5EDD7150/611CD6A1" Ref="FL?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD6A1" Ref="FL1"  Part="1" 
F 0 "FL1" H 5350 4275 50  0000 C CNN
F 1 "BNX003-11" H 5350 4184 50  0000 C CNN
F 2 "" H 4900 3700 50  0001 C CNN
F 3 "" H 4900 3700 50  0001 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3350 4300 3350
Text Label 3350 3650 0    50   ~ 0
GND_IN
Wire Wire Line
	3350 3950 3350 3850
Connection ~ 3350 3750
Wire Wire Line
	3350 3750 3350 3650
Connection ~ 3350 3850
Wire Wire Line
	3350 3850 3350 3750
Wire Wire Line
	3350 3650 4800 3650
Connection ~ 3350 3650
Text Label 5900 3350 0    50   ~ 0
VIN_FILT
Text HLabel 5900 3650 2    50   Output ~ 0
GND
Text HLabel 8600 3350 2    50   Output ~ 0
12V0
$Comp
L power-azonenberg:E36SC12009NRFA U52
U 1 1 611D31C4
P 7050 3800
F 0 "U52" H 7525 4475 50  0000 C CNN
F 1 "E36SC12009NRFA" H 7525 4384 50  0000 C CNN
F 2 "" H 7050 3800 50  0001 C CNN
F 3 "" H 7050 3800 50  0001 C CNN
	1    7050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3350 6250 3350
Text Label 6950 3450 2    50   ~ 0
GND
Text Label 8100 3750 0    50   ~ 0
GND
Wire Wire Line
	8100 3350 8100 3450
Wire Wire Line
	8100 3650 8100 3750
Text Notes 7050 2950 0    50   ~ 0
Expected efficiency @ 48V in is ~~93%.\nAssuming 7.3A load, we'll dissipate a bit under 7W in this module.\nOvercurrent shutdown at around 11A
Text Label 6250 3750 0    50   ~ 0
GND
NoConn ~ 6950 3650
$Comp
L device:CP1 C106
U 1 1 611F0163
P 6250 3500
F 0 "C106" H 6365 3546 50  0000 L CNN
F 1 "100 uF 63V" H 6365 3455 50  0000 L CNN
F 2 "" H 6250 3500 50  0001 C CNN
F 3 "" H 6250 3500 50  0001 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
Connection ~ 6250 3350
Wire Wire Line
	6250 3350 6950 3350
Wire Wire Line
	6250 3650 6250 3750
Text Notes 6200 4400 0    50   ~ 0
Main system power switch
$Comp
L Switch:SW_SPST SW2
U 1 1 61205A23
P 6400 4250
F 0 "SW2" H 6400 4485 50  0000 C CNN
F 1 "SW_SPST" H 6400 4394 50  0000 C CNN
F 2 "" H 6400 4250 50  0001 C CNN
F 3 "" H 6400 4250 50  0001 C CNN
	1    6400 4250
	1    0    0    -1  
$EndComp
Text Label 6200 4250 2    50   ~ 0
GND
Text Label 6950 4250 0    50   ~ 0
12V0_ON_N
Wire Wire Line
	6950 4250 6600 4250
Wire Wire Line
	6950 4250 6950 3750
$Comp
L device:CP1 C282
U 1 1 61210D30
P 8600 3500
F 0 "C282" H 8715 3546 50  0000 L CNN
F 1 "100 uF 25V" H 8715 3455 50  0000 L CNN
F 2 "" H 8600 3500 50  0001 C CNN
F 3 "" H 8600 3500 50  0001 C CNN
	1    8600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3350 8100 3350
Connection ~ 8100 3350
Wire Wire Line
	8100 3650 8600 3650
Connection ~ 8100 3650
$EndSCHEMATC
