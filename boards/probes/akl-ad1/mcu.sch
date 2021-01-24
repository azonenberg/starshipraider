EESchema Schematic File Version 4
LIBS:akl-ad1-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L st-azonenberg:STM32F031-QFN28 U?
U 3 1 600CFAA3
P 3300 3000
AR Path="/600CFAA3" Ref="U?"  Part="3" 
AR Path="/600CC7FD/600CFAA3" Ref="U5"  Part="3" 
F 0 "U5" H 3578 3401 50  0000 L CNN
F 1 "STM32F031-QFN28" H 3578 3310 50  0000 L CNN
F 2 "azonenberg_pcb:QFN_28_0.5MM_4x4MM_NOPAD" H 3300 3000 50  0001 C CNN
F 3 "" H 3300 3000 50  0001 C CNN
	3    3300 3000
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F031-QFN28 U?
U 2 1 600CFAAF
P 3150 2150
AR Path="/600CFAAF" Ref="U?"  Part="2" 
AR Path="/600CC7FD/600CFAAF" Ref="U5"  Part="2" 
F 0 "U5" H 3578 2901 50  0000 L CNN
F 1 "STM32F031-QFN28" H 3578 2810 50  0000 L CNN
F 2 "azonenberg_pcb:QFN_28_0.5MM_4x4MM_NOPAD" H 3150 2150 50  0001 C CNN
F 3 "" H 3150 2150 50  0001 C CNN
	2    3150 2150
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F031-QFN28 U?
U 1 1 600CFAB5
P 1450 1650
AR Path="/600CFAB5" Ref="U?"  Part="1" 
AR Path="/600CC7FD/600CFAB5" Ref="U5"  Part="1" 
F 0 "U5" H 1450 1500 50  0000 L CNN
F 1 "STM32F031-QFN28" H 1450 1600 50  0000 L CNN
F 2 "azonenberg_pcb:QFN_28_0.5MM_4x4MM_NOPAD" H 1450 1650 50  0001 C CNN
F 3 "" H 1450 1650 50  0001 C CNN
	1    1450 1650
	1    0    0    -1  
$EndComp
Text HLabel 1350 800  0    50   Input ~ 0
2V5
Wire Wire Line
	1350 800  1350 900 
Text Label 1350 1200 2    50   ~ 0
MCU_RST_N
$Comp
L device:R R4
U 1 1 600E2EEA
P 850 1300
F 0 "R4" V 750 1250 50  0000 C CNN
F 1 "10K" V 850 1300 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 780 1300 50  0001 C CNN
F 3 "" H 850 1300 50  0001 C CNN
	1    850  1300
	0    1    1    0   
$EndComp
Text Label 700  1300 2    50   ~ 0
GND
Wire Wire Line
	1000 1300 1350 1300
NoConn ~ 1350 1500
NoConn ~ 1350 1600
$Comp
L Connector:Conn_01x05 J6
U 1 1 600E45C0
P 850 2450
F 0 "J6" H 768 2867 50  0000 C CNN
F 1 "Conn_01x05" H 768 2776 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x5" H 850 2450 50  0001 C CNN
F 3 "~" H 850 2450 50  0001 C CNN
	1    850  2450
	-1   0    0    -1  
$EndComp
Text Label 1050 2250 0    50   ~ 0
2V5
Text Label 1050 2350 0    50   ~ 0
GND
Text Label 1050 2450 0    50   ~ 0
SWCLK
Text Label 1050 2550 0    50   ~ 0
SWDIO
Text Label 1050 2650 0    50   ~ 0
MCU_RST_N
Text Label 3050 2000 2    50   ~ 0
SWCLK
Text Label 3050 1900 2    50   ~ 0
SWDIO
Wire Wire Line
	3200 2650 3200 2750
Text HLabel 3200 2650 0    50   BiDi ~ 0
SPI_SDIO
Text HLabel 3200 2550 0    50   Output ~ 0
SPI_SCK
Text HLabel 1350 1000 0    50   Input ~ 0
GND
Text HLabel 3050 800  0    50   Output ~ 0
AMP_CS_N
Text Label 3050 1700 2    50   ~ 0
UART_TX
Text Label 3050 1800 2    50   ~ 0
UART_RX
Text HLabel 3050 900  0    50   Output ~ 0
AMP_PD
Text Label 1050 3200 0    50   ~ 0
UART_RX_VOUT
Text Label 1050 3100 0    50   ~ 0
UART_TX_VOUT
Text Label 1050 3300 0    50   ~ 0
GND
Text Label 1050 3000 0    50   ~ 0
VCCIO_UART
$Comp
L Connector:Conn_01x04 J7
U 1 1 600EF3AC
P 850 3100
F 0 "J7" H 768 3417 50  0000 C CNN
F 1 "Conn_01x04" H 768 3326 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x4" H 850 3100 50  0001 C CNN
F 3 "~" H 850 3100 50  0001 C CNN
	1    850  3100
	-1   0    0    -1  
