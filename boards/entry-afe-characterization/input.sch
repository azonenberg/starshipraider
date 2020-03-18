EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-17"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5E73BA4F
P 1100 1550
AR Path="/5E73BA4F" Ref="J?"  Part="1" 
AR Path="/5E7383DD/5E73BA4F" Ref="J1"  Part="1" 
F 0 "J1" H 1053 1788 50  0000 C CNN
F 1 "SMA" H 1053 1697 50  0000 C CNN
F 2 "" H 1100 1550 50  0001 C CNN
F 3 "" H 1100 1550 50  0001 C CNN
	1    1100 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1100 1750 1100 1850
Text Notes 1100 1950 0    50   ~ 0
± 5V range
Text Label 1250 1550 0    50   ~ 0
VIN
Text Label 4400 1550 0    50   ~ 0
VIN_DIV2
Text Notes 1900 950  0    79   ~ 0
Input protection\nand attenuator
Text Notes 7400 950  0    79   ~ 0
100 MHz Butterworth\nantialiasing filter
$Comp
L device:R R?
U 1 1 5E73BA63
P 3650 1700
AR Path="/5E73BA63" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA63" Ref="R1"  Part="1" 
F 0 "R1" H 3720 1746 50  0000 L CNN
F 1 "CRCW1206150RFKEAHP" H 3450 1450 50  0000 L CNN
F 2 "" V 3580 1700 50  0001 C CNN
F 3 "" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E73BA69
P 4300 1700
AR Path="/5E73BA69" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA69" Ref="R3"  Part="1" 
F 0 "R3" H 4370 1746 50  0000 L CNN
F 1 "CRCW1206150RFKEAHP" H 3450 1350 50  0000 L CNN
F 2 "" V 4230 1700 50  0001 C CNN
F 3 "" H 4300 1700 50  0001 C CNN
	1    4300 1700
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E73BA6F
P 4050 1550
AR Path="/5E73BA6F" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA6F" Ref="R2"  Part="1" 
F 0 "R2" V 3843 1550 50  0000 C CNN
F 1 "CRCW120637R4FKEAHP" V 3934 1550 50  0000 C CNN
F 2 "" V 3980 1550 50  0001 C CNN
F 3 "" H 4050 1550 50  0001 C CNN
	1    4050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 1550 3650 1550
Wire Wire Line
	3650 1850 4300 1850
Wire Wire Line
	4200 1550 4300 1550
Connection ~ 4300 1550
$Comp
L device:C C?
U 1 1 5E73BA79
P 7400 1700
AR Path="/5E73BA79" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E73BA79" Ref="C1"  Part="1" 
F 0 "C1" H 7515 1746 50  0000 L CNN
F 1 "31.83 pF" H 7515 1655 50  0000 L CNN
F 2 "" H 7438 1550 50  0001 C CNN
F 3 "" H 7400 1700 50  0001 C CNN
	1    7400 1700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5E73BA7F
P 8350 1700
AR Path="/5E73BA7F" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E73BA7F" Ref="C2"  Part="1" 
F 0 "C2" H 8465 1746 50  0000 L CNN
F 1 "31.83 pF" H 8465 1655 50  0000 L CNN
F 2 "" H 8388 1550 50  0001 C CNN
F 3 "" H 8350 1700 50  0001 C CNN
	1    8350 1700
	1    0    0    -1  
$EndComp
$Comp
L device:L L?
U 1 1 5E73BA85
P 7900 1550
AR Path="/5E73BA85" Ref="L?"  Part="1" 
AR Path="/5E7383DD/5E73BA85" Ref="L1"  Part="1" 
F 0 "L1" V 7719 1550 50  0000 C CNN
F 1 "159 nH" V 7810 1550 50  0000 C CNN
F 2 "" H 7900 1550 50  0001 C CNN
F 3 "" H 7900 1550 50  0001 C CNN
	1    7900 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1550 7750 1550
Wire Wire Line
	8050 1550 8350 1550
Wire Wire Line
	8350 1850 7400 1850
Text Label 7400 1850 2    50   ~ 0
GND
Connection ~ 7400 1550
Text HLabel 1100 1850 0    50   Input ~ 0
GND
Text HLabel 8350 1550 2    50   Output ~ 0
VIN_FILTERED
Text Notes 5600 1500 0    50   ~ 0
± 2.5V range\nNet gain = 0.5 (-6 dB)
Wire Wire Line
	4300 1550 4950 1550
