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
LIBS:diffprobe-calibrated-prototype-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 4
Title "500 MHz Active Differential Probe"
Date "2017-12-18"
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
$Comp
L PIC32MMxGPL028 U?
U 1 1 5A2E3505
P 4150 5350
F 0 "U?" H 6025 7647 60  0000 C CNN
F 1 "PIC32MM0032GPL028" H 6025 7541 60  0000 C CNN
F 2 "" H 4150 5350 60  0001 C CNN
F 3 "" H 4150 5350 60  0001 C CNN
	1    4150 5350
	1    0    0    -1  
$EndComp
Text Label 3800 4200 2    60   ~ 0
JTAG_TMS
Text Label 3800 4100 2    60   ~ 0
JTAG_TCK
Text Label 3800 4300 2    60   ~ 0
JTAG_TDO
Text Label 3800 4400 2    60   ~ 0
JTAG_TDI
Wire Wire Line
	3800 4400 3950 4400
Wire Wire Line
	3950 4300 3800 4300
Wire Wire Line
	3800 4200 3950 4200
Wire Wire Line
	3950 4100 3800 4100
Text HLabel 3800 3300 0    60   Input ~ 0
3V3
Wire Wire Line
	3800 3300 3950 3300
Wire Wire Line
	3950 3400 3850 3400
Wire Wire Line
	3850 3400 3850 3300
Connection ~ 3850 3300
Text HLabel 3800 3500 0    60   Input ~ 0
GND
Wire Wire Line
	3800 3500 3950 3500
Wire Wire Line
	3850 3500 3850 3700
Wire Wire Line
	3850 3600 3950 3600
Connection ~ 3850 3500
Wire Wire Line
	3850 3700 3950 3700
Connection ~ 3850 3600
Text Label 3800 3800 2    60   ~ 0
VCAP
Wire Wire Line
	3800 3800 3950 3800
Text HLabel 3800 5100 0    60   Output ~ 0
SPI_CS_N
Text HLabel 3800 5200 0    60   Output ~ 0
SPI_MOSI
Text HLabel 3800 5300 0    60   Output ~ 0
SPI_SCK
Text HLabel 3800 5000 0    60   Input ~ 0
SPI_MISO
Text Notes 4150 5550 0    60   ~ 0
Use SPI2 for DAC because SPI1 conflicts with JTAG and is not remappable\nUse UART2 for debug because UART1 conflicts with JTAG and is not remappable
Wire Wire Line
	3800 5000 3950 5000
Wire Wire Line
	3950 5100 3800 5100
Wire Wire Line
	3800 5200 3950 5200
Wire Wire Line
	3950 5300 3800 5300
$Comp
L CONN_01X03 P?
U 1 1 5A363949
P 1200 4700
F 0 "P?" H 1278 4741 50  0000 L CNN
F 1 "CONN_01X03" H 1278 4650 50  0000 L CNN
F 2 "" H 1200 4700 50  0000 C CNN
F 3 "" H 1200 4700 50  0000 C CNN
	1    1200 4700
	-1   0    0    -1  
$EndComp
Text Label 1500 4600 0    60   ~ 0
UART_TX
Text Label 1500 4700 0    60   ~ 0
UART_RX
Text Label 1500 4800 0    60   ~ 0
GND
Text Label 1050 1050 2    60   ~ 0
GND
Wire Wire Line
	1500 4600 1400 4600
Wire Wire Line
	1400 4700 1500 4700
Wire Wire Line
	1500 4800 1400 4800
Text Label 8200 5200 0    60   ~ 0
UART_TX
Text Label 8200 5300 0    60   ~ 0
UART_RX
Wire Wire Line
	8200 5200 8100 5200
Wire Wire Line
	8200 5300 8100 5300
Text HLabel 8200 5100 2    60   Output ~ 0
RELAY1_DIR
Text HLabel 8200 5000 2    60   Output ~ 0
RELAY1_EN
Text HLabel 8200 4900 2    60   Output ~ 0
RELAY2_DIR
Text HLabel 8200 4800 2    60   Output ~ 0
RELAY2_EN
Wire Wire Line
	8200 4800 8100 4800
Wire Wire Line
	8100 5100 8200 5100
Wire Wire Line
	8200 5000 8100 5000
Wire Wire Line
	8100 4900 8200 4900
