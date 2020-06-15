EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 15
Title "MAXWELL Main Board"
Date "2020-06-15"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1250 3650 1000 1500
U 5F0BA462
F0 "Pod Power" 50
F1 "podpower.sch" 50
$EndSheet
$Comp
L xilinx-azonenberg:XC7Sx-FTGB196 U?
U 3 1 5F293D5C
P 9300 5800
AR Path="/5F049B6D/5F293D5C" Ref="U?"  Part="2" 
AR Path="/5F080E90/5F293D5C" Ref="U?"  Part="3" 
AR Path="/5EDD723A/5F0BA462/5F293D5C" Ref="U?"  Part="4" 
AR Path="/5EDD723A/5F293D5C" Ref="U?"  Part="3" 
F 0 "U?" H 9300 5750 50  0000 L CNN
F 1 "XC7S6-1FTGB196C" H 9300 5650 50  0000 L CNN
F 2 "" H 9300 5800 50  0001 C CNN
F 3 "" H 9300 5800 50  0001 C CNN
	3    9300 5800
	1    0    0    -1  
$EndComp
$Sheet
S 2500 3650 1050 1500
U 5F297DD1
F0 "IO FPGA" 50
F1 "iofpga.sch" 50
F2 "S7_QSPI_DQ0" B R 3550 3800 50 
F3 "S7_QSPI_DQ1" B R 3550 3900 50 
F4 "S7_QSPI_DQ2" B R 3550 4000 50 
F5 "S7_QSPI_DQ3" B R 3550 4100 50 
F6 "S7_QSPI_CS_N" I R 3550 3700 50 
$EndSheet
Text Label 9100 1950 2    50   ~ 0
S7_QSPI_CS_N
Text Label 9100 950  2    50   ~ 0
S7_QSPI_DQ0
Text Label 9100 1050 2    50   ~ 0
S7_QSPI_DQ1
Text Label 9100 1150 2    50   ~ 0
S7_QSPI_DQ2
Text Label 9100 1250 2    50   ~ 0
S7_QSPI_DQ3
$Sheet
S 1050 1300 1100 1500
U 5F2B9784
F0 "Left Pods" 50
F1 "leftpods.sch" 50
$EndSheet
$Sheet
S 2550 1300 1000 1500
U 5F2BB4CD
F0 "Right Pods" 50
F1 "rightpods.sch" 50
$EndSheet
Text Label 9100 1350 2    50   ~ 0
P0_UART_TX
Text Label 9100 1450 2    50   ~ 0
P0_UART_RX
Text HLabel 9100 3150 0    50   Input ~ 0
S7_CLK_P
Text HLabel 9100 3250 0    50   Input ~ 0
S7_CLK_N
Text Label 9100 1550 2    50   ~ 0
P1_UART_TX
Text Label 9100 1650 2    50   ~ 0
P1_UART_RX
Text HLabel 9100 3450 0    50   Input ~ 0
S7_SPI_CS_N
Text HLabel 9100 3350 0    50   Input ~ 0
S7_SPI_SCK
Text HLabel 9100 3550 0    50   Input ~ 0
S7_SPI_MOSI
Text HLabel 9100 3050 0    50   Output ~ 0
S7_SPI_MISO
Text Label 9100 1750 2    50   ~ 0
P2_UART_TX
Text Label 9100 1850 2    50   ~ 0
P2_UART_RX
Text Label 9100 2050 2    50   ~ 0
P3_UART_TX
Text Label 9100 2150 2    50   ~ 0
P3_UART_RX
Text Label 9100 2250 2    50   ~ 0
P4_UART_TX
Text Label 9100 2350 2    50   ~ 0
P4_UART_RX
Text Label 9100 2450 2    50   ~ 0
P5_UART_TX
Text Label 9100 2550 2    50   ~ 0
P5_UART_RX
Text Label 9100 2650 2    50   ~ 0
P6_UART_TX
Text Label 9100 2750 2    50   ~ 0
P6_UART_RX
Text Label 9100 2850 2    50   ~ 0
P7_UART_TX
Text Label 9100 2950 2    50   ~ 0
P7_UART_RX
Text Label 9100 3650 2    50   ~ 0
P8_UART_TX
Text Label 9100 3750 2    50   ~ 0
P8_UART_RX
Text Label 9100 3850 2    50   ~ 0
P9_UART_TX
Text Label 9100 3950 2    50   ~ 0
P9_UART_RX
Text Label 9100 4050 2    50   ~ 0
P10_UART_TX
Text Label 9100 4150 2    50   ~ 0
P10_UART_RX
Text Label 9100 4250 2    50   ~ 0
P11_UART_TX
Text Label 9100 4350 2    50   ~ 0
P11_UART_RX
$EndSCHEMATC
