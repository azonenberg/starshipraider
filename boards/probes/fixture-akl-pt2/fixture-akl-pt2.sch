EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AKL-PT2 test fixture"
Date "2021-03-20"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J1
U 1 1 6056562C
P 2450 1950
F 0 "J1" H 2403 2188 50  0000 C CNN
F 1 "901-10511-3" H 2403 2097 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_AMPHENOL_901_10511_3" H 2450 1950 50  0001 C CNN
F 3 "" H 2450 1950 50  0001 C CNN
	1    2450 1950
	-1   0    0    -1  
$EndComp
Text Label 2450 2350 2    50   ~ 0
GND
Wire Wire Line
	2450 2350 2450 2150
Text Label 2900 1950 0    50   ~ 0
SIG_TERM
$Comp
L device:R R1
U 1 1 60565D97
P 3400 2100
F 0 "R1" H 3470 2146 50  0000 L CNN
F 1 "FC0402E50R0BTT0" H 3470 2055 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK_FLIPCHIP" V 3330 2100 50  0001 C CNN
F 3 "" H 3400 2100 50  0001 C CNN
	1    3400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1950 3400 1950
Text Label 3400 2350 2    50   ~ 0
GND
Wire Wire Line
	3400 2350 3400 2250
$Comp
L Connector:Conn_Coaxial J2
U 1 1 60566584
P 2450 2850
F 0 "J2" H 2403 3088 50  0000 C CNN
F 1 "901-10511-3" H 2403 2997 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_AMPHENOL_901_10511_3" H 2450 2850 50  0001 C CNN
F 3 "" H 2450 2850 50  0001 C CNN
	1    2450 2850
	-1   0    0    -1  
$EndComp
Text Label 2450 3150 2    50   ~ 0
GND
Wire Wire Line
	2450 3150 2450 3050
Text Label 2900 2850 0    50   ~ 0
SIG_UNTERM
Wire Wire Line
	2900 2850 2600 2850
$EndSCHEMATC
