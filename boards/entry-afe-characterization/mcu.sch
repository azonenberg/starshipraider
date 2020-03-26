EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-26"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L st-azonenberg:STM32F031-QFN28 U4
U 1 1 5E7D02B3
P 3600 3850
F 0 "U4" H 3600 3800 50  0000 L CNN
F 1 "STM32F031G6U6TR" H 3600 3700 50  0000 L CNN
F 2 "" H 3600 3850 50  0001 C CNN
F 3 "" H 3600 3850 50  0001 C CNN
	1    3600 3850
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F031-QFN28 U4
U 2 1 5E7D1448
P 5400 4350
F 0 "U4" H 5400 4300 50  0000 L CNN
F 1 "STM32F031G6U6TR" H 5400 4200 50  0000 L CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	2    5400 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05 J8
U 1 1 5E7D3D4D
P 2250 2550
F 0 "J8" H 2168 2967 50  0000 C CNN
F 1 "Conn_01x05" H 2168 2876 50  0000 C CNN
F 2 "" H 2250 2550 50  0001 C CNN
F 3 "~" H 2250 2550 50  0001 C CNN
	1    2250 2550
	-1   0    0    -1  
$EndComp
Text HLabel 2450 2350 2    50   Input ~ 0
3V3
Text HLabel 2450 2450 2    50   Input ~ 0
GND
Text Label 2700 2550 0    50   ~ 0
SWCLK
Wire Wire Line
	2700 2550 2450 2550
Text Label 2700 2650 0    50   ~ 0
SWDIO
Wire Wire Line
	2700 2650 2450 2650
Text Label 2700 2750 0    50   ~ 0
RST_N
Wire Wire Line
	2700 2750 2450 2750
Text Label 3500 3000 2    50   ~ 0
3V3
Text Label 3500 3100 2    50   ~ 0
3V3
Text Label 3500 3200 2    50   ~ 0
GND
$Comp
L device:C C6
U 1 1 5E7D8CE5
P 3850 2400
F 0 "C6" H 3965 2446 50  0000 L CNN
F 1 "4.7 uF" H 3965 2355 50  0000 L CNN
F 2 "" H 3888 2250 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
Text Label 3850 2250 2    50   ~ 0
3V3
Text Label 3850 2550 2    50   ~ 0
GND
$Comp
L device:C C7
U 1 1 5E7D94D8
P 4350 2400
F 0 "C7" H 4465 2446 50  0000 L CNN
F 1 "0.47 uF" H 4465 2355 50  0000 L CNN
F 2 "" H 4388 2250 50  0001 C CNN
F 3 "" H 4350 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
$Comp
L device:C C8
U 1 1 5E7D977E
P 4900 2400
F 0 "C8" H 5015 2446 50  0000 L CNN
F 1 "0.47 uF" H 5015 2355 50  0000 L CNN
F 2 "" H 4938 2250 50  0001 C CNN
F 3 "" H 4900 2400 50  0001 C CNN
	1    4900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2250 4350 2250
Connection ~ 4350 2250
Wire Wire Line
	4350 2250 3850 2250
Wire Wire Line
	3850 2550 4350 2550
Connection ~ 4350 2550
Wire Wire Line
	4350 2550 4900 2550
Text Label 3500 3400 2    50   ~ 0
RST_N
Text Label 2350 3050 2    50   ~ 0
GND
Wire Wire Line
	2350 3050 2450 3050
$Comp
L device:R R35
U 1 1 5E7DB482
P 3200 3500
F 0 "R35" V 3150 3350 50  0000 C CNN
F 1 "10K" V 3200 3500 50  0000 C CNN
F 2 "" V 3130 3500 50  0001 C CNN
F 3 "" H 3200 3500 50  0001 C CNN
	1    3200 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3500 3500 3500
Text Label 2900 3500 2    50   ~ 0
GND
Wire Wire Line
	2900 3500 3050 3500
Text HLabel 5300 3800 0    50   Output ~ 0
GAIN_PWRUP
Text HLabel 5300 3400 0    50   Output ~ 0
GAIN2_PWRUP
Text Notes 5400 4950 0    50   ~ 0
ADL5205 has 2.4V Vih\nso 3.3V inputs are OK\n\nSPI_SDIO and OVERVOLTAGE_N must be 5V tolerant
Text HLabel 5300 4300 0    50   Output ~ 0
VGA_PERF_MODE
Text HLabel 5300 3000 0    50   Output ~ 0
SPI_CS_A_N
Text HLabel 5300 3100 0    50   Output ~ 0
SPI_CS_B_N
Text HLabel 6850 3200 0    50   Output ~ 0
SPI_SCK
Text HLabel 6850 3300 0    50   BiDi ~ 0
SPI_SDIO
Text Label 5300 4100 2    50   ~ 0
SWDIO
Text Label 5300 4200 2    50   ~ 0
SWCLK
$Comp
L Connector:Conn_01x04 J9
U 1 1 5E7DF065
P 2250 4150
F 0 "J9" H 2168 4467 50  0000 C CNN
F 1 "Conn_01x04" H 2168 4376 50  0000 C CNN
F 2 "" H 2250 4150 50  0001 C CNN
F 3 "~" H 2250 4150 50  0001 C CNN
	1    2250 4150
	-1   0    0    -1  
$EndComp
Text Label 2450 4050 0    50   ~ 0
3V3
Text Label 2450 4150 0    50   ~ 0
UART_TX
Text Label 2450 4250 0    50   ~ 0
UART_RX
Text Label 2450 4350 0    50   ~ 0
GND
Text Label 5300 3900 2    50   ~ 0
UART_TX
Text Label 5300 4000 2    50   ~ 0
UART_RX
NoConn ~ 5300 3600
NoConn ~ 5300 3500
Wire Wire Line
	6850 3300 6850 3400
NoConn ~ 6850 3600
NoConn ~ 3500 3700
NoConn ~ 3500 3800
Text HLabel 5300 3300 0    50   Output ~ 0
DAC_CS_N
Text HLabel 5300 3200 0    50   Output ~ 0
DAC_LDAC
Text HLabel 5300 3700 0    50   Output ~ 0
DAC_RST_N
$Comp
L device:C C26
U 1 1 5E7F7A1A
P 2450 2900
F 0 "C26" H 2565 2946 50  0000 L CNN
F 1 "0.1 uF" H 2565 2855 50  0000 L CNN
F 2 "" H 2488 2750 50  0001 C CNN
F 3 "" H 2450 2900 50  0001 C CNN
	1    2450 2900
	1    0    0    -1  
$EndComp
Connection ~ 2450 2750
Text HLabel 6850 3100 0    50   Output ~ 0
RELAY_EN
Text HLabel 6850 3500 0    50   Input ~ 0
OVERVOLTAGE_N
Text HLabel 6850 3000 0    50   Output ~ 0
INPUT_RST
$Comp
L st-azonenberg:STM32F031-QFN28 U4
U 3 1 5E7D219F
P 6950 3650
F 0 "U4" H 6950 3600 50  0000 L CNN
F 1 "STM32F031G6U6TR" H 6950 3500 50  0000 L CNN
F 2 "" H 6950 3650 50  0001 C CNN
F 3 "" H 6950 3650 50  0001 C CNN
	3    6950 3650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
