EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 8 15
Title "MAXWELL Main Board"
Date "2020-06-15"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L xilinx-azonenberg:XC7KxT-FFG676 U?
U 4 1 5F2D098E
P 10500 5800
AR Path="/5EDD71F2/5F2D098E" Ref="U?"  Part="9" 
AR Path="/5EDD723A/5F2D098E" Ref="U?"  Part="4" 
AR Path="/5EDD723A/5F2B9784/5F2D098E" Ref="U2"  Part="4" 
F 0 "U2" H 10500 5750 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 10500 5650 50  0000 L CNN
F 2 "" H 10500 5800 50  0001 C CNN
F 3 "" H 10500 5800 50  0001 C CNN
	4    10500 5800
	1    0    0    -1  
$EndComp
$Comp
L xilinx-azonenberg:XC7KxT-FFG676 U?
U 5 1 5F2D0994
P 13000 5800
AR Path="/5EDD71F2/5F2D0994" Ref="U?"  Part="9" 
AR Path="/5EDD723A/5F2D0994" Ref="U?"  Part="5" 
AR Path="/5EDD723A/5F2B9784/5F2D0994" Ref="U2"  Part="5" 
F 0 "U2" H 13000 5750 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 13000 5650 50  0000 L CNN
F 2 "" H 13000 5800 50  0001 C CNN
F 3 "" H 13000 5800 50  0001 C CNN
	5    13000 5800
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 1 1 5F818C59
P 1400 5550
AR Path="/5EDD723A/5F2BB4CD/5F818C59" Ref="J?"  Part="1" 
AR Path="/5EDD723A/5F2B9784/5F818C59" Ref="J15"  Part="1" 
F 0 "J15" H 1400 5500 50  0000 L CNN
F 1 "CONN_SFF8087" H 1400 5400 50  0000 L CNN
F 2 "" H 1400 5550 50  0001 C CNN
F 3 "" H 1400 5550 50  0001 C CNN
	1    1400 5550
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 2 1 5F818C5F
P 1400 3100
AR Path="/5EDD723A/5F2BB4CD/5F818C5F" Ref="J?"  Part="2" 
AR Path="/5EDD723A/5F2B9784/5F818C5F" Ref="J15"  Part="2" 
F 0 "J15" H 1400 3050 50  0000 L CNN
F 1 "CONN_SFF8087" H 1400 2950 50  0000 L CNN
F 2 "" H 1400 3100 50  0001 C CNN
F 3 "" H 1400 3100 50  0001 C CNN
	2    1400 3100
	1    0    0    -1  
$EndComp
Text Label 1300 850  2    50   ~ 0
POD0_D0_P
Text Label 1300 950  2    50   ~ 0
POD0_D0_N
Text Label 1300 1150 2    50   ~ 0
POD0_D1_P
Text Label 1300 1250 2    50   ~ 0
POD0_D1_N
Text Label 1300 1750 2    50   ~ 0
POD0_D3_P
Text Label 1300 1850 2    50   ~ 0
POD0_D3_N
Text Label 1300 1450 2    50   ~ 0
POD0_D2_P
Text Label 1300 1550 2    50   ~ 0
POD0_D2_N
Text Label 1300 2050 2    50   ~ 0
POD0_D4_P
Text Label 1300 2150 2    50   ~ 0
POD0_D4_N
Text Label 1300 2350 2    50   ~ 0
POD0_D5_P
Text Label 1300 2450 2    50   ~ 0
POD0_D5_N
Text Label 1300 2650 2    50   ~ 0
POD0_D6_P
Text Label 1300 2750 2    50   ~ 0
POD0_D6_N
Text Label 1300 2950 2    50   ~ 0
POD0_D7_P
Text Label 1300 3050 2    50   ~ 0
POD0_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 2 1 5F818C75
P 2800 3100
AR Path="/5EDD723A/5F2BB4CD/5F818C75" Ref="J?"  Part="2" 
AR Path="/5EDD723A/5F2B9784/5F818C75" Ref="J16"  Part="2" 
F 0 "J16" H 2800 3050 50  0000 L CNN
F 1 "CONN_SFF8087" H 2800 2950 50  0000 L CNN
F 2 "" H 2800 3100 50  0001 C CNN
F 3 "" H 2800 3100 50  0001 C CNN
	2    2800 3100
	1    0    0    -1  
