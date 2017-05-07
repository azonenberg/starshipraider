EESchema Schematic File Version 2
LIBS:conn
LIBS:device
LIBS:analog-azonenberg
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:switches
LIBS:host-x1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "STARSHIPRAIDER Single-Lane Host"
Date "2017-05-06"
Rev "0.1"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L XC7AxT-xFTG256x U?
U 4 1 590C044B
P 6950 6100
AR Path="/590BFAB4/590C044B" Ref="U?"  Part="6" 
AR Path="/590BFAC9/590C044B" Ref="U2"  Part="4" 
F 0 "U2" H 8328 8608 60  0000 L CNN
F 1 "XC7A100T-1FTG256C" H 8328 8502 60  0000 L CNN
F 2 "" H 6950 6100 60  0000 C CNN
F 3 "" H 6950 6100 60  0000 C CNN
	4    6950 6100
	1    0    0    -1  
$EndComp
$Comp
L STARSHIPRAIDER_IOBOARD_HOST J3
U 1 1 590F824D
P 2350 4400
F 0 "J3" H 2900 7837 60  0000 C CNN
F 1 "STARSHIPRAIDER_IOBOARD_HOST" H 2900 7731 60  0000 C CNN
F 2 "" H 3000 4600 60  0000 C CNN
F 3 "" H 3000 4600 60  0000 C CNN
	1    2350 4400
	1    0    0    -1  
$EndComp
Text HLabel 1950 1250 0    60   Input ~ 0
5V0
Wire Wire Line
	1950 1250 2150 1250
Text HLabel 1950 1350 0    60   Input ~ 0
3V3
Wire Wire Line
	1950 1350 2150 1350
Text Label 3800 1250 0    60   ~ 0
5V0
Wire Wire Line
	3800 1250 3650 1250
Text Label 3800 1350 0    60   ~ 0
3V3
Wire Wire Line
	3800 1350 3650 1350
Text HLabel 1950 1550 0    60   Input ~ 0
GND
Wire Wire Line
	1950 1550 2150 1550
Text Label 1950 1850 2    60   ~ 0
GND
Wire Wire Line
	1950 1850 2150 1850
Text Label 1950 2150 2    60   ~ 0
GND
Wire Wire Line
	1950 2150 2150 2150
Text Label 1950 2450 2    60   ~ 0
GND
Wire Wire Line
	1950 2450 2150 2450
Text Label 1950 2750 2    60   ~ 0
GND
Wire Wire Line
	1950 2750 2150 2750
Text Label 1950 3050 2    60   ~ 0
GND
Wire Wire Line
	1950 3050 2150 3050
Text Label 1950 3350 2    60   ~ 0
GND
Wire Wire Line
	1950 3350 2150 3350
Text Label 1950 3650 2    60   ~ 0
GND
Wire Wire Line
	1950 3650 2150 3650
Text Label 1950 3950 2    60   ~ 0
GND
Wire Wire Line
	1950 3950 2150 3950
Text Label 1950 4350 2    60   ~ 0
GND
Wire Wire Line
	1950 4350 2150 4350
Text Label 3800 1550 0    60   ~ 0
GND
Wire Wire Line
	3800 1550 3650 1550
Text Label 3800 1850 0    60   ~ 0
GND
Wire Wire Line
	3800 1850 3650 1850
Text Label 3800 2150 0    60   ~ 0
GND
Wire Wire Line
	3800 2150 3650 2150
Text Label 3800 2450 0    60   ~ 0
GND
Wire Wire Line
	3800 2450 3650 2450
Text Label 3800 2750 0    60   ~ 0
GND
Wire Wire Line
	3800 2750 3650 2750
Text Label 3800 3050 0    60   ~ 0
GND
Wire Wire Line
	3800 3050 3650 3050
Text Label 3800 3350 0    60   ~ 0
GND
Wire Wire Line
	3800 3350 3650 3350
Text Label 3800 3650 0    60   ~ 0
GND
Wire Wire Line
	3800 3650 3650 3650
