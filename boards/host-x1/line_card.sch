EESchema Schematic File Version 2
LIBS:host-x1-rescue
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
Date "2017-05-09"
Rev "0.1"
Comp "Andrew D. Zonenberg"
Comment1 "Interface to I/O module"
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
F 2 "azonenberg_pcb:BGA_256_17x17_FULLARRAY_1MM" H 6950 6100 60  0001 C CNN
F 3 "" H 6950 6100 60  0000 C CNN
	4    6950 6100
	1    0    0    -1  
$EndComp
$Comp
L STARSHIPRAIDER_IOBOARD_HOST J3
U 1 1 590F824D
P 1900 4050
AR Path="/590F824D" Ref="J3"  Part="1" 
AR Path="/590BFAC9/590F824D" Ref="J3"  Part="1" 
F 0 "J3" H 2450 7487 60  0000 C CNN
F 1 "STARSHIPRAIDER_IOBOARD_HOST" H 2450 7381 60  0000 C CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QTH-030-01-L-D-A" H 2550 4250 60  0001 C CNN
F 3 "" H 2550 4250 60  0000 C CNN
	1    1900 4050
	1    0    0    -1  
$EndComp
Text HLabel 1500 900  0    60   Input ~ 0
5V0
Text HLabel 1500 1000 0    60   Input ~ 0
3V3
Text Label 3350 900  0    60   ~ 0
5V0
Text Label 3350 1000 0    60   ~ 0
3V3
Text HLabel 1500 1200 0    60   Input ~ 0
GND
Text Label 1500 1500 2    60   ~ 0
GND
Text Label 1500 1800 2    60   ~ 0
GND
Text Label 1500 2100 2    60   ~ 0
GND
Text Label 1500 2400 2    60   ~ 0
GND
Text Label 1500 2700 2    60   ~ 0
GND
Text Label 1500 3000 2    60   ~ 0
GND
Text Label 1500 3300 2    60   ~ 0
GND
Text Label 1500 3600 2    60   ~ 0
GND
Text Label 1500 4000 2    60   ~ 0
GND
Text Label 3350 1200 0    60   ~ 0
GND
Text Label 3350 1500 0    60   ~ 0
GND
Text Label 3350 1800 0    60   ~ 0
GND
Text Label 3350 2100 0    60   ~ 0
GND
Text Label 3350 2400 0    60   ~ 0
GND
Text Label 3350 2700 0    60   ~ 0
GND
Text Label 3350 3000 0    60   ~ 0
GND
Text Label 3350 3300 0    60   ~ 0
GND
Text Label 3350 3600 0    60   ~ 0
GND
Text Label 3350 3700 0    60   ~ 0
3V3
Text Label 3350 3800 0    60   ~ 0
12V0_FUSED
Text Label 1500 3700 2    60   ~ 0
3V3
Text Label 1500 1100 2    60   ~ 0
I2C_SDA
Text Label 3350 1100 0    60   ~ 0
I2C_SCL
Text Label 1500 1300 2    60   ~ 0
TXD0
Text Label 1500 1400 2    60   ~ 0
OE0
Text Label 1500 1600 2    60   ~ 0
TXD1
Text Label 1500 1700 2    60   ~ 0
OE1
Text Label 1500 1900 2    60   ~ 0
TXD2
Text Label 1500 2000 2    60   ~ 0
OE2
Text Label 1500 2200 2    60   ~ 0
TXD3
Text Label 1500 2300 2    60   ~ 0
OE3
Text Label 1500 2500 2    60   ~ 0
TXD4
Text Label 1500 2600 2    60   ~ 0
OE4
Text Label 1500 2800 2    60   ~ 0
TXD5
Text Label 1500 2900 2    60   ~ 0
OE5
Text Label 1500 3100 2    60   ~ 0
TXD6
Text Label 1500 3200 2    60   ~ 0
OE6
Text Label 1500 3400 2    60   ~ 0
TXD7
Text Label 1500 3500 2    60   ~ 0
OE7
Text Label 3350 1300 0    60   ~ 0
RXD0_P
Text Label 3350 1400 0    60   ~ 0
RXD0_N
Text Label 3350 1600 0    60   ~ 0
RXD1_P
Text Label 3350 1700 0    60   ~ 0
RXD1_N
Text Label 3350 1900 0    60   ~ 0
RXD2_P
Text Label 3350 2000 0    60   ~ 0
RXD2_N
Text Label 3350 2200 0    60   ~ 0
RXD3_P
Text Label 3350 2300 0    60   ~ 0
RXD3_N
Text Label 3350 2500 0    60   ~ 0
RXD4_P
Text Label 3350 2600 0    60   ~ 0
RXD4_N
Text Label 3350 2800 0    60   ~ 0
RXD5_P
Text Label 3350 2900 0    60   ~ 0
RXD5_N
Text Label 3350 3100 0    60   ~ 0
RXD6_P
Text Label 3350 3200 0    60   ~ 0
RXD6_N
Text Label 3350 3400 0    60   ~ 0
RXD7_P
Text Label 3350 3500 0    60   ~ 0
RXD7_N
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
$Comp
L C C80
U 1 1 590F9668
P 1900 4400
F 0 "C80" H 2015 4446 50  0000 L CNN
F 1 "47 uF 10V" H 2015 4355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_1210_CAP_NOSILK" H 1938 4250 50  0001 C CNN
F 3 "" H 1900 4400 50  0000 C CNN
	1    1900 4400
	1    0    0    -1  
