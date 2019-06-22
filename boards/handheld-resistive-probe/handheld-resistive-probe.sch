EESchema Schematic File Version 5
LIBS:handheld-resistive-probe-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Handheld 20:1 Z0 probe"
Date "2019-06-21"
Rev "0.4"
Comp "Antikernel Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5CB67590
P 4050 3200
F 0 "J1" H 4003 3438 50  0000 C CNN
F 1 "Conn_Coaxial" H 4003 3347 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_MMCX_J_P_H_ST_EM1" H 4050 3200 50  0001 C CNN
F 3 "" H 4050 3200 50  0001 C CNN
	1    4050 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 3200 4700 3200
Text Label 4050 3400 0    50   ~ 0
GND
$Comp
L Connector:Conn_01x01 J2
U 1 1 5CB692A0
P 6100 3400
F 0 "J2" H 6180 3442 50  0000 L CNN
F 1 "Conn_01x01" H 6180 3351 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x1" H 6100 3400 50  0001 C CNN
F 3 "~" H 6100 3400 50  0001 C CNN
	1    6100 3400
	1    0    0    -1  
$EndComp
Text Label 6950 3200 0    50   ~ 0
PROBE
Text Label 4300 3200 0    50   ~ 0
SIGNAL
Text Notes 4750 2450 0    50   ~ 0
Five resistors allows flexible configs with less shunt capacitance than 1.\n* 5x 200R = 1K (21:1)\n* 4x 100R, 1x 50R = 450 (10:1)\n* 4x 50R, 1x 0R = 200 (5:1)
$Comp
L device:R R2
U 1 1 5D097CEB
P 5750 3200
F 0 "R2" V 5650 3200 50  0000 C CNN
F 1 "100" V 5750 3200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5680 3200 50  0001 C CNN
F 3 "" H 5750 3200 50  0001 C CNN
	1    5750 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R1
U 1 1 5CB66BBA
P 5450 3200
F 0 "R1" V 5350 3200 50  0000 C CNN
F 1 "50" V 5450 3200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5380 3200 50  0001 C CNN
F 3 "" H 5450 3200 50  0001 C CNN
	1    5450 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R3
U 1 1 5D098F11
P 6050 3200
F 0 "R3" V 5950 3200 50  0000 C CNN
F 1 "100" V 6050 3200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5980 3200 50  0001 C CNN
F 3 "" H 6050 3200 50  0001 C CNN
	1    6050 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R4
U 1 1 5D099302
P 6350 3200
F 0 "R4" V 6250 3200 50  0000 C CNN
F 1 "100" V 6350 3200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6280 3200 50  0001 C CNN
F 3 "" H 6350 3200 50  0001 C CNN
	1    6350 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R5
U 1 1 5D099902
P 6650 3200
F 0 "R5" V 6550 3200 50  0000 C CNN
F 1 "100" V 6650 3200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6580 3200 50  0001 C CNN
F 3 "" H 6650 3200 50  0001 C CNN
	1    6650 3200
	0    1    -1   0   
$EndComp
Wire Wire Line
	6800 3200 6950 3200
$Comp
L device:C C1
U 1 1 5D0D656F
P 5150 3050
F 0 "C1" H 5265 3096 50  0000 L CNN
F 1 "500 fF" H 5265 3005 50  0000 L CNN
F 2 "azonenberg_pcb:CAP_MICROSTRIP_0p5PF" H 5188 2900 50  0001 C CNN
F 3 "" H 5150 3050 50  0001 C CNN
	1    5150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3200 5300 3200
Text Label 5150 2900 0    50   ~ 0
GND
Wire Wire Line
	4050 3400 5900 3400
$Comp
L device:C C2
U 1 1 5D0D837E
P 4700 3050
F 0 "C2" H 4815 3096 50  0000 L CNN
F 1 "500 fF" H 4815 3005 50  0000 L CNN
F 2 "azonenberg_pcb:CAP_MICROSTRIP_0p5PF" H 4738 2900 50  0001 C CNN
F 3 "" H 4700 3050 50  0001 C CNN
	1    4700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2900 4700 2900
Wire Wire Line
	5150 3200 4700 3200
Connection ~ 5150 3200
Connection ~ 4700 3200
$EndSCHEMATC