Text Label 3800 3950 0    60   ~ 0
GND
Wire Wire Line
	3800 3950 3650 3950
Text Label 3800 4050 0    60   ~ 0
3V3
Text Label 3800 4150 0    60   ~ 0
5V0
Wire Wire Line
	3800 4150 3650 4150
Wire Wire Line
	3650 4050 3800 4050
Text Label 1950 4050 2    60   ~ 0
3V3
Wire Wire Line
	1950 4050 2150 4050
Text Label 1950 4150 2    60   ~ 0
5V0
Wire Wire Line
	1950 4150 2150 4150
Text Label 1950 1450 2    60   ~ 0
I2C_SDA
Wire Wire Line
	1950 1450 2150 1450
Text Label 3800 1450 0    60   ~ 0
I2C_SCL
Wire Wire Line
	3800 1450 3650 1450
Text Label 1950 1650 2    60   ~ 0
TXD0
Wire Wire Line
	1950 1650 2150 1650
Text Label 1950 1750 2    60   ~ 0
OE0
Wire Wire Line
	1950 1750 2150 1750
Text Label 1950 1950 2    60   ~ 0
TXD1
Wire Wire Line
	1950 1950 2150 1950
Text Label 1950 2050 2    60   ~ 0
OE1
Wire Wire Line
	1950 2050 2150 2050
Text Label 1950 2250 2    60   ~ 0
TXD2
Wire Wire Line
	1950 2250 2150 2250
Text Label 1950 2350 2    60   ~ 0
OE2
Wire Wire Line
	1950 2350 2150 2350
Text Label 1950 2550 2    60   ~ 0
TXD3
Wire Wire Line
	1950 2550 2150 2550
Text Label 1950 2650 2    60   ~ 0
OE3
Wire Wire Line
	1950 2650 2150 2650
Text Label 1950 2850 2    60   ~ 0
TXD4
Wire Wire Line
	1950 2850 2150 2850
Text Label 1950 2950 2    60   ~ 0
OE4
Wire Wire Line
	1950 2950 2150 2950
Text Label 1950 3150 2    60   ~ 0
TXD5
Wire Wire Line
	1950 3150 2150 3150
Text Label 1950 3250 2    60   ~ 0
OE5
Wire Wire Line
	1950 3250 2150 3250
Text Label 1950 3450 2    60   ~ 0
TXD6
Wire Wire Line
	1950 3450 2150 3450
Text Label 1950 3550 2    60   ~ 0
OE6
Wire Wire Line
	1950 3550 2150 3550
Text Label 1950 3750 2    60   ~ 0
TXD7
Wire Wire Line
	1950 3750 2150 3750
Text Label 1950 3850 2    60   ~ 0
OE7
Wire Wire Line
	1950 3850 2150 3850
Text Label 3800 1650 0    60   ~ 0
RXD0_P
Text Label 3800 1750 0    60   ~ 0
RXD0_N
Wire Wire Line
	3800 1750 3650 1750
Wire Wire Line
	3650 1650 3800 1650
Text Label 3800 1950 0    60   ~ 0
RXD1_P
Text Label 3800 2050 0    60   ~ 0
RXD1_N
Wire Wire Line
	3800 2050 3650 2050
Wire Wire Line
	3650 1950 3800 1950
Text Label 3800 2250 0    60   ~ 0
RXD2_P
Text Label 3800 2350 0    60   ~ 0
RXD2_N
Wire Wire Line
	3800 2350 3650 2350
Wire Wire Line
	3650 2250 3800 2250
Text Label 3800 2550 0    60   ~ 0
RXD3_P
Text Label 3800 2650 0    60   ~ 0
RXD3_N
Wire Wire Line
	3800 2650 3650 2650
Wire Wire Line
	3650 2550 3800 2550
Text Label 3800 2850 0    60   ~ 0
RXD4_P
Text Label 3800 2950 0    60   ~ 0
RXD4_N
Wire Wire Line
	3800 2950 3650 2950
