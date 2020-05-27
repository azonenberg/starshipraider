EESchema Schematic File Version 4
LIBS:la-pod-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date "2020-05-26"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1500 1000 0    50   Output ~ 0
CH0
Text HLabel 1500 1200 0    50   Output ~ 0
CH1
Text HLabel 1500 1400 0    50   Output ~ 0
CH2
Text HLabel 1500 1600 0    50   Output ~ 0
CH3
Text HLabel 1500 1800 0    50   Output ~ 0
CH4
Text HLabel 1500 2000 0    50   Output ~ 0
CH5
Text HLabel 1500 2200 0    50   Output ~ 0
CH6
Text HLabel 1500 2400 0    50   Output ~ 0
CH7
Text Label 2000 900  0    50   ~ 0
GND
Text Label 1500 1100 2    50   ~ 0
GND
Text Label 1500 1300 2    50   ~ 0
GND
Text Label 1500 1500 2    50   ~ 0
GND
Text Label 1500 1700 2    50   ~ 0
GND
Text Label 1500 1900 2    50   ~ 0
GND
Text Label 1500 2100 2    50   ~ 0
GND
Text Label 1500 2300 2    50   ~ 0
GND
Text Label 1500 2500 2    50   ~ 0
GND
$Comp
L special-azonenberg:RCLAMP0542T U10
U 1 1 5ECE5387
P 3650 1550
F 0 "U10" H 3650 1500 60  0000 L CNN
F 1 "RCLAMP0542T" H 3650 1400 60  0000 L CNN
F 2 "" H 3650 1550 60  0000 C CNN
F 3 "" H 3650 1550 60  0000 C CNN
	1    3650 1550
	1    0    0    -1  
$EndComp
Text Label 3200 900  2    50   ~ 0
CH0
Wire Wire Line
	3200 900  3350 900 
Wire Wire Line
	3350 900  3350 1000
Connection ~ 3350 900 
Text Label 3200 1100 2    50   ~ 0
CH1
Wire Wire Line
	3200 1100 3350 1100
Wire Wire Line
	3350 1100 3350 1200
Connection ~ 3350 1100
Text Label 3200 1400 2    50   ~ 0
GND
Wire Wire Line
	3200 1400 3350 1400
Wire Wire Line
	3350 1400 3350 1500
Connection ~ 3350 1400
Connection ~ 2000 2200
Connection ~ 2000 1700
Wire Wire Line
	2000 2600 2000 2700
Connection ~ 2000 2600
Wire Wire Line
	2000 2100 2000 2200
Connection ~ 2000 2100
Wire Wire Line
	2000 1600 2000 1700
Connection ~ 2000 1600
Wire Wire Line
	1500 2500 1500 2600
Wire Wire Line
	2000 2500 2000 2600
Connection ~ 2000 2500
Wire Wire Line
	2000 2000 2000 2100
Connection ~ 2000 2000
Wire Wire Line
	2000 1500 2000 1600
Connection ~ 2000 1500
Wire Wire Line
	2000 2400 2000 2500
Connection ~ 2000 2400
Wire Wire Line
	2000 1900 2000 2000
Connection ~ 2000 1900
Wire Wire Line
	2000 1400 2000 1500
Connection ~ 2000 1400
Wire Wire Line
	2000 2300 2000 2400
Wire Wire Line
	2000 2200 2000 2300
Connection ~ 2000 2300
Wire Wire Line
	2000 1800 2000 1900
Wire Wire Line
	2000 1700 2000 1800
Connection ~ 2000 1800
Wire Wire Line
	2000 1300 2000 1400
Connection ~ 2000 1300
Wire Wire Line
	2000 1200 2000 1300
Connection ~ 2000 1200
Wire Wire Line
	2000 1100 2000 1200
Connection ~ 2000 1100
Wire Wire Line
	2000 1000 2000 1100
Wire Wire Line
	2000 900  2000 1000