$EndComp
$Comp
L special-azonenberg:TXB0104RUT U6
U 1 1 60109FA5
P 3600 4900
F 0 "U6" H 3625 6387 60  0000 C CNN
F 1 "TXB0104RUT" H 3625 6281 60  0000 C CNN
F 2 "azonenberg_pcb:QFN_12_0.4MM_2x1.7MM_TI_RUT" H 3600 4900 60  0001 C CNN
F 3 "" H 3600 4900 60  0000 C CNN
	1    3600 4900
	1    0    0    -1  
$EndComp
Text Label 4250 3700 0    50   ~ 0
VCCIO_UART
Text Label 4250 4000 0    50   ~ 0
UART_RX_VOUT
Text Label 4250 3900 0    50   ~ 0
UART_TX_VOUT
Text Label 3000 3700 2    50   ~ 0
2V5
Text Label 3000 3900 2    50   ~ 0
UART_TX
Text Label 3000 4000 2    50   ~ 0
UART_RX
Text Label 3000 4100 2    50   ~ 0
GND
Text Label 3000 4200 2    50   ~ 0
GND
NoConn ~ 4250 4100
NoConn ~ 4250 4200
Text Label 4250 4800 0    50   ~ 0
GND
Text Label 3000 4800 2    50   ~ 0
2V5
$Comp
L device:C C20
U 1 1 6010BFA3
P 5250 3850
F 0 "C20" H 5365 3896 50  0000 L CNN
F 1 "0.47 uF" H 5365 3805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5288 3700 50  0001 C CNN
F 3 "" H 5250 3850 50  0001 C CNN
	1    5250 3850
	1    0    0    -1  
$EndComp
Text Label 5250 3700 0    50   ~ 0
VCCIO_UART
Text Label 5250 4000 0    50   ~ 0
GND
$Comp
L device:C C21
U 1 1 6010C9F5
P 5950 3850
F 0 "C21" H 6065 3896 50  0000 L CNN
F 1 "0.47 uF" H 6065 3805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5988 3700 50  0001 C CNN
F 3 "" H 5950 3850 50  0001 C CNN
	1    5950 3850
	1    0    0    -1  
$EndComp
Text Label 5950 3700 0    50   ~ 0
2V5
Text Label 5950 4000 0    50   ~ 0
GND
NoConn ~ 3050 1600
NoConn ~ 3050 2100
NoConn ~ 3200 2450
NoConn ~ 3200 2350
NoConn ~ 3200 2850
NoConn ~ 3200 2950
NoConn ~ 3050 1500
NoConn ~ 3050 1400
NoConn ~ 3050 1300
NoConn ~ 3050 1200
NoConn ~ 3050 1100
NoConn ~ 3050 1000
$Comp
L device:C C18
U 1 1 6010E0D5
P 4450 900
F 0 "C18" H 4565 946 50  0000 L CNN
F 1 "0.47 uF" H 4565 855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4488 750 50  0001 C CNN
F 3 "" H 4450 900 50  0001 C CNN
	1    4450 900 
	1    0    0    -1  
$EndComp
$Comp
L device:C C17
U 1 1 6010E5F7
P 3850 900
F 0 "C17" H 3965 946 50  0000 L CNN
F 1 "4.7 uF" H 3965 855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 3888 750 50  0001 C CNN
F 3 "" H 3850 900 50  0001 C CNN
	1    3850 900 
	1    0    0    -1  
$EndComp
$Comp
L device:C C19
U 1 1 6010E8EC
P 5000 900
F 0 "C19" H 5115 946 50  0000 L CNN
F 1 "0.47 uF" H 5115 855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5038 750 50  0001 C CNN
F 3 "" H 5000 900 50  0001 C CNN
	1    5000 900 
	1    0    0    -1  
$EndComp
Text Label 3850 750  2    50   ~ 0
2V5
Wire Wire Line
	3850 750  4450 750 
Connection ~ 4450 750 
Wire Wire Line
	4450 750  5000 750 
Text Label 3850 1050 2    50   ~ 0
GND
Connection ~ 4450 1050
Wire Wire Line
	4450 1050 5000 1050
Wire Wire Line
	3850 1050 4450 1050
$EndSCHEMATC