Wire Wire Line
	3650 2850 3800 2850
Text Label 3800 3150 0    60   ~ 0
RXD5_P
Text Label 3800 3250 0    60   ~ 0
RXD5_N
Wire Wire Line
	3800 3250 3650 3250
Wire Wire Line
	3650 3150 3800 3150
Text Label 3800 3450 0    60   ~ 0
RXD6_P
Text Label 3800 3550 0    60   ~ 0
RXD6_N
Wire Wire Line
	3800 3550 3650 3550
Wire Wire Line
	3650 3450 3800 3450
Text Label 3800 3750 0    60   ~ 0
RXD7_P
Text Label 3800 3850 0    60   ~ 0
RXD7_N
Wire Wire Line
	3800 3850 3650 3850
Wire Wire Line
	3650 3750 3800 3750
Text Label 6600 1400 2    60   ~ 0
I2C_SCL
Text Label 6600 3100 2    60   ~ 0
RXD0_P
Text Label 6600 3200 2    60   ~ 0
RXD0_N
Text Label 6600 3300 2    60   ~ 0
RXD1_P
Text Label 6600 3400 2    60   ~ 0
RXD1_N
Text Label 6600 3500 2    60   ~ 0
RXD2_P
Text Label 6600 3600 2    60   ~ 0
RXD2_N
Text Label 6600 3700 2    60   ~ 0
RXD3_P
Text Label 6600 3800 2    60   ~ 0
RXD3_N
Text Label 6600 3900 2    60   ~ 0
RXD4_P
Text Label 6600 4000 2    60   ~ 0
RXD4_N
Text Label 6600 4100 2    60   ~ 0
RXD5_P
Text Label 6600 4200 2    60   ~ 0
RXD5_N
Text Label 6600 4300 2    60   ~ 0
RXD6_P
Text Label 6600 4400 2    60   ~ 0
RXD6_N
Text Label 6600 4500 2    60   ~ 0
RXD7_P
Text Label 6600 4600 2    60   ~ 0
RXD7_N
Text Label 6600 1300 2    60   ~ 0
I2C_SDA
Text Label 6600 1600 2    60   ~ 0
OE0
Text Label 6600 1700 2    60   ~ 0
TXD1
Text Label 6600 1800 2    60   ~ 0
OE1
Text Label 6600 1900 2    60   ~ 0
TXD2
Text Label 6600 2000 2    60   ~ 0
OE2
Text Label 6600 2100 2    60   ~ 0
TXD3
Text Label 6600 2200 2    60   ~ 0
OE3
Text Label 6600 2300 2    60   ~ 0
TXD4
Text Label 6600 2400 2    60   ~ 0
OE4
Text Label 6600 2500 2    60   ~ 0
TXD5
Text Label 6600 2600 2    60   ~ 0
OE5
Text Label 6600 2700 2    60   ~ 0
TXD6
Text Label 6600 2800 2    60   ~ 0
OE6
Text Label 6600 2900 2    60   ~ 0
TXD7
Text Label 6600 3000 2    60   ~ 0
OE7
Text Label 6600 1500 2    60   ~ 0
TXD0
NoConn ~ 6750 4700
NoConn ~ 6750 4800
NoConn ~ 6750 4900
NoConn ~ 6750 5000
NoConn ~ 6750 5100
NoConn ~ 6750 5200
NoConn ~ 6750 5300
NoConn ~ 6750 5400
NoConn ~ 6750 5500
NoConn ~ 6750 5600
NoConn ~ 6750 5700
NoConn ~ 6750 5800
NoConn ~ 6750 5900
NoConn ~ 6750 6000
NoConn ~ 6750 6100
NoConn ~ 6750 1200
Wire Wire Line
	6600 1300 6750 1300
Wire Wire Line
	6750 1400 6600 1400
Wire Wire Line
	6600 1500 6750 1500
Wire Wire Line
	6600 1600 6750 1600
Wire Wire Line
	6750 1700 6600 1700
