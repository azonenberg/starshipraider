EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AKL-AD3 amplifier VNA adapter"
Date "2021-12-28"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L passive-azonenberg:Conn_01x10_shielded J1
U 1 1 61CBE064
P 1850 2400
F 0 "J1" H 1768 3117 50  0000 C CNN
F 1 "Conn_01x10_shielded" H 1768 3026 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_LSHM-105-02.5-L-DV-A-S-K-TR" H 1850 2400 50  0001 C CNN
F 3 "~" H 1850 2400 50  0001 C CNN
	1    1850 2400
	-1   0    0    -1  
$EndComp
Text Label 2050 2200 0    50   ~ 0
IN_R_N
Text Label 2050 2600 0    50   ~ 0
IN_R_P
Text Label 2050 2500 0    50   ~ 0
GND
Text Label 2050 2400 0    50   ~ 0
GND
Text Label 2050 2300 0    50   ~ 0
GND
Text Label 2050 2100 0    50   ~ 0
GND
Text Label 2050 2000 0    50   ~ 0
GND
Text Label 2050 1900 0    50   ~ 0
GND
Text Label 2050 2700 0    50   ~ 0
GND
Text Label 2050 2800 0    50   ~ 0
GND
Text Label 2050 2900 0    50   ~ 0
GND
$Comp
L Connector:Conn_Coaxial J2
U 1 1 61CC057A
P 4050 1800
F 0 "J2" H 4150 1775 50  0000 L CNN
F 1 "32K243-40ML5" H 4150 1684 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_ROSENBERGER_32K243_40ML5" H 4050 1800 50  0001 C CNN
F 3 "" H 4050 1800 50  0001 C CNN
	1    4050 1800
	1    0    0    -1  
$EndComp
Text Label 3900 1800 2    50   ~ 0
IN_R_N
Text Label 4050 2150 2    50   ~ 0
GND
Wire Wire Line
	4050 2000 4050 2150
$Comp
L Connector:Conn_Coaxial J3
U 1 1 61CC174B
P 4050 2350
F 0 "J3" H 4150 2325 50  0000 L CNN
F 1 "32K243-40ML5" H 4150 2234 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_ROSENBERGER_32K243_40ML5" H 4050 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
Text Label 3900 2350 2    50   ~ 0
IN_R_P
Text Label 4050 2700 2    50   ~ 0
GND
Wire Wire Line
	4050 2550 4050 2700
$EndSCHEMATC
