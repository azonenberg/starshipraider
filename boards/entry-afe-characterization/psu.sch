EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
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
L analog-azonenberg:MCP1501_DFN U?
U 1 1 5E737F95
P 2750 7350
AR Path="/5E7383DD/5E737F95" Ref="U?"  Part="1" 
AR Path="/5E704852/5E737F95" Ref="U?"  Part="1" 
F 0 "U?" H 2978 7403 60  0000 L CNN
F 1 "MCP1501T-10E/RW" H 2750 8150 60  0000 L CNN
F 2 "" H 2750 7350 60  0001 C CNN
F 3 "" H 2750 7350 60  0001 C CNN
	1    2750 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7300 2550 7200
Connection ~ 2550 7000
Wire Wire Line
	2550 7000 2550 6900
Connection ~ 2550 7100
Wire Wire Line
	2550 7100 2550 7000
Connection ~ 2550 7200
Wire Wire Line
	2550 7200 2550 7100
Text Label 2550 6700 2    50   ~ 0
5V0_P
Wire Wire Line
	3650 6700 3650 6800
Connection ~ 3650 6800
Text Label 3550 7500 2    50   ~ 0
GND
Wire Wire Line
	3550 7500 3650 7500
Wire Wire Line
	3900 7150 3650 7150
Wire Wire Line
	3650 7150 3650 7100
Wire Wire Line
	3650 7150 3650 7200
Connection ~ 3650 7150
$Comp
L device:C C?
U 1 1 5E737FAC
P 2000 6850
AR Path="/5E737FAC" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E737FAC" Ref="C?"  Part="1" 
AR Path="/5E704852/5E737FAC" Ref="C?"  Part="1" 
F 0 "C?" H 2115 6896 50  0000 L CNN
F 1 "0.1 uF" H 2115 6805 50  0000 L CNN
F 2 "" H 2038 6700 50  0001 C CNN
F 3 "" H 2000 6850 50  0001 C CNN
	1    2000 6850
	1    0    0    -1  
$EndComp
Text Label 2550 7300 2    50   ~ 0
GND
Wire Wire Line
	2550 7300 2000 7300
Wire Wire Line
	2000 7300 2000 7000
Connection ~ 2550 7300
Wire Wire Line
	2550 6700 2000 6700
Wire Wire Line
	2550 6800 2550 6700
Connection ~ 2550 6700
Text Notes 2000 6350 0    50   ~ 0
+1.024V reference\nDivide by 2 to get a 512 mV reference
$Comp
L device:C C?
U 1 1 5E737FBA
P 4050 6550
AR Path="/5E737FBA" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E737FBA" Ref="C?"  Part="1" 
AR Path="/5E704852/5E737FBA" Ref="C?"  Part="1" 
F 0 "C?" H 4165 6596 50  0000 L CNN
F 1 "300 pF" H 4165 6505 50  0000 L CNN
F 2 "" H 4088 6400 50  0001 C CNN
F 3 "" H 4050 6550 50  0001 C CNN
	1    4050 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6700 4050 6700
Connection ~ 3650 6700
Text Label 4050 6400 2    50   ~ 0
GND
$Comp
L device:C C?
U 1 1 5E737FC3
P 1500 6850
AR Path="/5E737FC3" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E737FC3" Ref="C?"  Part="1" 
AR Path="/5E704852/5E737FC3" Ref="C?"  Part="1" 
F 0 "C?" H 1615 6896 50  0000 L CNN
F 1 "4.7 uF" H 1615 6805 50  0000 L CNN
F 2 "" H 1538 6700 50  0001 C CNN
F 3 "" H 1500 6850 50  0001 C CNN
	1    1500 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6700 1500 6700
Connection ~ 2000 6700
Wire Wire Line
	1500 7000 1500 7300
Wire Wire Line
	1500 7300 2000 7300
Connection ~ 2000 7300
$Comp
L device:R R?
U 1 1 5E737FCE
P 3650 7350
AR Path="/5E7383DD/5E737FCE" Ref="R?"  Part="1" 
AR Path="/5E704852/5E737FCE" Ref="R?"  Part="1" 
F 0 "R?" H 3720 7396 50  0000 L CNN
F 1 "1K 1%" H 3720 7305 50  0000 L CNN
F 2 "" V 3580 7350 50  0001 C CNN
F 3 "" H 3650 7350 50  0001 C CNN
	1    3650 7350
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E737FD4
P 3650 6950
AR Path="/5E7383DD/5E737FD4" Ref="R?"  Part="1" 
AR Path="/5E704852/5E737FD4" Ref="R?"  Part="1" 
F 0 "R?" H 3720 6996 50  0000 L CNN
F 1 "1K 1%" H 3720 6905 50  0000 L CNN
F 2 "" V 3580 6950 50  0001 C CNN
F 3 "" H 3650 6950 50  0001 C CNN
	1    3650 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6700 4050 6700
