EESchema Schematic File Version 2
LIBS:conn
LIBS:device
LIBS:analog-azonenberg
LIBS:cmos
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:sma-dcblock-cache
EELAYER 26 0
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
L BNC P1
U 1 1 58F64BAE
P 1300 1100
F 0 "P1" H 1401 1076 50  0000 L CNN
F 1 "SMA" H 1401 985 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 1300 1100 50  0001 C CNN
F 3 "" H 1300 1100 50  0000 C CNN
	1    1300 1100
	-1   0    0    -1  
$EndComp
$Comp
L BNC P2
U 1 1 58F64C6C
P 2750 1100
F 0 "P2" H 2851 1076 50  0000 L CNN
F 1 "SMA" H 2851 985 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 2750 1100 50  0001 C CNN
F 3 "" H 2750 1100 50  0000 C CNN
	1    2750 1100
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58F64CC5
P 2000 1100
F 0 "C1" V 1748 1100 50  0000 C CNN
F 1 "CL05B102KB5NCNC" V 1839 1100 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2038 950 50  0001 C CNN
F 3 "" H 2000 1100 50  0000 C CNN
	1    2000 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 1100 2150 1100
Wire Wire Line
	1850 1100 1450 1100
Wire Wire Line
	1000 1300 2750 1300
Text Label 1000 1300 2    60   ~ 0
GND
Connection ~ 1300 1300
$EndSCHEMATC
