EESchema Schematic File Version 5
LIBS:handheld-resistive-probe-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Handheld 20:1 Z0 probe"
Date "2019-05-09"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L device:R R1
U 1 1 5CB66BBA
P 5450 3200
F 0 "R1" V 5350 3200 50  0000 C CNN
F 1 "953" V 5450 3200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5380 3200 50  0001 C CNN
F 3 "" H 5450 3200 50  0001 C CNN
	1    5450 3200
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5CB67590
P 4500 3200
F 0 "J1" H 4453 3438 50  0000 C CNN
F 1 "Conn_Coaxial" H 4453 3347 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_MMCX_J_P_H_ST_EM1" H 4500 3200 50  0001 C CNN
F 3 "" H 4500 3200 50  0001 C CNN
	1    4500 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 3200 5300 3200
Text Label 4500 3400 0    50   ~ 0
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
Wire Wire Line
	4500 3400 5900 3400
Text Label 5625 3200 0    50   ~ 0
PROBE
Text Label 4750 3200 0    50   ~ 0
SIGNAL
Wire Wire Line
	5625 3200 5600 3200
Text Notes 5350 3025 0    50   ~ 0
Can't find any 953 ohm RF resistors!\n1K will work, but gives 21:1 gain at DC
$EndSCHEMATC
