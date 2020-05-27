EESchema Schematic File Version 4
LIBS:la-pod-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "Logic Analyzer Pod"
Date "2020-05-26"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5900 2950 2    50   Output ~ 0
VREF0
Text HLabel 5900 3050 2    50   Output ~ 0
VREF1
Text HLabel 5900 3150 2    50   Output ~ 0
VREF2
Text HLabel 5900 3250 2    50   Output ~ 0
VREF3
Text HLabel 5900 3350 2    50   Output ~ 0
VREF4
Text HLabel 5900 3450 2    50   Output ~ 0
VREF5
Text HLabel 5900 3550 2    50   Output ~ 0
VREF6
Text HLabel 5900 3650 2    50   Output ~ 0
VREF7
$Comp
L analog-azonenberg:DACx0508_WQFN U6
U 1 1 5EA6B4BC
P 5100 4000
F 0 "U6" H 5450 5275 50  0000 C CNN
F 1 "DAC60508ZRTET" H 5450 5184 50  0000 C CNN
F 2 "" H 5100 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
Text HLabel 5000 2950 0    50   Input ~ 0
3V3
Text HLabel 5000 3050 0    50   Input ~ 0
5V0
Text HLabel 5000 3150 0    50   Input ~ 0
GND
Wire Wire Line
	5000 3150 5000 3250
Text HLabel 5000 3650 0    50   Input ~ 0
DAC_CS_N
Text HLabel 5000 3750 0    50   Input ~ 0
DAC_SCK
Text HLabel 5000 3850 0    50   Input ~ 0
DAC_MOSI
Text HLabel 5000 3950 0    50   Output ~ 0
DAC_MISO
$Comp
L device:C C33
U 1 1 5EA6D04D
P 5100 4400
F 0 "C33" H 5215 4446 50  0000 L CNN
F 1 "0.47 uF" H 5215 4355 50  0000 L CNN
F 2 "" H 5138 4250 50  0001 C CNN
F 3 "" H 5100 4400 50  0001 C CNN
	1    5100 4400
	1    0    0    -1  
$EndComp
Text Label 5100 4250 2    50   ~ 0
3V3
Text Label 5100 4550 2    50   ~ 0
GND
$Comp
L device:C C34
U 1 1 5EA6E20A
P 5700 4400
F 0 "C34" H 5815 4446 50  0000 L CNN
F 1 "4.7 uF" H 5815 4355 50  0000 L CNN
F 2 "" H 5738 4250 50  0001 C CNN
F 3 "" H 5700 4400 50  0001 C CNN
	1    5700 4400
	1    0    0    -1  
$EndComp
Text Label 5700 4250 2    50   ~ 0
5V0
Wire Wire Line
	5700 4550 5100 4550
$Comp
L device:C C35
U 1 1 5EA6ED77
P 6300 4400
F 0 "C35" H 6415 4446 50  0000 L CNN
F 1 "0.47 uF" H 6415 4355 50  0000 L CNN
F 2 "" H 6338 4250 50  0001 C CNN
F 3 "" H 6300 4400 50  0001 C CNN
	1    6300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4550 5700 4550
Connection ~ 5700 4550
Wire Wire Line
	5700 4250 6300 4250
Text Label 5000 3450 2    50   ~ 0
DAC_REF
Text Label 7200 4250 2    50   ~ 0
DAC_REF
$Comp
L device:C C36
U 1 1 5EA6F907
P 7200 4400
F 0 "C36" H 7315 4446 50  0000 L CNN
F 1 "0.47 uF" H 7315 4355 50  0000 L CNN
F 2 "" H 7238 4250 50  0001 C CNN
F 3 "" H 7200 4400 50  0001 C CNN
	1    7200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4550 7200 4550
Connection ~ 6300 4550
$Comp
L Connector:Conn_01x01 TP1
U 1 1 5EA6FE7D
P 8350 4250
F 0 "TP1" H 8430 4292 50  0000 L CNN
F 1 "TESTPOINT" H 8430 4201 50  0000 L CNN
F 2 "" H 8350 4250 50  0001 C CNN
F 3 "~" H 8350 4250 50  0001 C CNN
	1    8350 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 TP2
U 1 1 5EA7056E
P 8350 4500
F 0 "TP2" H 8430 4542 50  0000 L CNN
F 1 "TESTCLIP" H 8430 4451 50  0000 L CNN
F 2 "" H 8350 4500 50  0001 C CNN
F 3 "~" H 8350 4500 50  0001 C CNN
	1    8350 4500
	1    0    0    -1  
$EndComp
Text Label 8150 4500 2    50   ~ 0
GND
Text Label 8150 4250 2    50   ~ 0
DAC_REF
Text Label 5100 4800 2    50   ~ 0
DAC_CS_N
$Comp
L device:R R5
U 1 1 5ED043A3
P 5200 4950
F 0 "R5" H 5270 4996 50  0000 L CNN
F 1 "10K" H 5270 4905 50  0000 L CNN
F 2 "" V 5130 4950 50  0001 C CNN
F 3 "" H 5200 4950 50  0001 C CNN
	1    5200 4950
	1    0    0    -1  
$EndComp
Text Label 5100 5100 2    50   ~ 0
3V3
Wire Wire Line
	5200 4800 5100 4800
Wire Wire Line
	5100 5100 5200 5100
$EndSCHEMATC
