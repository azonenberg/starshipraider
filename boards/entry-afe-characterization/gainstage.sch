EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-16"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L analog-azonenberg:ADL5205 U?
U 2 1 5E744B89
P 2800 2700
AR Path="/5E744B89" Ref="U?"  Part="2" 
AR Path="/5E743C43/5E744B89" Ref="U2"  Part="2" 
F 0 "U2" H 3325 3325 50  0000 C CNN
F 1 "ADL5205" H 3325 3234 50  0000 C CNN
F 2 "" H 2800 2750 50  0001 C CNN
F 3 "" H 2800 2750 50  0001 C CNN
	2    2800 2700
	1    0    0    -1  
$EndComp
$Comp
L analog-azonenberg:ADL5205 U?
U 3 1 5E744B8F
P 2800 1850
AR Path="/5E744B8F" Ref="U?"  Part="3" 
AR Path="/5E743C43/5E744B8F" Ref="U2"  Part="3" 
F 0 "U2" H 3325 2475 50  0000 C CNN
F 1 "ADL5205" H 3325 2384 50  0000 C CNN
F 2 "" H 2800 1900 50  0001 C CNN
F 3 "" H 2800 1900 50  0001 C CNN
	3    2800 1850
	1    0    0    -1  
$EndComp
$Comp
L analog-azonenberg:ADL5205 U?
U 1 1 5E748048
P 9250 6100
AR Path="/5E748048" Ref="U?"  Part="1" 
AR Path="/5E743C43/5E748048" Ref="U2"  Part="1" 
F 0 "U2" H 9825 8125 50  0000 C CNN
F 1 "ADL5205" H 9825 8034 50  0000 C CNN
F 2 "" H 9250 6150 50  0001 C CNN
F 3 "" H 9250 6150 50  0001 C CNN
	1    9250 6100
	1    0    0    -1  
$EndComp
Text HLabel 2700 1450 0    50   Input ~ 0
GAIN_PWRUP
Text HLabel 2700 1650 0    50   Input ~ 0
VSHIFTED_P
Text HLabel 2700 1750 0    50   Input ~ 0
VSHIFTED_N
Text HLabel 3950 1650 2    50   Output ~ 0
VGAIN_P
Text HLabel 3950 1750 2    50   Output ~ 0
VGAIN_N
Text Notes 2800 2800 0    50   ~ 0
Break unused amp channel out to SMAs
Text Label 2700 2300 2    50   ~ 0
GAIN_PWRUP
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5E74ED29
P 1550 2650
F 0 "J3" H 1400 2600 50  0000 C CNN
F 1 "SMA" H 1400 2500 50  0000 C CNN
F 2 "" H 1550 2650 50  0001 C CNN
F 3 "" H 1550 2650 50  0001 C CNN
	1    1550 2650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5E750662
P 1550 2450
F 0 "J2" H 1400 2400 50  0000 C CNN
F 1 "SMA" H 1400 2300 50  0000 C CNN
F 2 "" H 1550 2450 50  0001 C CNN
F 3 "" H 1550 2450 50  0001 C CNN
	1    1550 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 2850 1550 2850
Text Label 1350 2850 2    50   ~ 0
GND
Text Label 2200 2500 0    50   ~ 0
GIN_P
Wire Wire Line
	1700 2450 1800 2450
Text Label 2200 2600 0    50   ~ 0
GIN_N
Text Label 3950 2300 0    50   ~ 0
2V5_REF
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5E753967
P 4750 2450
F 0 "J4" H 4600 2400 50  0000 C CNN
F 1 "SMA" H 4600 2300 50  0000 C CNN
F 2 "" H 4750 2450 50  0001 C CNN
F 3 "" H 4750 2450 50  0001 C CNN
	1    4750 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	1800 2450 1800 2500
Wire Wire Line
	1800 2500 2700 2500
Wire Wire Line
	1700 2650 1800 2650
Wire Wire Line
	1800 2650 1800 2600
Wire Wire Line
	1800 2600 2700 2600
Wire Wire Line
	1350 2850 1350 2250
Wire Wire Line
	1350 2250 1550 2250
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5E7562B4
P 4750 2650
F 0 "J5" H 4600 2600 50  0000 C CNN
F 1 "SMA" H 4600 2500 50  0000 C CNN
F 2 "" H 4750 2650 50  0001 C CNN
F 3 "" H 4750 2650 50  0001 C CNN
	1    4750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2650 4500 2650
Wire Wire Line
	4500 2650 4500 2600
Wire Wire Line
	4500 2600 3950 2600
Wire Wire Line
	3950 2500 4500 2500
Wire Wire Line
	4500 2500 4500 2450
Wire Wire Line
	4500 2450 4600 2450
Wire Wire Line
	4750 2250 5050 2250
Wire Wire Line
	5050 2250 5050 2850
Wire Wire Line
	5050 2850 4750 2850
Text Label 5050 2850 0    50   ~ 0
GND
Text Label 4050 2500 0    50   ~ 0
GOUT_P
Text Label 4050 2600 0    50   ~ 0
GOUT_N
Text HLabel 3950 1450 2    50   Input ~ 0
2V5_REF
$EndSCHEMATC