$Comp
L device:D D4
U 1 1 5E76285D
P 4950 1700
F 0 "D4" V 4904 1779 50  0000 L CNN
F 1 "D" V 4995 1779 50  0000 L CNN
F 2 "" H 4950 1700 50  0001 C CNN
F 3 "" H 4950 1700 50  0001 C CNN
	1    4950 1700
	0    1    1    0   
$EndComp
Connection ~ 4950 1550
Wire Wire Line
	4950 1550 7400 1550
$Comp
L device:D D3
U 1 1 5E763871
P 4950 1400
F 0 "D3" V 4904 1479 50  0000 L CNN
F 1 "D" V 4995 1479 50  0000 L CNN
F 2 "" H 4950 1400 50  0001 C CNN
F 3 "" H 4950 1400 50  0001 C CNN
	1    4950 1400
	0    1    1    0   
$EndComp
Text HLabel 4950 1250 0    50   Input ~ 0
5V0_P
Text HLabel 4950 1850 0    50   Input ~ 0
5V0_N
$Comp
L special-azonenberg:RELAY_COTO_9202_COAX K1
U 1 1 5E76754D
P 2150 1700
F 0 "K1" H 2525 2375 50  0000 C CNN
F 1 "9202-12-00" H 2525 2284 50  0000 C CNN
F 2 "" H 2150 1700 50  0001 C CNN
F 3 "" H 2150 1700 50  0001 C CNN
	1    2150 1700
	1    0    0    -1  
$EndComp
Text Label 3550 1850 2    50   ~ 0
GND
Wire Wire Line
	3550 1850 3650 1850
Connection ~ 3650 1850
Wire Wire Line
	1250 1550 1950 1550
Text Label 3150 1550 0    50   ~ 0
VIN_SWITCHED
Wire Wire Line
	3100 1550 3650 1550
Connection ~ 3650 1550
Text Label 3100 1650 0    50   ~ 0
GND
Text Label 1950 1650 2    50   ~ 0
GND
Text Notes 3450 2650 0    50   ~ 0
50V input overload gives ~~1A\nESD diode can handle 1A for 1 ms\nR2 can handle 30W for 1ms, 100W for 100µs\nRelay turn-off time is 100 µs\nGoal: <50 µs response from overload to relay\nstarting to shut off
$Comp
L special-azonenberg:SSM6N58NU_DUAL_NMOS Q1
U 1 1 5E76AA9F
P 2200 6850
F 0 "Q1" H 2344 6903 60  0000 L CNN
F 1 "SSM6N58NU" H 2344 6797 60  0000 L CNN
F 2 "" H 2200 6850 60  0000 C CNN
F 3 "transistors/mos/*.*" H 2344 6744 60  0001 L CNN
	1    2200 6850
	1    0    0    -1  
$EndComp
Text HLabel 1950 1250 0    50   Input ~ 0
12V0
Text Label 1950 1350 2    50   ~ 0
COIL_N
Text Label 2300 6650 2    50   ~ 0
COIL_N
Text Label 2300 7150 2    50   ~ 0
GND
Wire Wire Line
	2300 7150 2300 7050
Text HLabel 1600 6850 0    50   Input ~ 0
VIN_EN
Wire Wire Line
	1600 6850 1700 6850
$Comp
L device:R R11
U 1 1 5E76E9E3
P 1700 6700
F 0 "R11" H 1770 6746 50  0000 L CNN
F 1 "10K" H 1770 6655 50  0000 L CNN
F 2 "" V 1630 6700 50  0001 C CNN
F 3 "" H 1700 6700 50  0001 C CNN
	1    1700 6700
	1    0    0    -1  
$EndComp
Connection ~ 1700 6850
Wire Wire Line
	1700 6850 2000 6850
Text Label 1700 6550 2    50   ~ 0
5V0_P
$Comp
L device:D_Zener D1
U 1 1 5E76F92B
P 2550 6200
F 0 "D1" V 2596 6121 50  0000 R CNN
F 1 "PDZ10BGWX" V 2505 6121 50  0000 R CNN
F 2 "" H 2550 6200 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Zener_diode" H 2550 6200 50  0001 C CNN
	1    2550 6200
	0    -1   -1   0   