Connection ~ 2000 1000
$Comp
L Connector:Conn_02x20_Odd_Even J3
U 1 1 5EBE1E8F
P 1700 1800
F 0 "J3" H 1750 2917 50  0000 C CNN
F 1 "LSHM-120-02.5-L-DV-A-N-K-TR" H 1750 2826 50  0000 C CNN
F 2 "" H 1700 1800 50  0001 C CNN
F 3 "~" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Text HLabel 1500 2700 0    50   Input ~ 0
3V3
Text HLabel 1500 2800 0    50   BiDi ~ 0
PROBE_I2C_SDA
Text HLabel 2000 2800 2    50   BiDi ~ 0
PROBE_I2C_SCL
$Comp
L special-azonenberg:RCLAMP0542T U11
U 1 1 5ECE818C
P 3650 2550
F 0 "U11" H 3650 2500 60  0000 L CNN
F 1 "RCLAMP0542T" H 3650 2400 60  0000 L CNN
F 2 "" H 3650 2550 60  0000 C CNN
F 3 "" H 3650 2550 60  0000 C CNN
	1    3650 2550
	1    0    0    -1  
$EndComp
Text Label 3200 1900 2    50   ~ 0
CH2
Wire Wire Line
	3200 1900 3350 1900
Wire Wire Line
	3350 1900 3350 2000
Connection ~ 3350 1900
Text Label 3200 2100 2    50   ~ 0
CH3
Wire Wire Line
	3200 2100 3350 2100
Wire Wire Line
	3350 2100 3350 2200
Connection ~ 3350 2100
Text Label 3200 2400 2    50   ~ 0
GND
Wire Wire Line
	3200 2400 3350 2400
Wire Wire Line
	3350 2400 3350 2500
Connection ~ 3350 2400
$Comp
L special-azonenberg:RCLAMP0542T U12
U 1 1 5ECE92F3
P 5150 1550
F 0 "U12" H 5150 1500 60  0000 L CNN
F 1 "RCLAMP0542T" H 5150 1400 60  0000 L CNN
F 2 "" H 5150 1550 60  0000 C CNN
F 3 "" H 5150 1550 60  0000 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
Text Label 4700 900  2    50   ~ 0
CH4
Wire Wire Line
	4700 900  4850 900 
Wire Wire Line
	4850 900  4850 1000
Connection ~ 4850 900 
Text Label 4700 1100 2    50   ~ 0
CH5
Wire Wire Line
	4700 1100 4850 1100
Wire Wire Line
	4850 1100 4850 1200
Connection ~ 4850 1100
Text Label 4700 1400 2    50   ~ 0
GND
Wire Wire Line
	4700 1400 4850 1400
Wire Wire Line
	4850 1400 4850 1500
Connection ~ 4850 1400
$Comp
L special-azonenberg:RCLAMP0542T U13
U 1 1 5ECE9309
P 5150 2550
F 0 "U13" H 5150 2500 60  0000 L CNN
F 1 "RCLAMP0542T" H 5150 2400 60  0000 L CNN
F 2 "" H 5150 2550 60  0000 C CNN
F 3 "" H 5150 2550 60  0000 C CNN
	1    5150 2550
	1    0    0    -1  
$EndComp
Text Label 4700 1900 2    50   ~ 0
CH6
Wire Wire Line
	4700 1900 4850 1900
Wire Wire Line
	4850 1900 4850 2000
Connection ~ 4850 1900
Text Label 4700 2100 2    50   ~ 0
CH7
Wire Wire Line
	4700 2100 4850 2100
Wire Wire Line
	4850 2100 4850 2200
Connection ~ 4850 2100
Text Label 4700 2400 2    50   ~ 0
GND
Wire Wire Line
	4700 2400 4850 2400
Wire Wire Line
	4850 2400 4850 2500
Connection ~ 4850 2400
Text HLabel 1500 900  0    50   Input ~ 0
GND
Text Notes 1400 4100 0    50   ~ 0
Input termination
$Comp
L device:R R7
U 1 1 5ED1E4E2
P 1750 4250
F 0 "R7" V 1700 4000 50  0000 C CNN
F 1 "49.9" V 1750 4250 50  0000 C CNN
F 2 "" V 1680 4250 50  0001 C CNN
F 3 "" H 1750 4250 50  0001 C CNN
	1    1750 4250
	0    1    1    0   
$EndComp
Text Label 1400 4250 2    50   ~ 0
CH0
Wire Wire Line
	1400 4250 1600 4250
Text Label 2050 4250 0    50   ~ 0
GND
Wire Wire Line
	2050 4250 1900 4250
$Comp
L device:R R17
U 1 1 5ED203A0
P 1750 4350
F 0 "R17" V 1700 4100 50  0000 C CNN
F 1 "49.9" V 1750 4350 50  0000 C CNN
F 2 "" V 1680 4350 50  0001 C CNN
F 3 "" H 1750 4350 50  0001 C CNN
	1    1750 4350
	0    1    1    0   
