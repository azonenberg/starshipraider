EESchema Schematic File Version 3
LIBS:analog-azonenberg
LIBS:cmos
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:silego-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:conn
LIBS:device
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 4
Title "500 MHz Active Differential Probe"
Date "2017-11-30"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 "Microcontroller"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X04 P?
U 1 1 5A1F8A2F
P 1400 1100
F 0 "P?" H 1478 1141 50  0000 L CNN
F 1 "CONN_01X04" H 1478 1050 50  0000 L CNN
F 2 "" H 1400 1100 50  0000 C CNN
F 3 "" H 1400 1100 50  0000 C CNN
	1    1400 1100
	1    0    0    -1  
$EndComp
Text Label 1050 1050 2    60   ~ 0
GND
Text Label 1050 1150 2    60   ~ 0
UART_RXD
Wire Wire Line
	1050 1050 1200 1050
Wire Wire Line
	1050 1150 1200 1150
Text Label 1050 1250 2    60   ~ 0
UART_TXD
Wire Wire Line
	1050 1250 1200 1250
$Comp
L XILINX_JTAG J?
U 1 1 5A1F8B4D
P 1250 2800
F 0 "J?" H 1969 3508 60  0000 L CNN
F 1 "XILINX_JTAG" H 1969 3402 60  0000 L CNN
F 2 "" H 1250 2800 60  0000 C CNN
F 3 "" H 1250 2800 60  0000 C CNN
	1    1250 2800
	1    0    0    -1  
$EndComp
Text Label 1050 1700 2    60   ~ 0
3V3
Wire Wire Line
	1250 1700 1050 1700
Text Label 1050 1800 2    60   ~ 0
GND
Wire Wire Line
	1050 1800 1250 1800
Wire Wire Line
	1150 1800 1150 2200
Wire Wire Line
	1150 1900 1250 1900
Connection ~ 1150 1800
Wire Wire Line
	1150 2000 1250 2000
Connection ~ 1150 1900
Wire Wire Line
	1150 2100 1250 2100
Connection ~ 1150 2000
Wire Wire Line
	1150 2200 1250 2200
Connection ~ 1150 2100
NoConn ~ 1250 2300
Text Label 1050 2400 2    60   ~ 0
JTAG_TMS
Text Label 1050 2500 2    60   ~ 0
JTAG_TCK
Text Label 1050 2600 2    60   ~ 0
JTAG_TDO
Text Label 1050 2700 2    60   ~ 0
JTAG_TDI
Wire Wire Line
	1050 2700 1250 2700
Wire Wire Line
	1250 2600 1050 2600
Wire Wire Line
	1050 2500 1250 2500
Wire Wire Line
	1250 2400 1050 2400
NoConn ~ 1250 2800
$EndSCHEMATC