$EndComp
$Comp
L device:D D2
U 1 1 5E770769
P 2550 6500
F 0 "D2" V 2504 6579 50  0000 L CNN
F 1 "BAS21GWJ" V 2595 6579 50  0000 L CNN
F 2 "" H 2550 6500 50  0001 C CNN
F 3 "" H 2550 6500 50  0001 C CNN
	1    2550 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 6650 2550 6650
Text Label 2550 6050 2    50   ~ 0
12V0
$Comp
L analog-azonenberg:LM393-DSBGA8 U3
U 1 1 5E774FB3
P 4450 7000
F 0 "U3" H 4875 8197 60  0000 C CNN
F 1 "LM393-DSBGA8" H 4875 8091 60  0000 C CNN
F 2 "" H 4450 7050 60  0000 C CNN
F 3 "" H 4450 7050 60  0000 C CNN
	1    4450 7000
	1    0    0    -1  
$EndComp
Text Label 5500 6350 0    50   ~ 0
VIN_EN
Wire Wire Line
	5500 6350 5500 6750
Text Label 1250 2350 2    50   ~ 0
VIN
$Comp
L device:R R10
U 1 1 5E7797EC
P 1250 2900
F 0 "R10" H 1320 2946 50  0000 L CNN
F 1 "1K" H 1320 2855 50  0000 L CNN
F 2 "" V 1180 2900 50  0001 C CNN
F 3 "" H 1250 2900 50  0001 C CNN
	1    1250 2900
	1    0    0    -1  
$EndComp
Text Label 1250 3050 2    50   ~ 0
GND
Wire Wire Line
	1250 2650 1250 2700
Text Label 1500 2700 0    50   ~ 0
VIN_DIV10
Wire Wire Line
	1500 2700 1250 2700
Connection ~ 1250 2700
Wire Wire Line
	1250 2700 1250 2750
Text Label 4250 6450 2    50   ~ 0
VIN_DIV10
Text Label 4250 6750 2    50   ~ 0
VIN_DIV10
Text Label 4250 6050 2    50   ~ 0
5V0_P
Text Label 4250 6150 2    50   ~ 0
5V0_N
$Comp
L device:R R9
U 1 1 5E77906B
P 1250 2500
F 0 "R9" H 1320 2546 50  0000 L CNN
F 1 "9K" H 1320 2455 50  0000 L CNN
F 2 "" V 1180 2500 50  0001 C CNN
F 3 "" H 1250 2500 50  0001 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
Text Notes 4450 5650 0    79   ~ 0
Overvoltage shutdown
Text Notes 7350 2000 0    50   ~ 0
TODO: pick close values
Text Notes 1600 5650 0    79   ~ 0
Relay driver
$Comp
L device:C C?
U 1 1 5E78B1A4
P 6200 6200
AR Path="/5E78B1A4" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E78B1A4" Ref="C?"  Part="1" 
F 0 "C?" H 6315 6246 50  0000 L CNN
F 1 "0.1 uF" H 6315 6155 50  0000 L CNN
F 2 "" H 6238 6050 50  0001 C CNN
F 3 "" H 6200 6200 50  0001 C CNN
	1    6200 6200
	1    0    0    -1  
$EndComp
Text Label 6200 6050 2    50   ~ 0
5V0_P
Text Label 6200 6350 2    50   ~ 0
5V0_N
$Comp
L device:C C?
U 1 1 5E72790C
P 6750 6200
AR Path="/5E72790C" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E72790C" Ref="C?"  Part="1" 
F 0 "C?" H 6865 6246 50  0000 L CNN
F 1 "4.7 uF" H 6865 6155 50  0000 L CNN
F 2 "" H 6788 6050 50  0001 C CNN
F 3 "" H 6750 6200 50  0001 C CNN
	1    6750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6050 6200 6050
Wire Wire Line
	6200 6350 6750 6350
Text HLabel 4250 6350 0    50   Input ~ 0
0V5_REF
Text HLabel 4250 6850 0    50   Input ~ 0
N0V5_REF
$EndSCHEMATC
