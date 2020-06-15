EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 12
Title "MAXWELL Main Board"
Date "2020-06-14"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F0308DF
P 1000 1100
F 0 "J?" H 953 1338 50  0000 C CNN
F 1 "901-10511-3" H 953 1247 50  0000 C CNN
F 2 "" H 1000 1100 50  0001 C CNN
F 3 "" H 1000 1100 50  0001 C CNN
	1    1000 1100
	-1   0    0    -1  
$EndComp
Text Label 1350 1100 0    50   ~ 0
TRIG_IN
Wire Wire Line
	1350 1100 1150 1100
Text HLabel 1350 1300 2    50   Input ~ 0
GND
Wire Wire Line
	1350 1300 1000 1300
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F034A4A
P 1000 1700
F 0 "J?" H 953 1938 50  0000 C CNN
F 1 "901-10511-3" H 953 1847 50  0000 C CNN
F 2 "" H 1000 1700 50  0001 C CNN
F 3 "" H 1000 1700 50  0001 C CNN
	1    1000 1700
	-1   0    0    -1  
$EndComp
Text Label 1350 1700 0    50   ~ 0
REFCLK_IN
Wire Wire Line
	1350 1700 1150 1700
Text HLabel 1350 1900 2    50   Input ~ 0
GND
Wire Wire Line
	1350 1900 1000 1900
$Comp
L analog-azonenberg:LMH7322 U?
U 1 1 5F039E67
P 3950 2000
F 0 "U?" H 3875 3147 60  0000 C CNN
F 1 "LMH7322" H 3875 3041 60  0000 C CNN
F 2 "" H 3450 1950 60  0000 C CNN
F 3 "" H 3450 1950 60  0000 C CNN
	1    3950 2000
	1    0    0    -1  
$EndComp
$Comp
L analog-azonenberg:LMH7322 U?
U 2 1 5F03A9B1
P 3950 3300
F 0 "U?" H 3875 4447 60  0000 C CNN
F 1 "LMH7322" H 3875 4341 60  0000 C CNN
F 2 "" H 3450 3250 60  0000 C CNN
F 3 "" H 3450 3250 60  0000 C CNN
	2    3950 3300
	1    0    0    -1  
$EndComp
Text HLabel 7350 1800 0    50   Output ~ 0
TRIG_IN_P
Text HLabel 7350 1900 0    50   Output ~ 0
TRIG_IN_N
Text HLabel 7350 2100 0    50   Output ~ 0
REF_IN_P
Text HLabel 7350 2200 0    50   Output ~ 0
REF_IN_N
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F0401D6
P 1000 2350
F 0 "J?" H 953 2588 50  0000 C CNN
F 1 "901-10511-3" H 953 2497 50  0000 C CNN
F 2 "" H 1000 2350 50  0001 C CNN
F 3 "" H 1000 2350 50  0001 C CNN
	1    1000 2350
	-1   0    0    -1  
$EndComp
Text Label 1350 2350 0    50   ~ 0
PPS_IN
Wire Wire Line
	1350 2350 1150 2350
Text HLabel 1350 2550 2    50   Input ~ 0
GND
Wire Wire Line
	1350 2550 1000 2550
$Comp
L analog-azonenberg:LMH7322 U?
U 1 1 5F04094A
P 3950 4700
F 0 "U?" H 3875 5847 60  0000 C CNN
F 1 "LMH7322" H 3875 5741 60  0000 C CNN
F 2 "" H 3450 4650 60  0000 C CNN
F 3 "" H 3450 4650 60  0000 C CNN
	1    3950 4700
	1    0    0    -1  
$EndComp
Text HLabel 7350 2400 0    50   Output ~ 0
PPS_IN_P
Text HLabel 7350 2500 0    50   Output ~ 0
PPS_IN_N
$Comp
L analog-azonenberg:LMH7322 U?
U 2 1 5F0443EC
P 3950 6000
F 0 "U?" H 3875 7147 60  0000 C CNN
F 1 "LMH7322" H 3875 7041 60  0000 C CNN
F 2 "" H 3450 5950 60  0000 C CNN
F 3 "" H 3450 5950 60  0000 C CNN
	2    3950 6000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
