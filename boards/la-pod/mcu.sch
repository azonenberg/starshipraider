EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "Logic Analyzer Pod"
Date "2020-04-05"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L st-azonenberg:STM32F031-QFN28 U5
U 1 1 5EA5F20F
P 2950 2350
F 0 "U5" H 3578 2851 50  0000 L CNN
F 1 "STM32F031-QFN28" H 3578 2760 50  0000 L CNN
F 2 "" H 2950 2350 50  0001 C CNN
F 3 "" H 2950 2350 50  0001 C CNN
	1    2950 2350
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F031-QFN28 U5
U 2 1 5EA5FE07
P 3150 3900
F 0 "U5" H 3578 4651 50  0000 L CNN
F 1 "STM32F031-QFN28" H 3578 4560 50  0000 L CNN
F 2 "" H 3150 3900 50  0001 C CNN
F 3 "" H 3150 3900 50  0001 C CNN
	2    3150 3900
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F031-QFN28 U5
U 3 1 5EA60F37
P 3150 4850
F 0 "U5" H 3428 5251 50  0000 L CNN
F 1 "STM32F031-QFN28" H 3428 5160 50  0000 L CNN
F 2 "" H 3150 4850 50  0001 C CNN
F 3 "" H 3150 4850 50  0001 C CNN
	3    3150 4850
	1    0    0    -1  
$EndComp
Text HLabel 2600 1500 0    50   Input ~ 0
3V3
Text HLabel 2600 1700 0    50   Input ~ 0
GND
Text HLabel 3050 4800 0    50   Input ~ 0
UART_RX
Text HLabel 3050 4700 0    50   Output ~ 0
UART_TX
Text HLabel 3050 3850 0    50   Output ~ 0
DAC_CS_N
Text HLabel 3050 4400 0    50   Output ~ 0
DAC_SCK
Text HLabel 3050 4600 0    50   Output ~ 0
DAC_MOSI
Text HLabel 3050 4500 0    50   Input ~ 0
DAC_MISO
Wire Wire Line
	2600 1500 2850 1500
Wire Wire Line
	2850 1500 2850 1600
Connection ~ 2850 1500
Wire Wire Line
	2600 1700 2850 1700
NoConn ~ 2850 2200
NoConn ~ 2850 2300
Text Label 3050 3650 2    50   ~ 0
SWDIO
Text Label 3050 3750 2    50   ~ 0
SWCLK
$EndSCHEMATC