$EndComp
Text Label 2700 850  2    50   ~ 0
POD1_D0_P
Text Label 2700 950  2    50   ~ 0
POD1_D0_N
Text Label 2700 1150 2    50   ~ 0
POD1_D1_P
Text Label 2700 1250 2    50   ~ 0
POD1_D1_N
Text Label 2700 1750 2    50   ~ 0
POD1_D3_P
Text Label 2700 1850 2    50   ~ 0
POD1_D3_N
Text Label 2700 1450 2    50   ~ 0
POD1_D2_P
Text Label 2700 1550 2    50   ~ 0
POD1_D2_N
Text Label 2700 2050 2    50   ~ 0
POD1_D4_P
Text Label 2700 2150 2    50   ~ 0
POD1_D4_N
Text Label 2700 2350 2    50   ~ 0
POD1_D5_P
Text Label 2700 2450 2    50   ~ 0
POD1_D5_N
Text Label 2700 2650 2    50   ~ 0
POD1_D6_P
Text Label 2700 2750 2    50   ~ 0
POD1_D6_N
Text Label 2700 2950 2    50   ~ 0
POD1_D7_P
Text Label 2700 3050 2    50   ~ 0
POD1_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 2 1 5F818C8B
P 4200 3100
AR Path="/5EDD723A/5F2BB4CD/5F818C8B" Ref="J?"  Part="2" 
AR Path="/5EDD723A/5F2B9784/5F818C8B" Ref="J17"  Part="2" 
F 0 "J17" H 4200 3050 50  0000 L CNN
F 1 "CONN_SFF8087" H 4200 2950 50  0000 L CNN
F 2 "" H 4200 3100 50  0001 C CNN
F 3 "" H 4200 3100 50  0001 C CNN
	2    4200 3100
	1    0    0    -1  
$EndComp
Text Label 4100 950  2    50   ~ 0
POD2_D0_N
Text Label 4100 1150 2    50   ~ 0
POD2_D1_P
Text Label 4100 1250 2    50   ~ 0
POD2_D1_N
Text Label 4100 1750 2    50   ~ 0
POD2_D3_P
Text Label 4100 1850 2    50   ~ 0
POD2_D3_N
Text Label 4100 1450 2    50   ~ 0
POD2_D2_P
Text Label 4100 1550 2    50   ~ 0
POD2_D2_N
Text Label 4100 2050 2    50   ~ 0
POD2_D4_P
Text Label 4100 2150 2    50   ~ 0
POD2_D4_N
Text Label 4100 2350 2    50   ~ 0
POD2_D5_P
Text Label 4100 2450 2    50   ~ 0
POD2_D5_N
Text Label 4100 2650 2    50   ~ 0
POD2_D6_P
Text Label 4100 2750 2    50   ~ 0
POD2_D6_N
Text Label 4100 2950 2    50   ~ 0
POD2_D7_P
Text Label 4100 3050 2    50   ~ 0
POD2_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 2 1 5F818CA1
P 5600 3100
AR Path="/5EDD723A/5F2BB4CD/5F818CA1" Ref="J?"  Part="2" 
AR Path="/5EDD723A/5F2B9784/5F818CA1" Ref="J18"  Part="2" 
F 0 "J18" H 5600 3050 50  0000 L CNN
F 1 "CONN_SFF8087" H 5600 2950 50  0000 L CNN
F 2 "" H 5600 3100 50  0001 C CNN
F 3 "" H 5600 3100 50  0001 C CNN
	2    5600 3100
	1    0    0    -1  