Wire Wire Line
	6600 1800 6750 1800
Wire Wire Line
	6750 1900 6600 1900
Wire Wire Line
	6600 2000 6750 2000
Wire Wire Line
	6750 2100 6600 2100
Wire Wire Line
	6600 2200 6750 2200
Wire Wire Line
	6750 2300 6600 2300
Wire Wire Line
	6600 2400 6750 2400
Wire Wire Line
	6750 2500 6600 2500
Wire Wire Line
	6600 2600 6750 2600
Wire Wire Line
	6750 2700 6600 2700
Wire Wire Line
	6600 2800 6750 2800
Wire Wire Line
	6750 2900 6600 2900
Wire Wire Line
	6600 3000 6750 3000
Wire Wire Line
	6750 3100 6600 3100
Wire Wire Line
	6600 4600 6750 4600
Wire Wire Line
	6750 4500 6600 4500
Wire Wire Line
	6600 4400 6750 4400
Wire Wire Line
	6750 4300 6600 4300
Wire Wire Line
	6600 4200 6750 4200
Wire Wire Line
	6750 4100 6600 4100
Wire Wire Line
	6600 4000 6750 4000
Wire Wire Line
	6750 3900 6600 3900
Wire Wire Line
	6600 3800 6750 3800
Wire Wire Line
	6750 3700 6600 3700
Wire Wire Line
	6600 3600 6750 3600
Wire Wire Line
	6750 3500 6600 3500
Wire Wire Line
	6600 3400 6750 3400
Wire Wire Line
	6750 3300 6600 3300
Wire Wire Line
	6600 3200 6750 3200
$Comp
L C C80
U 1 1 590F9668
P 2350 4750
F 0 "C80" H 2465 4796 50  0000 L CNN
F 1 "47 uF" H 2465 4705 50  0000 L CNN
F 2 "" H 2388 4600 50  0000 C CNN
F 3 "" H 2350 4750 50  0000 C CNN
	1    2350 4750
	1    0    0    -1  
$EndComp
Text Label 2200 4600 2    60   ~ 0
3V3
Wire Wire Line
	2200 4600 2350 4600
Text Label 2200 4900 2    60   ~ 0
GND
Wire Wire Line
	2200 4900 2850 4900
$Comp
L C C81
U 1 1 590F97EE
P 2850 4750
F 0 "C81" H 2965 4796 50  0000 L CNN
F 1 "47 uF" H 2965 4705 50  0000 L CNN
F 2 "" H 2888 4600 50  0000 C CNN
F 3 "" H 2850 4750 50  0000 C CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
Text Label 3000 4600 0    60   ~ 0
5V0
Wire Wire Line
	3000 4600 2850 4600
Connection ~ 2350 4900
$Comp
L R R17
U 1 1 590F9BF1
P 2350 5350
F 0 "R17" H 2420 5396 50  0000 L CNN
F 1 "1k" H 2420 5305 50  0000 L CNN
F 2 "" V 2280 5350 50  0000 C CNN
F 3 "" H 2350 5350 50  0000 C CNN
	1    2350 5350
	1    0    0    -1  
$EndComp
Text Label 2200 5200 2    60   ~ 0
3V3
Wire Wire Line
	2200 5200 2850 5200
Text Label 2200 5500 2    60   ~ 0
I2C_SDA
Wire Wire Line
	2200 5500 2350 5500
$Comp
L R R18
U 1 1 590F9D62
P 2850 5350
F 0 "R18" H 2920 5396 50  0000 L CNN
F 1 "1k" H 2920 5305 50  0000 L CNN
F 2 "" V 2780 5350 50  0000 C CNN
F 3 "" H 2850 5350 50  0000 C CNN
	1    2850 5350
	1    0    0    -1  
$EndComp
Connection ~ 2350 5200
Text Label 3200 5500 0    60   ~ 0
I2C_SCL
Wire Wire Line
	3200 5500 2850 5500
$EndSCHEMATC
