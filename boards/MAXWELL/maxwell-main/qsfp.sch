EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 15
Title "MAXWELL Main Board"
Date "2020-06-17"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L xilinx-azonenberg:XC7KxT-FFG676 U?
U 12 1 5F02CCC7
P 9600 3950
AR Path="/5EDD71F2/5F02CCC7" Ref="U?"  Part="9" 
AR Path="/5EDDB439/5F02CCC7" Ref="U2"  Part="12" 
F 0 "U2" H 9600 3900 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 9600 3800 50  0000 L CNN
F 2 "" H 9600 3950 50  0001 C CNN
F 3 "" H 9600 3950 50  0001 C CNN
	12   9600 3950
	1    0    0    -1  
$EndComp
Text HLabel 8300 1050 0    50   Input ~ 0
XG_REFCLK_P
Text HLabel 8300 1250 0    50   Input ~ 0
XG_REFCLK_N
$Comp
L Connector:Conn_01x01 J30
U 1 1 60D94382
P 4450 950
F 0 "J30" H 4530 992 50  0000 L CNN
F 1 "QSFP_CAGE" H 4530 901 50  0000 L CNN
F 2 "" H 4450 950 50  0001 C CNN
F 3 "~" H 4450 950 50  0001 C CNN
	1    4450 950 
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_QSFP_HOST J29
U 1 1 60D94B5A
P 4400 4350
F 0 "J29" H 4800 7325 50  0000 C CNN
F 1 "CONN_QSFP_HOST" H 4800 7234 50  0000 C CNN
F 2 "" H 4400 4350 50  0001 L CNN
F 3 "" H 4400 4350 50  0001 C CNN
	1    4400 4350
	1    0    0    -1  
$EndComp
Text Label 4250 950  2    50   ~ 0
GND
Text Label 4200 2000 2    50   ~ 0
GND
Wire Wire Line
	4200 2000 4200 2100
Connection ~ 4200 2100
Wire Wire Line
	4200 2100 4200 2200
Connection ~ 4200 2200
Wire Wire Line
	4200 2200 4200 2300
Connection ~ 4200 2300
Wire Wire Line
	4200 2300 4200 2400
Connection ~ 4200 2400
Wire Wire Line
	4200 2400 4200 2500
Connection ~ 4200 2500
Wire Wire Line
	4200 2500 4200 2600
Connection ~ 4200 2600
Wire Wire Line
	4200 2600 4200 2700
Connection ~ 4200 2700
Wire Wire Line
	4200 2700 4200 2800
Connection ~ 4200 2800
Wire Wire Line
	4200 2800 4200 2900
Connection ~ 4200 2900
Wire Wire Line
	4200 2900 4200 3000
Connection ~ 4200 3000
Wire Wire Line
	4200 3000 4200 3100
Text HLabel 5400 1700 2    50   BiDi ~ 0
QSFP_SDA
Text HLabel 5400 1600 2    50   Input ~ 0
QSFP_SCL
Text Label 5400 3300 0    50   ~ 0
QSFP_RX1_P
Text Label 5400 3400 0    50   ~ 0
QSFP_RX1_N
Text Label 5400 3600 0    50   ~ 0
QSFP_RX2_P
Text Label 5400 3700 0    50   ~ 0
QSFP_RX2_N
Text Label 5400 3900 0    50   ~ 0
QSFP_RX3_P
Text Label 5400 4000 0    50   ~ 0
QSFP_RX3_N
Text Label 5400 4200 0    50   ~ 0
QSFP_RX4_P
Text Label 5400 4300 0    50   ~ 0
QSFP_RX4_N
Text Notes 4400 4700 0    50   ~ 0
TODO: extra ESD protection needed here?\nModule is grounded long before signal contacts mate.
Text Label 4200 3300 2    50   ~ 0
QSFP_TX1_P
Text Label 4200 3400 2    50   ~ 0
QSFP_TX1_N
Text Label 4200 3600 2    50   ~ 0
QSFP_TX2_P
Text Label 4200 3700 2    50   ~ 0
QSFP_TX2_N
Text Label 4200 3900 2    50   ~ 0
QSFP_TX3_P
Text Label 4200 4000 2    50   ~ 0
QSFP_TX3_N
Text Label 4200 4200 2    50   ~ 0
QSFP_TX4_P
Text Label 4200 4300 2    50   ~ 0
QSFP_TX4_N
Text Label 9400 3500 2    50   ~ 0
QSFP_TX1_P
Text Label 9400 3600 2    50   ~ 0
QSFP_TX1_N
Text Label 9400 2900 2    50   ~ 0
QSFP_TX2_P
Text Label 9400 3000 2    50   ~ 0
QSFP_TX2_N
Text Label 9400 2300 2    50   ~ 0
QSFP_TX3_P
Text Label 9400 2400 2    50   ~ 0
QSFP_TX3_N
Text Label 9400 1700 2    50   ~ 0
QSFP_TX4_P
Text Label 9400 1800 2    50   ~ 0
QSFP_TX4_N
Text Label 9400 3800 2    50   ~ 0
QSFP_RX1_P
Text Label 9400 3900 2    50   ~ 0
QSFP_RX1_N
Text Label 9400 3200 2    50   ~ 0
QSFP_RX2_P
Text Label 9400 3300 2    50   ~ 0
QSFP_RX2_N
Text Label 9400 2600 2    50   ~ 0
QSFP_RX3_P
Text Label 9400 2700 2    50   ~ 0
QSFP_RX3_N
Text Label 9400 2000 2    50   ~ 0
QSFP_RX4_P
Text Label 9400 2100 2    50   ~ 0
QSFP_RX4_N
Text HLabel 1250 4950 0    50   Input ~ 0
3V3
Text HLabel 1250 5250 0    50   Input ~ 0
GND
$Comp
L device:C C?
U 1 1 60DC4B14
P 8450 1250
AR Path="/5EDD723A/5F2BB4CD/5F308105/60DC4B14" Ref="C?"  Part="1" 
AR Path="/5EDDB439/60DC4B14" Ref="C280"  Part="1" 
F 0 "C280" V 8400 1400 50  0000 C CNN
F 1 "0.1 uF" V 8500 1450 50  0000 C CNN
F 2 "" H 8488 1100 50  0001 C CNN
F 3 "" H 8450 1250 50  0001 C CNN
	1    8450 1250
	0    1    1    0   