$EndComp
Text Label 5500 850  2    50   ~ 0
POD3_D0_P
Text Label 5500 950  2    50   ~ 0
POD3_D0_N
Text Label 5500 1150 2    50   ~ 0
POD3_D1_P
Text Label 5500 1250 2    50   ~ 0
POD3_D1_N
Text Label 5500 1750 2    50   ~ 0
POD3_D3_P
Text Label 5500 1850 2    50   ~ 0
POD3_D3_N
Text Label 5500 1450 2    50   ~ 0
POD3_D2_P
Text Label 5500 1550 2    50   ~ 0
POD3_D2_N
Text Label 5500 2050 2    50   ~ 0
POD3_D4_P
Text Label 5500 2150 2    50   ~ 0
POD3_D4_N
Text Label 5500 2350 2    50   ~ 0
POD3_D5_P
Text Label 5500 2450 2    50   ~ 0
POD3_D5_N
Text Label 5500 2650 2    50   ~ 0
POD3_D6_P
Text Label 5500 2750 2    50   ~ 0
POD3_D6_N
Text Label 5500 2950 2    50   ~ 0
POD3_D7_P
Text Label 5500 3050 2    50   ~ 0
POD3_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 2 1 5F818CB7
P 7000 3100
AR Path="/5EDD723A/5F2BB4CD/5F818CB7" Ref="J?"  Part="2" 
AR Path="/5EDD723A/5F2B9784/5F818CB7" Ref="J19"  Part="2" 
F 0 "J19" H 7000 3050 50  0000 L CNN
F 1 "CONN_SFF8087" H 7000 2950 50  0000 L CNN
F 2 "" H 7000 3100 50  0001 C CNN
F 3 "" H 7000 3100 50  0001 C CNN
	2    7000 3100
	1    0    0    -1  
$EndComp
Text Label 6900 850  2    50   ~ 0
POD4_D0_P
Text Label 6900 950  2    50   ~ 0
POD4_D0_N
Text Label 6900 1150 2    50   ~ 0
POD4_D1_P
Text Label 6900 1250 2    50   ~ 0
POD4_D1_N
Text Label 6900 1750 2    50   ~ 0
POD4_D3_P
Text Label 6900 1850 2    50   ~ 0
POD4_D3_N
Text Label 6900 1450 2    50   ~ 0
POD4_D2_P
Text Label 6900 1550 2    50   ~ 0
POD4_D2_N
Text Label 6900 2050 2    50   ~ 0
POD4_D4_P
Text Label 6900 2150 2    50   ~ 0
POD4_D4_N
Text Label 6900 2350 2    50   ~ 0
POD4_D5_P
Text Label 6900 2450 2    50   ~ 0
POD4_D5_N
Text Label 6900 2650 2    50   ~ 0
POD4_D6_P
Text Label 6900 2750 2    50   ~ 0
POD4_D6_N
Text Label 6900 2950 2    50   ~ 0
POD4_D7_P
Text Label 6900 3050 2    50   ~ 0
POD4_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 2 1 5F818CCD
P 8400 3100
AR Path="/5EDD723A/5F2BB4CD/5F818CCD" Ref="J?"  Part="2" 
AR Path="/5EDD723A/5F2B9784/5F818CCD" Ref="J20"  Part="2" 
F 0 "J20" H 8400 3050 50  0000 L CNN
F 1 "CONN_SFF8087" H 8400 2950 50  0000 L CNN
F 2 "" H 8400 3100 50  0001 C CNN
F 3 "" H 8400 3100 50  0001 C CNN
	2    8400 3100
	1    0    0    -1  
