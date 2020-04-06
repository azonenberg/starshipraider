EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4750 2550 0    50   Output ~ 0
CH0
Text HLabel 6100 2450 0    50   Output ~ 0
CH1
Text HLabel 6200 2950 0    50   Output ~ 0
CH2
Text HLabel 5600 3300 0    50   Output ~ 0
CH3
Text HLabel 5650 3550 0    50   Output ~ 0
CH4
Text HLabel 6000 3700 0    50   Output ~ 0
CH5
Text HLabel 5800 4100 0    50   Output ~ 0
CH6
Text HLabel 5000 3850 0    50   Output ~ 0
CH7
$Comp
L Connector:Conn_02x08_Odd_Even J?
U 1 1 5EB9C468
P 2800 3750
AR Path="/5E895EEA/5EB9C468" Ref="J?"  Part="1" 
AR Path="/5EB9C468" Ref="J?"  Part="1" 
AR Path="/5EB58A52/5EB9C468" Ref="J2"  Part="1" 
F 0 "J2" H 2850 4267 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 2850 4176 50  0000 C CNN
F 2 "" H 2800 3750 50  0001 C CNN
F 3 "~" H 2800 3750 50  0001 C CNN
	1    2800 3750
	1    0    0    -1  
$EndComp
Text Label 2450 3450 2    50   ~ 0
GND
Wire Wire Line
	2450 3450 2600 3450
Wire Wire Line
	2600 3450 2600 3550
Connection ~ 2600 3450
Connection ~ 2600 3550
Wire Wire Line
	2600 3550 2600 3650
Connection ~ 2600 3650
Wire Wire Line
	2600 3650 2600 3750
Connection ~ 2600 3750
Wire Wire Line
	2600 3750 2600 3850
Connection ~ 2600 3850
Wire Wire Line
	2600 3850 2600 3950
Connection ~ 2600 3950
Wire Wire Line
	2600 3950 2600 4050
Connection ~ 2600 4050
Wire Wire Line
	2600 4050 2600 4150
$EndSCHEMATC
