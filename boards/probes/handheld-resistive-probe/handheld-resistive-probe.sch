EESchema Schematic File Version 4
LIBS:handheld-resistive-probe-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Handheld 10:1 Transmission Line probe"
Date "2020-05-17"
Rev "0.8"
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
F 1 "901-10511-3" H 4003 3347 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_AMPHENOL_901_10511_3" H 4050 3200 50  0001 C CNN
F 3 "" H 4050 3200 50  0001 C CNN
	1    4050 3200
	-1   0    0    -1  
$EndComp
Text Label 4050 3400 0    50   ~ 0
GND
$Comp
L device:R R2
U 1 1 5D097CEB
P 7200 3200
F 0 "R2" V 7100 3200 50  0000 C CNN
F 1 "FC0402E75R0BTT0" V 7000 2450 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK_FLIPCHIP" V 7130 3200 50  0001 C CNN
F 3 "" H 7200 3200 50  0001 C CNN
	1    7200 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R1
U 1 1 5CB66BBA
P 6900 3200
F 0 "R1" V 6800 3200 50  0000 C CNN
F 1 "FC0402E75R0BTT0" V 6600 2750 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK_FLIPCHIP" V 6830 3200 50  0001 C CNN
F 3 "" H 6900 3200 50  0001 C CNN
	1    6900 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R3
U 1 1 5D098F11
P 7500 3200
F 0 "R3" V 7400 3200 50  0000 C CNN
F 1 "FC0402E1000BTT0" V 7600 3100 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK_FLIPCHIP" V 7430 3200 50  0001 C CNN
F 3 "" H 7500 3200 50  0001 C CNN
	1    7500 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R6
U 1 1 5E8F12BA
P 6600 3200
F 0 "R6" V 6500 3200 50  0000 C CNN
F 1 "FC0402E75R0BTT0" V 6200 3050 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK_FLIPCHIP" V 6530 3200 50  0001 C CNN
F 3 "" H 6600 3200 50  0001 C CNN
	1    6600 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R5
U 1 1 5E8F18B0
P 6300 3200
F 0 "R5" V 6200 3200 50  0000 C CNN
F 1 "FC0402E75R0BTT0" V 5800 3350 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK_FLIPCHIP" V 6230 3200 50  0001 C CNN
F 3 "" H 6300 3200 50  0001 C CNN
	1    6300 3200
	0    1    -1   0   
$EndComp
$Comp
L device:R R4
U 1 1 5E8F1EBD
P 6000 3200
F 0 "R4" V 5900 3200 50  0000 C CNN
F 1 "FC0402E50R0BTT0" V 6100 3100 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK_FLIPCHIP" V 5930 3200 50  0001 C CNN
F 3 "" H 6000 3200 50  0001 C CNN
	1    6000 3200
	0    1    -1   0   
$EndComp
Wire Wire Line
	5850 3200 4200 3200
Wire Notes Line
	6200 3350 6200 3850
Wire Notes Line
	6200 3850 7300 3850
Wire Notes Line
	7300 3850 7300 3350
$Comp
L Connector:Conn_01x01 J2
U 1 1 5E8F3B06
P 8450 3200
F 0 "J2" H 8530 3242 50  0000 L CNN
F 1 "PROBETIP" H 8530 3151 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_MILLMAX_0339_EDGELAUNCH" H 8450 3200 50  0001 C CNN
F 3 "~" H 8450 3200 50  0001 C CNN
	1    8450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3200 8250 3200
$Comp
L Connector:Conn_01x01 J3
U 1 1 5E8F5CB0
P 8450 3500
F 0 "J3" H 8530 3542 50  0000 L CNN
F 1 "PROBETIP" H 8530 3451 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_MILLMAX_0339_EDGELAUNCH" H 8450 3500 50  0001 C CNN
F 3 "~" H 8450 3500 50  0001 C CNN
	1    8450 3500
	1    0    0    -1  
$EndComp
Text Label 8250 3500 2    50   ~ 0
GND
$EndSCHEMATC