$EndComp
$Comp
L device:C C?
U 1 1 60DC4B1A
P 8450 1050
AR Path="/5EDD723A/5F2BB4CD/5F308105/60DC4B1A" Ref="C?"  Part="1" 
AR Path="/5EDDB439/60DC4B1A" Ref="C279"  Part="1" 
F 0 "C279" V 8400 1200 50  0000 C CNN
F 1 "0.1 uF" V 8500 1250 50  0000 C CNN
F 2 "" H 8488 900 50  0001 C CNN
F 3 "" H 8450 1050 50  0001 C CNN
	1    8450 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 1050 9400 1100
Wire Wire Line
	9400 1250 9400 1200
Wire Wire Line
	8600 1050 9400 1050
Wire Wire Line
	8600 1250 9400 1250
Text Label 8800 1050 0    50   ~ 0
XG_REFCLK_AC_P
Text Label 8800 1250 0    50   ~ 0
XG_REFCLK_AC_N
Text Label 4200 1600 2    50   ~ 0
QSFP_VCC_RX
Text Label 4200 1700 2    50   ~ 0
QSFP_VCC_TX
Text Label 4200 1800 2    50   ~ 0
QSFP_VCC1
Text Label 2600 5500 0    50   ~ 0
QSFP_VCC_RX
Text Label 2600 6050 0    50   ~ 0
QSFP_VCC_TX
Text Label 2600 6600 0    50   ~ 0
QSFP_VCC1
$Comp
L device:C C271
U 1 1 60DE0DFB
P 1250 5100
F 0 "C271" H 1365 5146 50  0000 L CNN
F 1 "22 uF" H 1365 5055 50  0000 L CNN
F 2 "" H 1288 4950 50  0001 C CNN
F 3 "" H 1250 5100 50  0001 C CNN
	1    1250 5100
	1    0    0    -1  
$EndComp
$Comp
L device:C C272
U 1 1 60DE1396
P 1700 5100
F 0 "C272" H 1815 5146 50  0000 L CNN
F 1 "0.1 uF" H 1815 5055 50  0000 L CNN
F 2 "" H 1738 4950 50  0001 C CNN
F 3 "" H 1700 5100 50  0001 C CNN
	1    1700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4950 1250 4950
Wire Wire Line
	1250 5250 1700 5250
Text Label 1250 5500 2    50   ~ 0
3V3
$Comp
L passive-azonenberg:INDUCTOR_PWROUT L4
U 1 1 60DE3353
P 1550 5500
F 0 "L4" V 1392 5500 40  0000 C CNN
F 1 "1 uH" V 1468 5500 40  0000 C CNN
F 2 "" H 1550 5500 60  0000 C CNN
F 3 "" H 1550 5500 60  0000 C CNN
	1    1550 5500
	0    1    1    0   
$EndComp
$Comp
L device:C C273
U 1 1 60DE4423
P 1850 5650
F 0 "C273" H 1965 5696 50  0000 L CNN
F 1 "22 uF" H 1965 5605 50  0000 L CNN
F 2 "" H 1888 5500 50  0001 C CNN
F 3 "" H 1850 5650 50  0001 C CNN
	1    1850 5650
	1    0    0    -1  
$EndComp
$Comp
L device:C C276
U 1 1 60DE495B
P 2350 5650
F 0 "C276" H 2465 5696 50  0000 L CNN
F 1 "0.1 uF" H 2465 5605 50  0000 L CNN
F 2 "" H 2388 5500 50  0001 C CNN
F 3 "" H 2350 5650 50  0001 C CNN
	1    2350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5500 2350 5500