$EndComp
$Comp
L device:R R19
U 1 1 5ED2078E
P 1750 4450
F 0 "R19" V 1700 4200 50  0000 C CNN
F 1 "49.9" V 1750 4450 50  0000 C CNN
F 2 "" V 1680 4450 50  0001 C CNN
F 3 "" H 1750 4450 50  0001 C CNN
	1    1750 4450
	0    1    1    0   
$EndComp
$Comp
L device:R R21
U 1 1 5ED209BA
P 1750 4550
F 0 "R21" V 1700 4300 50  0000 C CNN
F 1 "49.9" V 1750 4550 50  0000 C CNN
F 2 "" V 1680 4550 50  0001 C CNN
F 3 "" H 1750 4550 50  0001 C CNN
	1    1750 4550
	0    1    1    0   
$EndComp
$Comp
L device:R R23
U 1 1 5ED20B49
P 1750 4650
F 0 "R23" V 1700 4400 50  0000 C CNN
F 1 "49.9" V 1750 4650 50  0000 C CNN
F 2 "" V 1680 4650 50  0001 C CNN
F 3 "" H 1750 4650 50  0001 C CNN
	1    1750 4650
	0    1    1    0   
$EndComp
$Comp
L device:R R69
U 1 1 5ED20CA0
P 1750 4750
F 0 "R69" V 1700 4500 50  0000 C CNN
F 1 "49.9" V 1750 4750 50  0000 C CNN
F 2 "" V 1680 4750 50  0001 C CNN
F 3 "" H 1750 4750 50  0001 C CNN
	1    1750 4750
	0    1    1    0   
$EndComp
$Comp
L device:R R70
U 1 1 5ED20E4D
P 1750 4850
F 0 "R70" V 1700 4600 50  0000 C CNN
F 1 "49.9" V 1750 4850 50  0000 C CNN
F 2 "" V 1680 4850 50  0001 C CNN
F 3 "" H 1750 4850 50  0001 C CNN
	1    1750 4850
	0    1    1    0   
$EndComp
$Comp
L device:R R71
U 1 1 5ED210CC
P 1750 4950
F 0 "R71" V 1700 4700 50  0000 C CNN
F 1 "49.9" V 1750 4950 50  0000 C CNN
F 2 "" V 1680 4950 50  0001 C CNN
F 3 "" H 1750 4950 50  0001 C CNN
	1    1750 4950
	0    1    1    0   
$EndComp
Text Label 1400 4350 2    50   ~ 0
CH1
Wire Wire Line
	1400 4350 1600 4350
Text Label 1400 4450 2    50   ~ 0
CH2
Wire Wire Line
	1400 4450 1600 4450
Text Label 1400 4550 2    50   ~ 0
CH3
Wire Wire Line
	1400 4550 1600 4550
Text Label 1400 4650 2    50   ~ 0
CH4
Wire Wire Line
	1400 4650 1600 4650
Text Label 1400 4750 2    50   ~ 0
CH5
Wire Wire Line
	1400 4750 1600 4750
Text Label 1400 4850 2    50   ~ 0
CH6
Wire Wire Line
	1400 4850 1600 4850
Text Label 1400 4950 2    50   ~ 0
CH7
Wire Wire Line
	1400 4950 1600 4950
Wire Wire Line
	1900 4950 2050 4950
Wire Wire Line
	2050 4950 2050 4850
Wire Wire Line
	1900 4350 2050 4350
Connection ~ 2050 4350
Wire Wire Line
	2050 4350 2050 4250
Wire Wire Line
	1900 4450 2050 4450
Connection ~ 2050 4450
Wire Wire Line
	2050 4450 2050 4350
Wire Wire Line
	1900 4550 2050 4550
Connection ~ 2050 4550
Wire Wire Line
	2050 4550 2050 4450
Wire Wire Line
	1900 4650 2050 4650
Connection ~ 2050 4650
Wire Wire Line
	2050 4650 2050 4550
Wire Wire Line
	1900 4750 2050 4750
Connection ~ 2050 4750
Wire Wire Line
	2050 4750 2050 4650
Wire Wire Line
	1900 4850 2050 4850
Connection ~ 2050 4850
Wire Wire Line
	2050 4850 2050 4750
$EndSCHEMATC
