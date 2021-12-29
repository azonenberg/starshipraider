EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AKL-PT5"
Date "2021-11-24"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J1
U 1 1 619EB59D
P 3950 3500
F 0 "J1" H 3903 3738 50  0000 C CNN
F 1 "SMPM" H 3903 3647 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMPM_AMPHENOL_925-169J-51PT" H 3950 3500 50  0001 C CNN
F 3 "" H 3950 3500 50  0001 C CNN
	1    3950 3500
	-1   0    0    -1  
$EndComp
Text Label 4100 3700 0    50   ~ 0
GND
Text Notes 5750 3550 0    50   ~ 0
Additional 100 ohm damping resistor\nto be soldered to tip area
$Comp
L Connector:Conn_01x01 J2
U 1 1 619ECB3B
P 5350 3500
F 0 "J2" H 5430 3542 50  0000 L CNN
F 1 "TIPRES" H 5430 3451 50  0000 L CNN
F 2 "azonenberg_pcb:EDGELAUNCH_350UM" H 5350 3500 50  0001 C CNN
F 3 "~" H 5350 3500 50  0001 C CNN
	1    5350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3500 4100 3500
$Comp
L Connector:Conn_01x01 J3
U 1 1 619EEB2B
P 5350 3700
F 0 "J3" H 5430 3742 50  0000 L CNN
F 1 "TIPRES" H 5430 3651 50  0000 L CNN
F 2 "azonenberg_pcb:EDGELAUNCH_350UM" H 5350 3700 50  0001 C CNN
F 3 "~" H 5350 3700 50  0001 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3700 5150 3700
$Comp
L device:R R1
U 1 1 619ED558
P 4550 3500
F 0 "R1" V 4343 3500 50  0000 C CNN
F 1 "348" V 4434 3500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 4480 3500 50  0001 C CNN
F 3 "" H 4550 3500 50  0001 C CNN
	1    4550 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3500 5150 3500
$EndSCHEMATC
