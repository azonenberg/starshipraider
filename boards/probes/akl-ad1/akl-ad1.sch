EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AKL-AD1"
Date "2020-12-27"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5FE908C0
P 4950 3500
F 0 "J2" H 5050 3475 50  0000 L CNN
F 1 "901-10511-3" H 5050 3384 50  0000 L CNN
F 2 "" H 4950 3500 50  0001 C CNN
F 3 "" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial_x2 J1
U 1 1 5FE90D04
P 1600 3550
F 0 "J1" H 1553 3888 50  0000 C CNN
F 1 "3211-60087" H 1553 3797 50  0000 C CNN
F 2 "" H 1600 3450 50  0001 C CNN
F 3 "" H 1600 3450 50  0001 C CNN
	1    1600 3550
	-1   0    0    -1  
$EndComp
$Comp
L analog-azonenberg:ADL5565 U1
U 1 1 5FE94CF5
P 2650 3750
F 0 "U1" H 3125 5025 50  0000 C CNN
F 1 "ADL5565" H 3125 4934 50  0000 C CNN
F 2 "" H 2650 3750 50  0001 C CNN
F 3 "" H 2650 3750 50  0001 C CNN
	1    2650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3500 3750 3500
Text Label 3750 4000 0    50   ~ 0
GND
Text Label 4750 3700 2    50   ~ 0
GND
Wire Wire Line
	4750 3700 4950 3700
Wire Wire Line
	3750 3100 3750 3000
Connection ~ 3750 2800
Wire Wire Line
	3750 2800 3750 2700
Connection ~ 3750 2900
Wire Wire Line
	3750 2900 3750 2800
Connection ~ 3750 3000
Wire Wire Line
	3750 3000 3750 2900
$Comp
L device:R R1
U 1 1 5FE97342
P 3750 3750
F 0 "R1" H 3820 3796 50  0000 L CNN
F 1 "49.9" H 3820 3705 50  0000 L CNN
F 2 "" V 3680 3750 50  0001 C CNN
F 3 "" H 3750 3750 50  0001 C CNN
	1    3750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4000 3750 3900
Wire Wire Line
	2500 3100 2500 3000
Connection ~ 2500 2800
Wire Wire Line
	2500 2800 2500 2700
Connection ~ 2500 2900
Wire Wire Line
	2500 2900 2500 2800
Connection ~ 2500 3000
Wire Wire Line
	2500 3000 2500 2900
Text Notes 650  7550 0    50   ~ 0
Assume 900 ohm (2x 450) input resistance\n\nIf configured for 6 dB gain:\n* 200 ohm Zdiff\n* 5.5x = -14.8 dB attenuation at input\n* -8.8 dB system gain = 2.75:1\n\nIf configured for 12 dB gain:\n* 100 ohm Zdiff\n* 10x = -20 dB attenuation at input\n* -8 dB system gain = 2.51:1\n\nIf configured for 15.5 dB gain:\n* 67 ohm Zdiff\n* 14.43x = -23.2 dB attenuation at input\n* -7.7 dB system gain = 2.42:1
Text Notes 2900 6600 0    50   ~ 0
Difference between min and max gain is barely 1 dB\n12 dB gives standard 100 ohm Zin\nAlso rounder numbers\nLess noise than max gain\n
Wire Wire Line
	1750 3450 1750 3400
Wire Wire Line
	1750 3400 2500 3400
Wire Wire Line
	1750 3650 1750 3700
Wire Wire Line
	1750 3700 2500 3700
Text Label 1600 3850 0    50   ~ 0
GND
NoConn ~ 2500 3500
NoConn ~ 2500 3600
Text Label 2500 2700 2    50   ~ 0
2V5_P
Text Label 3750 2700 0    50   ~ 0
2V5_N
$Comp
L device:C C1
U 1 1 5FE99455
P 2650 2150
F 0 "C1" H 2765 2196 50  0000 L CNN
F 1 "0.47 uF" H 2765 2105 50  0000 L CNN
F 2 "" H 2688 2000 50  0001 C CNN
F 3 "" H 2650 2150 50  0001 C CNN
	1    2650 2150
	1    0    0    -1  
