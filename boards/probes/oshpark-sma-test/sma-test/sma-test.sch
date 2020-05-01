EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5EAC10CB
P 4600 2500
F 0 "J2" H 4700 2475 50  0000 L CNN
F 1 "Conn_Coaxial" H 4700 2384 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_AMPHENOL_901_10511_3" H 4600 2500 50  0001 C CNN
F 3 "" H 4600 2500 50  0001 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5EAC16CE
P 3750 2500
F 0 "J1" H 3703 2738 50  0000 C CNN
F 1 "Conn_Coaxial" H 3703 2647 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_AMPHENOL_901_10511_3" H 3750 2500 50  0001 C CNN
F 3 "" H 3750 2500 50  0001 C CNN
	1    3750 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3900 2500 4450 2500
Wire Wire Line
	4600 2700 3750 2700
Text Label 4050 2700 0    50   ~ 0
GND
Text Label 4050 2500 0    50   ~ 0
SIGNAL
$EndSCHEMATC