$EndComp
Text Label 1750 4250 2    60   ~ 0
3V3
Text Label 1750 4550 2    60   ~ 0
GND
$Comp
L C C81
U 1 1 590F97EE
P 2550 4400
F 0 "C81" H 2665 4446 50  0000 L CNN
F 1 "47 uF 10V" H 2665 4355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_1210_CAP_NOSILK" H 2588 4250 50  0001 C CNN
F 3 "" H 2550 4400 50  0000 C CNN
	1    2550 4400
	1    0    0    -1  
$EndComp
Text Label 2700 4250 0    60   ~ 0
5V0
$Comp
L R R17
U 1 1 590F9BF1
P 1900 5000
F 0 "R17" H 1970 5046 50  0000 L CNN
F 1 "1k" H 1970 4955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 1830 5000 50  0001 C CNN
F 3 "" H 1900 5000 50  0000 C CNN
	1    1900 5000
	1    0    0    -1  
$EndComp
Text Label 1750 4850 2    60   ~ 0
3V3
Text Label 1750 5150 2    60   ~ 0
I2C_SDA
$Comp
L R R18
U 1 1 590F9D62
P 2400 5000
F 0 "R18" H 2470 5046 50  0000 L CNN
F 1 "1k" H 2470 4955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 2330 5000 50  0001 C CNN
F 3 "" H 2400 5000 50  0000 C CNN
	1    2400 5000
	1    0    0    -1  
$EndComp
Text Label 2750 5150 0    60   ~ 0
I2C_SCL
Text Notes 6950 6250 0    60   ~ 0
VCCO=3V3
$Comp
L PMOD_DEVICE_DIFF_PWRIN J5
U 1 1 5913CA68
P 1150 7250
F 0 "J5" H 1500 7100 60  0000 R CNN
F 1 "PMOD_HEADER" H 1500 7200 60  0000 R CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_2x6_RA_PMOD_HOST" H 1150 7250 60  0001 C CNN
F 3 "" H 1150 7250 60  0001 C CNN
	1    1150 7250
	-1   0    0    -1  
$EndComp
Text Label 1550 5750 0    60   ~ 0
3V3
Text Notes 800  7550 0    60   ~ 0
PMOD header for sampling scope board
Text Label 1550 5950 0    60   ~ 0
GND
$Comp
L R R55
U 1 1 5913D3A1
P 4000 5000
F 0 "R55" H 4070 5046 50  0000 L CNN
F 1 "1k" H 4070 4955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3930 5000 50  0001 C CNN
F 3 "" H 4000 5000 50  0000 C CNN
	1    4000 5000
	1    0    0    -1  
$EndComp
Text Label 3850 4850 2    60   ~ 0
3V3
Text Label 3850 5150 2    60   ~ 0
SCOPE_SDA
$Comp
L R R56
U 1 1 5913D3A9
P 4500 5000
F 0 "R56" H 4570 5046 50  0000 L CNN
F 1 "1k" H 4570 4955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 4430 5000 50  0001 C CNN
F 3 "" H 4500 5000 50  0000 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
Text Label 4850 5150 0    60   ~ 0
SCOPE_SCL
Text Label 6600 4700 2    60   ~ 0
SCOPE_SDA
Text Label 6600 4800 2    60   ~ 0
SCOPE_SCL
Text Label 1550 6500 0    60   ~ 0
SCOPE_SDA
Text Label 1550 6600 0    60   ~ 0
SCOPE_SCL
Text Label 1550 6800 0    60   ~ 0
SCOPE_LE_P
Text Label 1550 6900 0    60   ~ 0
SCOPE_LE_N
Text Label 6600 4900 2    60   ~ 0
SCOPE_LE_P
Text Label 6600 5000 2    60   ~ 0
SCOPE_LE_N
Text Label 1550 7100 0    60   ~ 0
SCOPEOUT_P
Text Label 1550 7200 0    60   ~ 0
SCOPEOUT_N
Wire Wire Line
	1500 900  1700 900 
Wire Wire Line
	1500 1000 1700 1000
Wire Wire Line
	3350 900  3200 900 
Wire Wire Line
	3350 1000 3200 1000
Wire Wire Line
	1500 1200 1700 1200
Wire Wire Line
	1500 1500 1700 1500
Wire Wire Line
	1500 1800 1700 1800
Wire Wire Line
	1500 2100 1700 2100
Wire Wire Line
	1500 2400 1700 2400
Wire Wire Line
	1500 2700 1700 2700
Wire Wire Line
	1500 3000 1700 3000
