EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BNC Test"
Date "2021-12-26"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J1
U 1 1 61C8A56C
P 2550 3000
F 0 "J1" H 2503 3238 50  0000 C CNN
F 1 "51K201-400N5" H 2503 3147 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_BNC_ROSENBERGER_51K201_400N5" H 2550 3000 50  0001 C CNN
F 3 "" H 2550 3000 50  0001 C CNN
	1    2550 3000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 61C8ABED
P 4000 3000
F 0 "J2" H 4100 2975 50  0000 L CNN
F 1 "51K201-400N5" H 4100 2884 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_BNC_ROSENBERGER_51K201_400N5" H 4000 3000 50  0001 C CNN
F 3 "" H 4000 3000 50  0001 C CNN
	1    4000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3000 2700 3000
Wire Wire Line
	2550 3200 4000 3200
Text Label 3400 3200 0    50   ~ 0
GND
Text Label 3400 3000 0    50   ~ 0
SIGNAL
$EndSCHEMATC