$EndComp
Text Label 8300 850  2    50   ~ 0
POD5_D0_P
Text Label 8300 950  2    50   ~ 0
POD5_D0_N
Text Label 8300 1150 2    50   ~ 0
POD5_D1_P
Text Label 8300 1250 2    50   ~ 0
POD5_D1_N
Text Label 8300 1750 2    50   ~ 0
POD5_D3_P
Text Label 8300 1850 2    50   ~ 0
POD5_D3_N
Text Label 8300 1450 2    50   ~ 0
POD5_D2_P
Text Label 8300 1550 2    50   ~ 0
POD5_D2_N
Text Label 8300 2050 2    50   ~ 0
POD5_D4_P
Text Label 8300 2150 2    50   ~ 0
POD5_D4_N
Text Label 8300 2350 2    50   ~ 0
POD5_D5_P
Text Label 8300 2450 2    50   ~ 0
POD5_D5_N
Text Label 8300 2650 2    50   ~ 0
POD5_D6_P
Text Label 8300 2750 2    50   ~ 0
POD5_D6_N
Text Label 8300 2950 2    50   ~ 0
POD5_D7_P
Text Label 8300 3050 2    50   ~ 0
POD5_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 1 1 5F818CE3
P 2800 5550
AR Path="/5EDD723A/5F2BB4CD/5F818CE3" Ref="J?"  Part="1" 
AR Path="/5EDD723A/5F2B9784/5F818CE3" Ref="J16"  Part="1" 
F 0 "J16" H 2800 5500 50  0000 L CNN
F 1 "CONN_SFF8087" H 2800 5400 50  0000 L CNN
F 2 "" H 2800 5550 50  0001 C CNN
F 3 "" H 2800 5550 50  0001 C CNN
	1    2800 5550
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 1 1 5F818CE9
P 4200 5550
AR Path="/5EDD723A/5F2BB4CD/5F818CE9" Ref="J?"  Part="1" 
AR Path="/5EDD723A/5F2B9784/5F818CE9" Ref="J17"  Part="1" 
F 0 "J17" H 4200 5500 50  0000 L CNN
F 1 "CONN_SFF8087" H 4200 5400 50  0000 L CNN
F 2 "" H 4200 5550 50  0001 C CNN
F 3 "" H 4200 5550 50  0001 C CNN
	1    4200 5550
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 1 1 5F818CEF
P 5600 5550
AR Path="/5EDD723A/5F2BB4CD/5F818CEF" Ref="J?"  Part="1" 
AR Path="/5EDD723A/5F2B9784/5F818CEF" Ref="J18"  Part="1" 
F 0 "J18" H 5600 5500 50  0000 L CNN
F 1 "CONN_SFF8087" H 5600 5400 50  0000 L CNN
F 2 "" H 5600 5550 50  0001 C CNN
F 3 "" H 5600 5550 50  0001 C CNN
	1    5600 5550
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 1 1 5F818CF5
P 7000 5550
AR Path="/5EDD723A/5F2BB4CD/5F818CF5" Ref="J?"  Part="1" 
AR Path="/5EDD723A/5F2B9784/5F818CF5" Ref="J19"  Part="1" 
F 0 "J19" H 7000 5500 50  0000 L CNN
F 1 "CONN_SFF8087" H 7000 5400 50  0000 L CNN
F 2 "" H 7000 5550 50  0001 C CNN
F 3 "" H 7000 5550 50  0001 C CNN
	1    7000 5550
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J?
U 1 1 5F818CFB
P 8400 5550
AR Path="/5EDD723A/5F2BB4CD/5F818CFB" Ref="J?"  Part="1" 
AR Path="/5EDD723A/5F2B9784/5F818CFB" Ref="J20"  Part="1" 
F 0 "J20" H 8400 5500 50  0000 L CNN
F 1 "CONN_SFF8087" H 8400 5400 50  0000 L CNN
F 2 "" H 8400 5550 50  0001 C CNN
F 3 "" H 8400 5550 50  0001 C CNN
	1    8400 5550
	1    0    0    -1  
$EndComp
Text HLabel 1300 3800 0    50   Output ~ 0
POD0_UART_TX
Text HLabel 1300 4100 0    50   Input ~ 0
POD0_UART_RX
Text HLabel 2700 3800 0    50   Output ~ 0
POD1_UART_TX
Text HLabel 2700 4100 0    50   Input ~ 0
POD1_UART_RX
Text HLabel 4100 3800 0    50   Output ~ 0
POD2_UART_TX
Text HLabel 4100 4100 0    50   Input ~ 0
POD2_UART_RX
Text HLabel 5500 3800 0    50   Output ~ 0
POD3_UART_TX
Text HLabel 5500 4100 0    50   Input ~ 0
POD3_UART_RX
Text HLabel 6900 3800 0    50   Output ~ 0
POD4_UART_TX
Text HLabel 6900 4100 0    50   Input ~ 0
POD4_UART_RX
Text HLabel 8300 3800 0    50   Output ~ 0
POD5_UART_TX
Text HLabel 8300 4100 0    50   Input ~ 0
POD5_UART_RX
Text Label 1300 4400 2    50   ~ 0
GND
Wire Wire Line
	1300 4400 1300 4500
