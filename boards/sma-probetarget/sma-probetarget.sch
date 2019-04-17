EESchema Schematic File Version 4
EELAYER 29 0
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
L Connector:Conn_Coaxial J3
U 1 1 5CB68B0D
P 4050 2200
F 0 "J3" H 4150 2175 50  0000 L CNN
F 1 "Conn_Coaxial" H 4150 2084 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4050 2200 50  0001 C CNN
F 3 "" H 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5CB6939C
P 3050 2200
F 0 "J1" H 3003 2438 50  0000 C CNN
F 1 "Conn_Coaxial" H 3003 2347 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 3050 2200 50  0001 C CNN
F 3 "" H 3050 2200 50  0001 C CNN
	1    3050 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3200 2200 3900 2200
Wire Wire Line
	3050 2400 4050 2400
Text Label 3350 2400 0    50   ~ 0
GND
Text Label 3350 2200 0    50   ~ 0
FOO_P
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5CB69EC9
P 3050 2600
F 0 "J2" H 3150 2482 50  0000 L CNN
F 1 "Conn_Coaxial" H 3150 2573 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 3050 2600 50  0001 C CNN
F 3 "" H 3050 2600 50  0001 C CNN
	1    3050 2600
	-1   0    0    1   
$EndComp
Connection ~ 3050 2400
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5CB6AA20
P 4050 2600
F 0 "J4" H 4150 2482 50  0000 L CNN
F 1 "Conn_Coaxial" H 4150 2573 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4050 2600 50  0001 C CNN
F 3 "" H 4050 2600 50  0001 C CNN
	1    4050 2600
	1    0    0    1   
$EndComp
Connection ~ 4050 2400
Wire Wire Line
	3900 2600 3200 2600
Text Label 3350 2600 0    50   ~ 0
FOO_N
$Comp
L Connector:Conn_01x01 J5
U 1 1 5CB6C65C
P 3550 1800
F 0 "J5" H 3468 1575 50  0000 C CNN
F 1 "Conn_01x01" H 3468 1666 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 3550 1800 50  0001 C CNN
F 3 "~" H 3550 1800 50  0001 C CNN
	1    3550 1800
	-1   0    0    1   
$EndComp
Text Label 3750 1800 0    50   ~ 0
GND
$Comp
L Connector:Conn_01x01 J7
U 1 1 5CB6ECBF
P 3550 1450
F 0 "J7" H 3468 1225 50  0000 C CNN
F 1 "Conn_01x01" H 3468 1316 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_BARETRACE_328UM" H 3550 1450 50  0001 C CNN
F 3 "~" H 3550 1450 50  0001 C CNN
	1    3550 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 1450 3750 1800
$Comp
L Connector:Conn_01x01 J6
U 1 1 5CB6F484
P 3550 1100
F 0 "J6" H 3468 875 50  0000 C CNN
F 1 "Conn_01x01" H 3468 966 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_BARETRACE_328UM" H 3550 1100 50  0001 C CNN
F 3 "~" H 3550 1100 50  0001 C CNN
	1    3550 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 1100 3750 1450
Connection ~ 3750 1450
$EndSCHEMATC