$EndComp
Text Label 2650 2000 2    50   ~ 0
2V5_P
Text Label 2650 2300 2    50   ~ 0
2V5_N
$Comp
L device:C C2
U 1 1 5FE9A0E9
P 3200 2150
F 0 "C2" H 3315 2196 50  0000 L CNN
F 1 "0.47 uF" H 3315 2105 50  0000 L CNN
F 2 "" H 3238 2000 50  0001 C CNN
F 3 "" H 3200 2150 50  0001 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
$Comp
L device:C C3
U 1 1 5FE9A44B
P 3750 2150
F 0 "C3" H 3865 2196 50  0000 L CNN
F 1 "0.47 uF" H 3865 2105 50  0000 L CNN
F 2 "" H 3788 2000 50  0001 C CNN
F 3 "" H 3750 2150 50  0001 C CNN
	1    3750 2150
	1    0    0    -1  
$EndComp
$Comp
L device:C C5
U 1 1 5FE9A72C
P 4300 2150
F 0 "C5" H 4415 2196 50  0000 L CNN
F 1 "0.47 uF" H 4415 2105 50  0000 L CNN
F 2 "" H 4338 2000 50  0001 C CNN
F 3 "" H 4300 2150 50  0001 C CNN
	1    4300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2000 3750 2000
Connection ~ 3200 2000
Wire Wire Line
	3200 2000 2650 2000
Connection ~ 3750 2000
Wire Wire Line
	3750 2000 3200 2000
Wire Wire Line
	2650 2300 3200 2300
Connection ~ 3200 2300
Wire Wire Line
	3200 2300 3750 2300
Connection ~ 3750 2300
Wire Wire Line
	3750 2300 4300 2300
Text Label 4550 3300 0    50   ~ 0
GND
$Comp
L device:C C6
U 1 1 5FE9C4E4
P 4550 3150
F 0 "C6" H 4665 3196 50  0000 L CNN
F 1 "0.47 uF" H 4665 3105 50  0000 L CNN
F 2 "" H 4588 3000 50  0001 C CNN
F 3 "" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
$Comp
L device:C C4
U 1 1 5FE9CEA6
P 4000 3150
F 0 "C4" H 4115 3196 50  0000 L CNN
F 1 "0.47 uF" H 4115 3105 50  0000 L CNN
F 2 "" H 4038 3000 50  0001 C CNN
F 3 "" H 4000 3150 50  0001 C CNN
	1    4000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3300 4000 3300
Connection ~ 4000 3300
Wire Wire Line
	4000 3300 4550 3300
Text Label 4000 3000 0    50   ~ 0
2V5_P
Text Label 4550 3000 0    50   ~ 0
2V5_N
NoConn ~ 1200 1000
Text Label 1200 900  0    50   ~ 0
GND
Text Label 1200 800  0    50   ~ 0
2V5_P
NoConn ~ 1200 1600
Text Label 1200 1500 0    50   ~ 0
GND
Text Label 1200 1400 0    50   ~ 0
2V5_N
$Comp
L device:C C7
U 1 1 5FEA18D8
P 2650 1450
F 0 "C7" H 2765 1496 50  0000 L CNN
F 1 "4.7 uF" H 2765 1405 50  0000 L CNN
F 2 "" H 2688 1300 50  0001 C CNN
F 3 "" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
Text Label 2650 1300 2    50   ~ 0
2V5_P
Text Label 2650 1600 2    50   ~ 0
2V5_N
$Comp
L device:C C8
U 1 1 5FEA1EE7
P 3200 1450
F 0 "C8" H 3315 1496 50  0000 L CNN
F 1 "22 uF" H 3315 1405 50  0000 L CNN
F 2 "" H 3238 1300 50  0001 C CNN
F 3 "" H 3200 1450 50  0001 C CNN
	1    3200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1300 2650 1300
Wire Wire Line
	2650 1600 3200 1600
$Comp
L power-azonenberg:CONN_3_PWROUT J3
U 1 1 5FEA3063
P 850 900
F 0 "J3" H 717 1200 50  0000 C CNN
F 1 "BARREL" H 717 1116 40  0000 C CNN
F 2 "" H 850 900 60  0000 C CNN
F 3 "" H 850 900 60  0000 C CNN
	1    850  900 
	-1   0    0    -1  
$EndComp
$Comp
L power-azonenberg:CONN_3_PWROUT J4
U 1 1 5FEA3DDB
P 850 1500
F 0 "J4" H 717 1800 50  0000 C CNN
F 1 "BARREL" H 717 1716 40  0000 C CNN
F 2 "" H 850 1500 60  0000 C CNN
F 3 "" H 850 1500 60  0000 C CNN
	1    850  1500
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