$Comp
L R R?
U 1 1 5A386F8B
P 3200 4000
F 0 "R?" V 3100 4000 50  0000 C CNN
F 1 "1K" V 3200 4000 50  0000 C CNN
F 2 "" V 3130 4000 50  0000 C CNN
F 3 "" H 3200 4000 50  0000 C CNN
	1    3200 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 4000 3950 4000
Text Label 3050 4000 2    60   ~ 0
3V3
$Comp
L R R?
U 1 1 5A3872CE
P 6150 1650
F 0 "R?" H 6220 1696 50  0000 L CNN
F 1 "470" H 6220 1605 50  0000 L CNN
F 2 "" V 6080 1650 50  0000 C CNN
F 3 "" H 6150 1650 50  0000 C CNN
	1    6150 1650
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5A387391
P 6150 2050
F 0 "D?" V 6188 1932 50  0000 R CNN
F 1 "GREEN" V 6097 1932 50  0000 R CNN
F 2 "" H 6150 2050 50  0000 C CNN
F 3 "" H 6150 2050 50  0000 C CNN
	1    6150 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 1800 6150 1900
Text Label 6000 2200 2    60   ~ 0
GND
Text Label 6000 1500 2    60   ~ 0
LED0
Wire Wire Line
	6000 1500 6150 1500
Wire Wire Line
	6000 2200 8000 2200
$Comp
L R R?
U 1 1 5A3875D8
P 6800 1650
F 0 "R?" H 6870 1696 50  0000 L CNN
F 1 "470" H 6870 1605 50  0000 L CNN
F 2 "" V 6730 1650 50  0000 C CNN
F 3 "" H 6800 1650 50  0000 C CNN
	1    6800 1650
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5A3875DE
P 6800 2050
F 0 "D?" V 6838 1932 50  0000 R CNN
F 1 "GREEN" V 6747 1932 50  0000 R CNN
F 2 "" H 6800 2050 50  0000 C CNN
F 3 "" H 6800 2050 50  0000 C CNN
	1    6800 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 1800 6800 1900
Text Label 6650 1500 2    60   ~ 0
LED1
Wire Wire Line
	6650 1500 6800 1500
$Comp
L R R?
U 1 1 5A387669
P 7400 1650
F 0 "R?" H 7470 1696 50  0000 L CNN
F 1 "470" H 7470 1605 50  0000 L CNN
F 2 "" V 7330 1650 50  0000 C CNN
F 3 "" H 7400 1650 50  0000 C CNN
	1    7400 1650
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5A38766F
P 7400 2050
F 0 "D?" V 7438 1932 50  0000 R CNN
F 1 "GREEN" V 7347 1932 50  0000 R CNN
F 2 "" H 7400 2050 50  0000 C CNN
F 3 "" H 7400 2050 50  0000 C CNN
	1    7400 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 1800 7400 1900
Text Label 7250 1500 2    60   ~ 0
LED2
Wire Wire Line
	7250 1500 7400 1500
$Comp
L R R?
U 1 1 5A3876F8
P 8000 1650
F 0 "R?" H 8070 1696 50  0000 L CNN
F 1 "470" H 8070 1605 50  0000 L CNN
F 2 "" V 7930 1650 50  0000 C CNN
F 3 "" H 8000 1650 50  0000 C CNN
	1    8000 1650
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5A3876FE
P 8000 2050
F 0 "D?" V 8038 1932 50  0000 R CNN
F 1 "GREEN" V 7947 1932 50  0000 R CNN
F 2 "" H 8000 2050 50  0000 C CNN
F 3 "" H 8000 2050 50  0000 C CNN
	1    8000 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 1800 8000 1900
Text Label 7850 1500 2    60   ~ 0
LED3
Wire Wire Line
	7850 1500 8000 1500
Connection ~ 7400 2200
Connection ~ 6800 2200
Connection ~ 6150 2200
Text Label 3800 4600 2    60   ~ 0
LED0
Text Label 3800 4700 2    60   ~ 0
LED1
Text Label 3800 4800 2    60   ~ 0
LED2
Text Label 3800 4900 2    60   ~ 0
LED3
Wire Wire Line
	3800 4900 3950 4900
Wire Wire Line
	3950 4800 3800 4800
Wire Wire Line
	3800 4700 3950 4700
Wire Wire Line
	3950 4600 3800 4600
NoConn ~ 8100 4700
NoConn ~ 8100 4600
NoConn ~ 8100 4500
NoConn ~ 8100 4400
$EndSCHEMATC