Connection ~ 4050 6700
Text HLabel 3900 7150 2    50   Output ~ 0
0V5_REF
Text Label 4500 6700 0    50   ~ 0
1V0_REF
$Comp
L analog-azonenberg:MCP1501_SOIC U?
U 1 1 5E740041
P 2750 5750
F 0 "U?" H 3100 6647 60  0000 C CNN
F 1 "MCP1501T-40E/SN" H 3100 6541 60  0000 C CNN
F 2 "" H 2750 5750 60  0001 C CNN
F 3 "" H 2750 5750 60  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
Text Label 2450 5100 2    50   ~ 0
GND
Wire Wire Line
	2550 5100 2550 5200
Connection ~ 2550 5100
Text Label 2450 5600 2    50   ~ 0
5V0_N
Wire Wire Line
	2550 5600 2550 5500
Connection ~ 2550 5600
Connection ~ 2550 5400
Wire Wire Line
	2550 5400 2550 5300
Connection ~ 2550 5500
Wire Wire Line
	2550 5500 2550 5400
$Comp
L device:C C?
U 1 1 5E740051
P 2050 5250
AR Path="/5E740051" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E740051" Ref="C?"  Part="1" 
F 0 "C?" H 2165 5296 50  0000 L CNN
F 1 "0.1 uF" H 2165 5205 50  0000 L CNN
F 2 "" H 2088 5100 50  0001 C CNN
F 3 "" H 2050 5250 50  0001 C CNN
	1    2050 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5100 2550 5100
Wire Wire Line
	2050 5400 2050 5600
Wire Wire Line
	2050 5600 2550 5600
Text Notes 4150 5900 0    50   ~ 0
+4.096V voltage reference\nShifted down to -5V\nOUT pin is thus -0.904V\nDivider output is -516 mV
$Comp
L device:C C?
U 1 1 5E74005B
P 4000 4950
AR Path="/5E74005B" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E74005B" Ref="C?"  Part="1" 
F 0 "C?" H 4115 4996 50  0000 L CNN
F 1 "300 pF" H 4115 4905 50  0000 L CNN
F 2 "" H 4038 4800 50  0001 C CNN
F 3 "" H 4000 4950 50  0001 C CNN
	1    4000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5200 3650 5100
Wire Wire Line
	3650 5100 4000 5100
Connection ~ 3650 5100
Text Label 4000 4800 2    50   ~ 0
GND
Text Label 3700 5200 0    50   ~ 0
N0V9_REF
Wire Wire Line
	3700 5200 3650 5200
Connection ~ 3650 5200
$Comp
L device:C C?
U 1 1 5E740068
P 1500 5250
AR Path="/5E740068" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E740068" Ref="C?"  Part="1" 
F 0 "C?" H 1615 5296 50  0000 L CNN
F 1 "4.7 uF" H 1615 5205 50  0000 L CNN
F 2 "" H 1538 5100 50  0001 C CNN
F 3 "" H 1500 5250 50  0001 C CNN
	1    1500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5100 2050 5100
Connection ~ 2050 5100
Wire Wire Line
	1500 5400 1500 5600
Wire Wire Line
	1500 5600 2050 5600
Connection ~ 2050 5600
$Comp
L device:R R?
U 1 1 5E740073
P 3650 5350
F 0 "R?" H 3720 5396 50  0000 L CNN
F 1 "1K 1%" H 3720 5305 50  0000 L CNN
F 2 "" V 3580 5350 50  0001 C CNN
F 3 "" H 3650 5350 50  0001 C CNN
	1    3650 5350
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E740079
P 3650 5750
F 0 "R?" H 3720 5796 50  0000 L CNN
F 1 "1.33K 1%" H 3720 5705 50  0000 L CNN
F 2 "" V 3580 5750 50  0001 C CNN
F 3 "" H 3650 5750 50  0001 C CNN
	1    3650 5750
	1    0    0    -1  
$EndComp
Text Label 3550 5900 2    50   ~ 0
GND
Wire Wire Line
	3550 5900 3650 5900
Wire Wire Line
	3850 5550 3650 5550
Wire Wire Line
	3650 5550 3650 5500
Wire Wire Line
	3650 5550 3650 5600
Connection ~ 3650 5550
Text HLabel 3850 5550 2    50   Output ~ 0
N0V5_REF
$EndSCHEMATC