Connection ~ 1850 5500
Connection ~ 2350 5500
Wire Wire Line
	2350 5500 1850 5500
Text Label 1250 5800 2    50   ~ 0
GND
Wire Wire Line
	1250 5800 1850 5800
Connection ~ 1850 5800
Wire Wire Line
	1850 5800 2350 5800
Text Label 1250 6050 2    50   ~ 0
3V3
$Comp
L passive-azonenberg:INDUCTOR_PWROUT L5
U 1 1 60DE6993
P 1550 6050
F 0 "L5" V 1392 6050 40  0000 C CNN
F 1 "1 uH" V 1468 6050 40  0000 C CNN
F 2 "" H 1550 6050 60  0000 C CNN
F 3 "" H 1550 6050 60  0000 C CNN
	1    1550 6050
	0    1    1    0   
$EndComp
$Comp
L device:C C274
U 1 1 60DE699D
P 1850 6200
F 0 "C274" H 1965 6246 50  0000 L CNN
F 1 "22 uF" H 1965 6155 50  0000 L CNN
F 2 "" H 1888 6050 50  0001 C CNN
F 3 "" H 1850 6200 50  0001 C CNN
	1    1850 6200
	1    0    0    -1  
$EndComp
$Comp
L device:C C277
U 1 1 60DE69A7
P 2350 6200
F 0 "C277" H 2465 6246 50  0000 L CNN
F 1 "0.1 uF" H 2465 6155 50  0000 L CNN
F 2 "" H 2388 6050 50  0001 C CNN
F 3 "" H 2350 6200 50  0001 C CNN
	1    2350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6050 2350 6050
Connection ~ 1850 6050
Connection ~ 2350 6050
Wire Wire Line
	2350 6050 1850 6050
Text Label 1250 6350 2    50   ~ 0
GND
Wire Wire Line
	1250 6350 1850 6350
Connection ~ 1850 6350
Wire Wire Line
	1850 6350 2350 6350
Text Label 1250 6600 2    50   ~ 0
3V3
$Comp
L passive-azonenberg:INDUCTOR_PWROUT L6
U 1 1 60DE96DE
P 1550 6600
F 0 "L6" V 1392 6600 40  0000 C CNN
F 1 "1 uH" V 1468 6600 40  0000 C CNN
F 2 "" H 1550 6600 60  0000 C CNN
F 3 "" H 1550 6600 60  0000 C CNN
	1    1550 6600
	0    1    1    0   
$EndComp
$Comp
L device:C C275
U 1 1 60DE96E8
P 1850 6750
F 0 "C275" H 1965 6796 50  0000 L CNN
F 1 "22 uF" H 1965 6705 50  0000 L CNN
F 2 "" H 1888 6600 50  0001 C CNN
F 3 "" H 1850 6750 50  0001 C CNN
	1    1850 6750
	1    0    0    -1  
$EndComp
$Comp
L device:C C278
U 1 1 60DE96F2
P 2350 6750
F 0 "C278" H 2465 6796 50  0000 L CNN
F 1 "0.1 uF" H 2465 6705 50  0000 L CNN
F 2 "" H 2388 6600 50  0001 C CNN
F 3 "" H 2350 6750 50  0001 C CNN
	1    2350 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6600 2350 6600
Connection ~ 1850 6600
Connection ~ 2350 6600
Wire Wire Line
	2350 6600 1850 6600
Text Label 1250 6900 2    50   ~ 0
GND
Wire Wire Line
	1250 6900 1850 6900
Connection ~ 1850 6900
Wire Wire Line
	1850 6900 2350 6900
Text HLabel 5400 2200 2    50   Input ~ 0
QSFP_RST_N
Text HLabel 5400 2300 2    50   Input ~ 0
QSFP_PRESENT_N
Text HLabel 5400 2400 2    50   Input ~ 0
QSFP_INT_N
Text HLabel 5400 2100 2    50   Input ~ 0
QSFP_MODSEL_N
Text HLabel 5400 2000 2    50   Input ~ 0
QSFP_LP_MODE
NoConn ~ 9400 1400
NoConn ~ 9400 1500
$Comp
L device:R R120
U 1 1 60E03197
P 8950 800
F 0 "R120" V 8850 800 50  0000 C CNN
F 1 "100" V 8950 800 50  0000 C CNN
F 2 "" V 8880 800 50  0001 C CNN
F 3 "" H 8950 800 50  0001 C CNN
	1    8950 800 
	0    1    1    0   
$EndComp
Text HLabel 8800 900  0    50   Input ~ 0
GTX_1V2
Wire Wire Line
	8800 800  8800 900 
Wire Wire Line
	8800 900  9400 900 
Wire Wire Line
	9100 800  9400 800 
$EndSCHEMATC
