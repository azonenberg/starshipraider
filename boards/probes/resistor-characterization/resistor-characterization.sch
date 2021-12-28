EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Probe Tip Resistor Characterization Fixture"
Date "2021-12-28"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J1
U 1 1 61CB85E3
P 3050 2950
F 0 "J1" H 3003 3188 50  0000 C CNN
F 1 "32K243-40ML5" H 3003 3097 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_ROSENBERGER_32K243_40ML5" H 3050 2950 50  0001 C CNN
F 3 "" H 3050 2950 50  0001 C CNN
	1    3050 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 3150 3050 3150
$Comp
L Connector:Conn_Coaxial J2
U 1 1 61CB94FE
P 3950 2950
F 0 "J2" H 4050 2925 50  0000 L CNN
F 1 "32K243-40ML5" H 4050 2834 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_ROSENBERGER_32K243_40ML5" H 3950 2950 50  0001 C CNN
F 3 "" H 3950 2950 50  0001 C CNN
	1    3950 2950
	1    0    0    -1  
$EndComp
Text Label 3450 3150 0    50   ~ 0
GND
$EndSCHEMATC