Wire Wire Line
	1500 3300 1700 3300
Wire Wire Line
	1500 3600 1700 3600
Wire Wire Line
	1500 4000 1700 4000
Wire Wire Line
	3350 1200 3200 1200
Wire Wire Line
	3350 1500 3200 1500
Wire Wire Line
	3350 1800 3200 1800
Wire Wire Line
	3350 2100 3200 2100
Wire Wire Line
	3350 2400 3200 2400
Wire Wire Line
	3350 2700 3200 2700
Wire Wire Line
	3350 3000 3200 3000
Wire Wire Line
	3350 3300 3200 3300
Wire Wire Line
	3350 3600 3200 3600
Wire Wire Line
	3350 3800 3200 3800
Wire Wire Line
	3200 3700 3350 3700
Wire Wire Line
	1500 3700 1700 3700
Wire Wire Line
	1500 3800 1700 3800
Wire Wire Line
	1500 1100 1700 1100
Wire Wire Line
	3350 1100 3200 1100
Wire Wire Line
	1500 1300 1700 1300
Wire Wire Line
	1500 1400 1700 1400
Wire Wire Line
	1500 1600 1700 1600
Wire Wire Line
	1500 1700 1700 1700
Wire Wire Line
	1500 1900 1700 1900
Wire Wire Line
	1500 2000 1700 2000
Wire Wire Line
	1500 2200 1700 2200
Wire Wire Line
	1500 2300 1700 2300
Wire Wire Line
	1500 2500 1700 2500
Wire Wire Line
	1500 2600 1700 2600
Wire Wire Line
	1500 2800 1700 2800
Wire Wire Line
	1500 2900 1700 2900
Wire Wire Line
	1500 3100 1700 3100
Wire Wire Line
	1500 3200 1700 3200
Wire Wire Line
	1500 3400 1700 3400
Wire Wire Line
	1500 3500 1700 3500
Wire Wire Line
	3350 1400 3200 1400
Wire Wire Line
	3200 1300 3350 1300
Wire Wire Line
	3350 1700 3200 1700
Wire Wire Line
	3200 1600 3350 1600
Wire Wire Line
	3350 2000 3200 2000
Wire Wire Line
	3200 1900 3350 1900
Wire Wire Line
	3350 2300 3200 2300
Wire Wire Line
	3200 2200 3350 2200
Wire Wire Line
	3350 2600 3200 2600
Wire Wire Line
	3200 2500 3350 2500
Wire Wire Line
	3350 2900 3200 2900
Wire Wire Line
	3200 2800 3350 2800
Wire Wire Line
	3350 3200 3200 3200
Wire Wire Line
	3200 3100 3350 3100
Wire Wire Line
	3350 3500 3200 3500
Wire Wire Line
	3200 3400 3350 3400
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
Wire Wire Line
	1750 4250 1900 4250
Wire Wire Line
	2700 4250 2550 4250
Wire Wire Line
	1750 4850 2400 4850
Wire Wire Line
	1750 5150 1900 5150
Connection ~ 1900 4850
Wire Wire Line
	2750 5150 2400 5150
Wire Wire Line
	1750 4550 2550 4550
Connection ~ 1900 4550
Wire Wire Line
	1550 5750 1350 5750
Wire Wire Line
	1450 5750 1450 5850
Wire Wire Line
	1450 5850 1350 5850
Connection ~ 1450 5750
Wire Wire Line
	1550 5950 1350 5950
Wire Wire Line
	1450 5950 1450 6050
Wire Wire Line
	1450 6050 1350 6050
Connection ~ 1450 5950
Wire Wire Line
	1450 6350 1350 6350
Wire Wire Line
	3850 4850 4500 4850
Wire Wire Line
	3850 5150 4000 5150
Connection ~ 4000 4850
Wire Wire Line
	4850 5150 4500 5150
Wire Wire Line
	6600 4800 6750 4800
Wire Wire Line
	6750 4700 6600 4700
Wire Wire Line
	1550 6600 1350 6600
Wire Wire Line
	1350 6500 1550 6500
Wire Wire Line
	1550 6800 1350 6800
Wire Wire Line
	1350 6900 1550 6900
Wire Wire Line
	6600 5000 6750 5000
Wire Wire Line
	6750 4900 6600 4900
Wire Wire Line
	1350 7100 1550 7100
Wire Wire Line
	1550 7200 1350 7200
Text Label 6600 5100 2    60   ~ 0
SCOPEOUT_P
Text Label 6600 5200 2    60   ~ 0
SCOPEOUT_N
Wire Wire Line
	6750 5200 6600 5200
Wire Wire Line
	6600 5100 6750 5100
Wire Wire Line
	1350 6250 1450 6250
Wire Wire Line
	1450 6250 1450 6350
Text Notes 1500 6350 0    60   ~ 0
D0_N is grounded on module, ground D0_P to reduce noise\n(This is PRBS_OUT but we don't need it)
Text HLabel 1500 3800 0    60   Input ~ 0
12V0_FUSED
$EndSCHEMATC