Connection ~ 1300 4500
Wire Wire Line
	1300 4500 1300 4600
Connection ~ 1300 4600
Wire Wire Line
	1300 4600 1300 4700
Connection ~ 1300 4700
Wire Wire Line
	1300 4700 1300 4800
Connection ~ 1300 4800
Wire Wire Line
	1300 4800 1300 4900
Connection ~ 1300 4900
Wire Wire Line
	1300 4900 1300 5000
Connection ~ 1300 5000
Wire Wire Line
	1300 5000 1300 5100
Connection ~ 1300 5100
Wire Wire Line
	1300 5100 1300 5200
Connection ~ 1300 5200
Wire Wire Line
	1300 5200 1300 5300
Connection ~ 1300 5300
Wire Wire Line
	1300 5300 1300 5400
Connection ~ 1300 5400
Wire Wire Line
	1300 5400 1300 5500
Text Label 2700 4400 2    50   ~ 0
GND
Wire Wire Line
	2700 4400 2700 4500
Connection ~ 2700 4500
Wire Wire Line
	2700 4500 2700 4600
Connection ~ 2700 4600
Wire Wire Line
	2700 4600 2700 4700
Connection ~ 2700 4700
Wire Wire Line
	2700 4700 2700 4800
Connection ~ 2700 4800
Wire Wire Line
	2700 4800 2700 4900
Connection ~ 2700 4900
Wire Wire Line
	2700 4900 2700 5000
Connection ~ 2700 5000
Wire Wire Line
	2700 5000 2700 5100
Connection ~ 2700 5100
Wire Wire Line
	2700 5100 2700 5200
Connection ~ 2700 5200
Wire Wire Line
	2700 5200 2700 5300
Connection ~ 2700 5300
Wire Wire Line
	2700 5300 2700 5400
Connection ~ 2700 5400
Wire Wire Line
	2700 5400 2700 5500
Text Label 2200 5500 0    50   ~ 0
GND
Text Label 3600 5500 0    50   ~ 0
GND
Text Label 4100 4400 2    50   ~ 0
GND
Wire Wire Line
	4100 4400 4100 4500
Connection ~ 4100 4500
Wire Wire Line
	4100 4500 4100 4600
Connection ~ 4100 4600
Wire Wire Line
	4100 4600 4100 4700
Connection ~ 4100 4700
Wire Wire Line
	4100 4700 4100 4800
Connection ~ 4100 4800
Wire Wire Line
	4100 4800 4100 4900
Connection ~ 4100 4900
Wire Wire Line
	4100 4900 4100 5000
Connection ~ 4100 5000
Wire Wire Line
	4100 5000 4100 5100
Connection ~ 4100 5100
Wire Wire Line
	4100 5100 4100 5200
Connection ~ 4100 5200
Wire Wire Line
	4100 5200 4100 5300
Connection ~ 4100 5300
Wire Wire Line
	4100 5300 4100 5400
Connection ~ 4100 5400
Wire Wire Line
	4100 5400 4100 5500
Text Label 5000 5500 0    50   ~ 0
GND
Text Label 6400 5500 0    50   ~ 0
GND
Text Label 5500 4400 2    50   ~ 0
GND
Wire Wire Line
	5500 4400 5500 4500
Connection ~ 5500 4500
Wire Wire Line
	5500 4500 5500 4600
Connection ~ 5500 4600
Wire Wire Line
	5500 4600 5500 4700
Connection ~ 5500 4700
Wire Wire Line
	5500 4700 5500 4800
Connection ~ 5500 4800
Wire Wire Line
	5500 4800 5500 4900
Connection ~ 5500 4900
Wire Wire Line
	5500 4900 5500 5000
Connection ~ 5500 5000
Wire Wire Line
	5500 5000 5500 5100
Connection ~ 5500 5100
Wire Wire Line
	5500 5100 5500 5200
Connection ~ 5500 5200
Wire Wire Line
	5500 5200 5500 5300
Connection ~ 5500 5300
Wire Wire Line
	5500 5300 5500 5400
Connection ~ 5500 5400
Wire Wire Line
	5500 5400 5500 5500
Text Label 6900 4400 2    50   ~ 0
GND
Wire Wire Line
	6900 4400 6900 4500
Connection ~ 6900 4500
Wire Wire Line
	6900 4500 6900 4600
Connection ~ 6900 4600
Wire Wire Line
	6900 4600 6900 4700
Connection ~ 6900 4700
Wire Wire Line
	6900 4700 6900 4800
Connection ~ 6900 4800
Wire Wire Line
	6900 4800 6900 4900
Connection ~ 6900 4900
Wire Wire Line
	6900 4900 6900 5000
Connection ~ 6900 5000
Wire Wire Line
	6900 5000 6900 5100
Connection ~ 6900 5100
Wire Wire Line
	6900 5100 6900 5200
Connection ~ 6900 5200
Wire Wire Line
	6900 5200 6900 5300
Connection ~ 6900 5300
Wire Wire Line
	6900 5300 6900 5400
Connection ~ 6900 5400
Wire Wire Line
	6900 5400 6900 5500
Text Label 8300 4400 2    50   ~ 0
GND
Wire Wire Line
	8300 4400 8300 4500
Connection ~ 8300 4500
Wire Wire Line
	8300 4500 8300 4600
Connection ~ 8300 4600
Wire Wire Line
	8300 4600 8300 4700
Connection ~ 8300 4700
Wire Wire Line
	8300 4700 8300 4800
Connection ~ 8300 4800
Wire Wire Line
	8300 4800 8300 4900
Connection ~ 8300 4900
Wire Wire Line
	8300 4900 8300 5000
Connection ~ 8300 5000
Wire Wire Line
	8300 5000 8300 5100
Connection ~ 8300 5100
Wire Wire Line
	8300 5100 8300 5200
Connection ~ 8300 5200
Wire Wire Line
	8300 5200 8300 5300
Connection ~ 8300 5300
Wire Wire Line
	8300 5300 8300 5400
Connection ~ 8300 5400
Wire Wire Line
	8300 5400 8300 5500
Text Label 7800 5500 0    50   ~ 0
GND
Text Label 9200 5500 0    50   ~ 0
GND
Text HLabel 1300 3500 0    50   Input ~ 0
P0_12V0
Text HLabel 2700 3500 0    50   Input ~ 0
P1_12V0
Text HLabel 4100 3500 0    50   Input ~ 0
P2_12V0
Text HLabel 5500 3500 0    50   Input ~ 0
P3_12V0
Text HLabel 6900 3500 0    50   Input ~ 0
P4_12V0
Text HLabel 8300 3500 0    50   Input ~ 0
P5_12V0
Text HLabel 1300 3900 0    50   Output ~ 0
P0_PRESENT
Text HLabel 2700 3900 0    50   Output ~ 0
P1_PRESENT
Text HLabel 4100 3900 0    50   Output ~ 0
P2_PRESENT
Text HLabel 5500 3900 0    50   Output ~ 0
P3_PRESENT
Text HLabel 6900 3900 0    50   Output ~ 0
P4_PRESENT
Text HLabel 8300 3900 0    50   Output ~ 0
P5_PRESENT
Wire Wire Line
	1300 3500 1300 3600
Connection ~ 1300 3600
Wire Wire Line
	1300 3600 1300 3700
Text Label 1300 4000 2    50   ~ 0
P0_12V0
Text Label 1300 4200 2    50   ~ 0
P0_12V0
Wire Wire Line
	2700 3500 2700 3600
Connection ~ 2700 3600
Wire Wire Line
	2700 3600 2700 3700
Connection ~ 4100 3600
Wire Wire Line
	4100 3600 4100 3700
Wire Wire Line
	5500 3500 5500 3600
Connection ~ 5500 3600
Wire Wire Line
	5500 3600 5500 3700
Wire Wire Line
	6900 3500 6900 3600
Connection ~ 6900 3600
Wire Wire Line
	6900 3600 6900 3700
Connection ~ 8300 3600
Wire Wire Line
	8300 3600 8300 3700
Wire Wire Line
	8300 3500 8300 3600
Wire Wire Line
	4100 3500 4100 3600
Text Label 2700 4000 2    50   ~ 0
P1_12V0
Text Label 2700 4200 2    50   ~ 0
P1_12V0
Text Label 4100 4000 2    50   ~ 0
P2_12V0
Text Label 4100 4200 2    50   ~ 0
P2_12V0
Text Label 5500 4000 2    50   ~ 0
P3_12V0
Text Label 5500 4200 2    50   ~ 0
P3_12V0
Text Label 6900 4000 2    50   ~ 0
P4_12V0
Text Label 6900 4200 2    50   ~ 0
P4_12V0
Text Label 8300 4000 2    50   ~ 0
P5_12V0
Text Label 8300 4200 2    50   ~ 0
P5_12V0
Text Label 10300 2950 2    50   ~ 0
POD0_D0_P
Text Label 10300 3050 2    50   ~ 0
POD0_D0_N
Text Label 10300 950  2    50   ~ 0
POD0_D1_P
Text Label 10300 1050 2    50   ~ 0
POD0_D1_N
Text Label 10300 1350 2    50   ~ 0
POD0_D3_P
Text Label 10300 1450 2    50   ~ 0
POD0_D3_N
Text Label 10300 1150 2    50   ~ 0
POD0_D2_P
Text Label 10300 1250 2    50   ~ 0
POD0_D2_N
Text Label 10300 1550 2    50   ~ 0
POD0_D4_P
Text Label 10300 1650 2    50   ~ 0
POD0_D4_N
Text Label 10300 1750 2    50   ~ 0
POD0_D5_P
Text Label 10300 1850 2    50   ~ 0
POD0_D5_N
Text Label 10300 1950 2    50   ~ 0
POD0_D6_P
Text Label 10300 2050 2    50   ~ 0
POD0_D6_N
Text Label 10300 2150 2    50   ~ 0
POD0_D7_P
Text Label 10300 2250 2    50   ~ 0
POD0_D7_N
NoConn ~ 10300 850 
Text Label 10300 3150 2    50   ~ 0
POD1_D0_P
Text Label 10300 3250 2    50   ~ 0
POD1_D0_N
Text Label 10300 2350 2    50   ~ 0
POD1_D1_P
Text Label 10300 2450 2    50   ~ 0
POD1_D1_N
Text Label 10300 2750 2    50   ~ 0
POD1_D3_P
Text Label 10300 2550 2    50   ~ 0
POD1_D2_P
Text Label 10300 2650 2    50   ~ 0
POD1_D2_N
Text Label 10300 3550 2    50   ~ 0
POD1_D4_P
Text Label 10300 3650 2    50   ~ 0
POD1_D4_N
Text Label 10300 3750 2    50   ~ 0
POD1_D5_P
Text Label 10300 3850 2    50   ~ 0
POD1_D5_N
Text Label 10300 3950 2    50   ~ 0
POD1_D6_P
Text Label 10300 4050 2    50   ~ 0
POD1_D6_N
Text Label 10300 4150 2    50   ~ 0
POD1_D7_P
Text Label 10300 4250 2    50   ~ 0
POD1_D7_N
Text Label 10300 2850 2    50   ~ 0
POD1_D3_N
Text Label 4100 850  2    50   ~ 0
POD2_D0_P
Text Label 10300 3450 2    50   ~ 0
POD2_D0_N
Text Label 10300 4350 2    50   ~ 0
POD2_D1_P
Text Label 10300 4450 2    50   ~ 0
POD2_D1_N
Text Label 10300 4750 2    50   ~ 0
POD2_D3_P
Text Label 10300 4850 2    50   ~ 0
POD2_D3_N
Text Label 10300 4550 2    50   ~ 0
POD2_D2_P
Text Label 10300 4650 2    50   ~ 0
POD2_D2_N
Text Label 10300 4950 2    50   ~ 0
POD2_D4_P
Text Label 10300 5050 2    50   ~ 0
POD2_D4_N
Text Label 10300 5150 2    50   ~ 0
POD2_D5_P
Text Label 10300 5250 2    50   ~ 0
POD2_D5_N
Text Label 10300 5350 2    50   ~ 0
POD2_D6_P
Text Label 10300 5450 2    50   ~ 0
POD2_D6_N
Text Label 10300 5550 2    50   ~ 0
POD2_D7_P
Text Label 10300 5650 2    50   ~ 0
POD2_D7_N
Text Label 10300 3350 2    50   ~ 0
POD2_D0_P
NoConn ~ 10300 5750
NoConn ~ 12800 850 
NoConn ~ 12800 5750
Text Label 12800 2950 2    50   ~ 0
POD3_D0_P
Text Label 12800 3050 2    50   ~ 0
POD3_D0_N
Text Label 12800 950  2    50   ~ 0
POD3_D1_P
Text Label 12800 1050 2    50   ~ 0
POD3_D1_N
Text Label 12800 1350 2    50   ~ 0
POD3_D3_P
Text Label 12800 1450 2    50   ~ 0
POD3_D3_N
Text Label 12800 1150 2    50   ~ 0
POD3_D2_P
Text Label 12800 1250 2    50   ~ 0
POD3_D2_N
Text Label 12800 1550 2    50   ~ 0
POD3_D4_P
Text Label 12800 1650 2    50   ~ 0
POD3_D4_N
Text Label 12800 1750 2    50   ~ 0
POD3_D5_P
Text Label 12800 1850 2    50   ~ 0
POD3_D5_N
Text Label 12800 1950 2    50   ~ 0
POD3_D6_P
Text Label 12800 2050 2    50   ~ 0
POD3_D6_N
Text Label 12800 2150 2    50   ~ 0
POD3_D7_P
Text Label 12800 2250 2    50   ~ 0
POD3_D7_N
Text Label 12800 3150 2    50   ~ 0
POD4_D0_P
Text Label 12800 3250 2    50   ~ 0
POD4_D0_N
Text Label 12800 2350 2    50   ~ 0
POD4_D1_P
Text Label 12800 2450 2    50   ~ 0
POD4_D1_N
Text Label 12800 2750 2    50   ~ 0
POD4_D3_P
Text Label 12800 2850 2    50   ~ 0
POD4_D3_N
Text Label 12800 2550 2    50   ~ 0
POD4_D2_P
Text Label 12800 2650 2    50   ~ 0
POD4_D2_N
Text Label 12800 3550 2    50   ~ 0
POD4_D4_P
Text Label 12800 3650 2    50   ~ 0
POD4_D4_N
Text Label 12800 3750 2    50   ~ 0
POD4_D5_P
Text Label 12800 3850 2    50   ~ 0
POD4_D5_N
Text Label 12800 3950 2    50   ~ 0
POD4_D6_P
Text Label 12800 4050 2    50   ~ 0
POD4_D6_N
Text Label 12800 4150 2    50   ~ 0
POD4_D7_P
Text Label 12800 4250 2    50   ~ 0
POD4_D7_N
Text Label 12800 3350 2    50   ~ 0
POD5_D0_P
Text Label 12800 3450 2    50   ~ 0
POD5_D0_N
Text Label 12800 4350 2    50   ~ 0
POD5_D1_P
Text Label 12800 4450 2    50   ~ 0
POD5_D1_N
Text Label 12800 4750 2    50   ~ 0
POD5_D3_P
Text Label 12800 4850 2    50   ~ 0
POD5_D3_N
Text Label 12800 4550 2    50   ~ 0
POD5_D2_P
Text Label 12800 4650 2    50   ~ 0
POD5_D2_N
Text Label 12800 4950 2    50   ~ 0
POD5_D4_P
Text Label 12800 5050 2    50   ~ 0
POD5_D4_N
Text Label 12800 5150 2    50   ~ 0
POD5_D5_P
Text Label 12800 5250 2    50   ~ 0
POD5_D5_N
Text Label 12800 5350 2    50   ~ 0
POD5_D6_P
Text Label 12800 5450 2    50   ~ 0
POD5_D6_N
Text Label 12800 5550 2    50   ~ 0
POD5_D7_P
Text Label 12800 5650 2    50   ~ 0
POD5_D7_N
$EndSCHEMATC
