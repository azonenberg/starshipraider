EESchema Schematic File Version 4
LIBS:host-x1-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "STARSHIPRAIDER Single-Lane Host"
Date "2017-05-14"
Rev "0.1"
Comp "Andrew D. Zonenberg"
Comment1 "Interface to I/O module"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L special-azonenberg:STARSHIPRAIDER_IOBOARD_HOST J3
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
Text Label 6600 4200 2    60   ~ 0
I2C_SCL
Text Label 6600 3100 2    60   ~ 0
RXD0_P
Text Label 6600 3200 2    60   ~ 0
RXD0_N
Text Label 6600 2900 2    60   ~ 0
RXD1_P
Text Label 6600 3000 2    60   ~ 0
RXD1_N
Text Label 6600 2600 2    60   ~ 0
RXD2_P
Text Label 6600 2500 2    60   ~ 0
RXD2_N
Text Label 6600 2100 2    60   ~ 0
RXD3_P
Text Label 6600 2200 2    60   ~ 0
RXD3_N
Text Label 6600 1800 2    60   ~ 0
RXD4_P
Text Label 6600 1700 2    60   ~ 0
RXD4_N
Text Label 6600 1600 2    60   ~ 0
RXD5_P
Text Label 6600 1500 2    60   ~ 0
RXD5_N
Text Label 6600 3400 2    60   ~ 0
RXD6_P
Text Label 6600 3300 2    60   ~ 0
RXD6_N
Text Label 6600 2000 2    60   ~ 0
RXD7_P
Text Label 6600 1900 2    60   ~ 0
RXD7_N
Text Label 6600 6000 2    60   ~ 0
I2C_SDA
Text Label 6600 4500 2    60   ~ 0
OE0
Text Label 6600 4800 2    60   ~ 0
TXD1
Text Label 6600 4600 2    60   ~ 0
OE1
Text Label 6600 3700 2    60   ~ 0
TXD2
Text Label 6600 4100 2    60   ~ 0
OE2
Text Label 6600 3800 2    60   ~ 0
TXD3
Text Label 6600 2700 2    60   ~ 0
OE3
Text Label 6600 2800 2    60   ~ 0
TXD4
Text Label 6600 3500 2    60   ~ 0
OE4
Text Label 6600 3600 2    60   ~ 0
TXD5
Text Label 6600 4000 2    60   ~ 0
OE5
Text Label 6600 1200 2    60   ~ 0
TXD6
Text Label 6600 1400 2    60   ~ 0
OE6
Text Label 6600 2400 2    60   ~ 0
TXD7
Text Label 6600 1300 2    60   ~ 0
OE7
Text Label 6600 4700 2    60   ~ 0
TXD0
NoConn ~ 6750 6100
$Comp
L host-x1-rescue:C C80
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
L host-x1-rescue:C C81
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
L host-x1-rescue:R R17
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
L host-x1-rescue:R R18
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
L host-x1-rescue:PMOD_DEVICE_DIFF_PWRIN J5
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
L host-x1-rescue:R R55
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
L host-x1-rescue:R R56
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
Text Label 6600 5200 2    60   ~ 0
SCOPE_SDA
Text Label 6600 5900 2    60   ~ 0
SCOPE_SCL
Text Label 1550 6500 0    60   ~ 0
SCOPE_SDA
Text Label 1550 6600 0    60   ~ 0
SCOPE_SCL
Text Label 1550 6800 0    60   ~ 0
SCOPE_LE_P
Text Label 1550 6900 0    60   ~ 0
SCOPE_LE_N
Text Label 6600 5700 2    60   ~ 0
SCOPE_LE_P
Text Label 6600 5800 2    60   ~ 0
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
	6600 5300 6750 5300
Wire Wire Line
	6750 5600 6600 5600
Wire Wire Line
	6600 4500 6750 4500
Wire Wire Line
	6600 4600 6750 4600
Wire Wire Line
	6750 4700 6600 4700
Wire Wire Line
	6600 4800 6750 4800
Wire Wire Line
	6750 1200 6600 1200
Wire Wire Line
	6600 2400 6750 2400
Wire Wire Line
	6750 2100 6600 2100
Wire Wire Line
	6600 2200 6750 2200
Wire Wire Line
	6750 2800 6600 2800
Wire Wire Line
	6600 5500 6750 5500
Wire Wire Line
	6750 2500 6600 2500
Wire Wire Line
	6600 2600 6750 2600
Wire Wire Line
	6750 2700 6600 2700
Wire Wire Line
	6600 1400 6750 1400
Wire Wire Line
	6750 2900 6600 2900
Wire Wire Line
	6600 3000 6750 3000
Wire Wire Line
	6750 3100 6600 3100
Wire Wire Line
	6600 1600 6750 1600
Wire Wire Line
	6750 1500 6600 1500
Wire Wire Line
	6600 1800 6750 1800
Wire Wire Line
	6750 1700 6600 1700
Wire Wire Line
	6600 4200 6750 4200
Wire Wire Line
	6750 4000 6600 4000
Wire Wire Line
	6600 5800 6750 5800
Wire Wire Line
	6750 5700 6600 5700
Wire Wire Line
	6600 3500 6750 3500
Wire Wire Line
	6750 1300 6600 1300
Wire Wire Line
	6600 2000 6750 2000
Wire Wire Line
	6750 1900 6600 1900
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
	1750 4850 1900 4850
Wire Wire Line
	1750 5150 1900 5150
Connection ~ 1900 4850
Wire Wire Line
	2750 5150 2400 5150
Wire Wire Line
	1750 4550 1900 4550
Connection ~ 1900 4550
Wire Wire Line
	1550 5750 1450 5750
Wire Wire Line
	1450 5750 1450 5850
Wire Wire Line
	1450 5850 1350 5850
Connection ~ 1450 5750
Wire Wire Line
	1550 5950 1450 5950
Wire Wire Line
	1450 5950 1450 6050
Wire Wire Line
	1450 6050 1350 6050
Connection ~ 1450 5950
Wire Wire Line
	1450 6350 1350 6350
Wire Wire Line
	3850 4850 4000 4850
Wire Wire Line
	3850 5150 4000 5150
Connection ~ 4000 4850
Wire Wire Line
	4850 5150 4500 5150
Wire Wire Line
	6600 5200 6750 5200
Wire Wire Line
	6750 5900 6600 5900
Wire Wire Line
	1550 6600 1350 6600
Wire Wire Line
	1350 6500 1550 6500
Wire Wire Line
	1550 6800 1350 6800
Wire Wire Line
	1350 6900 1550 6900
Wire Wire Line
	6600 5400 6750 5400
Wire Wire Line
	6750 3600 6600 3600
Wire Wire Line
	1350 7100 1550 7100
Wire Wire Line
	1550 7200 1350 7200
Text Label 6600 5500 2    60   ~ 0
SCOPEOUT_P
Text Label 6600 5600 2    60   ~ 0
SCOPEOUT_N
Wire Wire Line
	6750 4100 6600 4100
Wire Wire Line
	6600 3800 6750 3800
Wire Wire Line
	1350 6250 1450 6250
Wire Wire Line
	1450 6250 1450 6350
Text Notes 1500 6350 0    60   ~ 0
D0_N is grounded on module, ground D0_P to reduce noise\n(This is PRBS_OUT but we don't need it)
Text HLabel 1500 3800 0    60   Input ~ 0
12V0_FUSED
Text Notes 4150 1300 0    60   ~ 0
Some pairs swapped to ease routing:\n* RXD7\n* RXD5\n* RXD6\n* RXD4\n* RXD2
NoConn ~ 6750 2300
$Comp
L host-x1-rescue:XC7AxT-xFTG256x U?
U 4 1 590C044B
P 6950 6100
AR Path="/590BFAB4/590C044B" Ref="U?"  Part="6" 
AR Path="/590BFAC9/590C044B" Ref="U2"  Part="4" 
AR Path="/590C044B" Ref="U2"  Part="4" 
F 0 "U2" H 6950 11200 60  0000 L CNN
F 1 "XC7A100T-1FTG256C" H 6950 11100 60  0000 L CNN
F 2 "azonenberg_pcb:BGA_256_17x17_FULLARRAY_1MM" H 6950 6100 60  0001 C CNN
F 3 "" H 6950 6100 60  0000 C CNN
	4    6950 6100
	1    0    0    -1  
$EndComp
$Comp
L host-x1-rescue:PMOD_DEVICE_DIFF_PWRIN J6
U 1 1 5915979C
P 4700 7250
F 0 "J6" H 5050 7100 60  0000 R CNN
F 1 "PMOD_HEADER" H 5050 7200 60  0000 R CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_2x6_RA_PMOD_HOST" H 4700 7250 60  0001 C CNN
F 3 "" H 4700 7250 60  0001 C CNN
	1    4700 7250
	-1   0    0    -1  
$EndComp
Text Label 5050 5750 0    60   ~ 0
3V3
Wire Wire Line
	4900 5750 5000 5750
Wire Wire Line
	5000 5750 5000 5850
Wire Wire Line
	5000 5850 4900 5850
Connection ~ 5000 5750
Text Label 5050 5950 0    60   ~ 0
GND
Wire Wire Line
	5050 5950 5000 5950
Wire Wire Line
	5000 5950 5000 6050
Wire Wire Line
	5000 6050 4900 6050
Connection ~ 5000 5950
Text Label 5050 6250 0    60   ~ 0
PMOD_DQ0
Wire Wire Line
	5050 6250 4900 6250
Text Label 5050 6350 0    60   ~ 0
PMOD_DQ1
Wire Wire Line
	5050 6350 4900 6350
Text Label 5050 6500 0    60   ~ 0
PMOD_DQ2
Wire Wire Line
	5050 6500 4900 6500
Text Label 5050 6600 0    60   ~ 0
PMOD_DQ3
Wire Wire Line
	5050 6600 4900 6600
Text Label 6600 5400 2    60   ~ 0
PMOD_DQ0
Text Label 6600 3900 2    60   ~ 0
PMOD_DQ1
Text Label 6600 5000 2    60   ~ 0
PMOD_DQ2
Text Label 6600 5300 2    60   ~ 0
PMOD_DQ3
Wire Wire Line
	6600 4400 6750 4400
Wire Wire Line
	6600 3900 6750 3900
Wire Wire Line
	6600 3700 6750 3700
Wire Wire Line
	6600 4300 6750 4300
Text Label 5050 6800 0    60   ~ 0
PMOD_DQ4
Wire Wire Line
	5050 6800 4900 6800
Text Label 5050 6900 0    60   ~ 0
PMOD_DQ5
Wire Wire Line
	5050 6900 4900 6900
Text Label 6600 4400 2    60   ~ 0
PMOD_DQ4
Text Label 6600 4300 2    60   ~ 0
PMOD_DQ5
Wire Wire Line
	6600 5000 6750 5000
Wire Wire Line
	6600 5100 6750 5100
Text Label 5050 7100 0    60   ~ 0
PMOD_DQ6
Wire Wire Line
	5050 7100 4900 7100
Text Label 5050 7200 0    60   ~ 0
PMOD_DQ7
Wire Wire Line
	5050 7200 4900 7200
Text Label 6600 5100 2    60   ~ 0
PMOD_DQ6
Wire Wire Line
	6750 4900 6600 4900
Text Label 6600 4900 2    60   ~ 0
PMOD_DQ7
Wire Wire Line
	6600 6000 6750 6000
Text Notes 8750 1200 0    60   ~ 0
Differential input termination\nCan't use DIFF_TERM on FPGA b/c VCCO=3.3
$Comp
L host-x1-rescue:R R57
U 1 1 5918D283
P 9300 1450
F 0 "R57" V 9250 1250 50  0000 C CNN
F 1 "100" V 9300 1450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 9230 1450 50  0001 C CNN
F 3 "" H 9300 1450 50  0000 C CNN
	1    9300 1450
	0    1    1    0   
$EndComp
Text Label 9000 1450 2    60   ~ 0
RXD7_P
Text Label 9550 1450 0    60   ~ 0
RXD7_N
Wire Wire Line
	9550 1450 9450 1450
Wire Wire Line
	9000 1450 9150 1450
$Comp
L host-x1-rescue:R R58
U 1 1 5918D719
P 9300 1550
F 0 "R58" V 9250 1350 50  0000 C CNN
F 1 "100" V 9300 1550 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 9230 1550 50  0001 C CNN
F 3 "" H 9300 1550 50  0000 C CNN
	1    9300 1550
	0    1    1    0   
$EndComp
Text Label 9000 1550 2    60   ~ 0
RXD6_P
Text Label 9550 1550 0    60   ~ 0
RXD6_N
Wire Wire Line
	9550 1550 9450 1550
Wire Wire Line
	9000 1550 9150 1550
$Comp
L host-x1-rescue:R R59
U 1 1 5918D77F
P 9300 1650
F 0 "R59" V 9250 1450 50  0000 C CNN
F 1 "100" V 9300 1650 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 9230 1650 50  0001 C CNN
F 3 "" H 9300 1650 50  0000 C CNN
	1    9300 1650
	0    1    1    0   
$EndComp
Text Label 9000 1650 2    60   ~ 0
RXD5_P
Text Label 9550 1650 0    60   ~ 0
RXD5_N
Wire Wire Line
	9550 1650 9450 1650
Wire Wire Line
	9000 1650 9150 1650
$Comp
L host-x1-rescue:R R60
U 1 1 5918D789
P 9300 1750
F 0 "R60" V 9250 1550 50  0000 C CNN
F 1 "100" V 9300 1750 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 9230 1750 50  0001 C CNN
F 3 "" H 9300 1750 50  0000 C CNN
	1    9300 1750
	0    1    1    0   
$EndComp
Text Label 9000 1750 2    60   ~ 0
RXD4_P
Text Label 9550 1750 0    60   ~ 0
RXD4_N
Wire Wire Line
	9550 1750 9450 1750
Wire Wire Line
	9000 1750 9150 1750
$Comp
L host-x1-rescue:R R61
U 1 1 5918D82B
P 9300 1850
F 0 "R61" V 9250 1650 50  0000 C CNN
F 1 "100" V 9300 1850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 9230 1850 50  0001 C CNN
F 3 "" H 9300 1850 50  0000 C CNN
	1    9300 1850
	0    1    1    0   
$EndComp
Text Label 9000 1850 2    60   ~ 0
RXD3_P
Text Label 9550 1850 0    60   ~ 0
RXD3_N
Wire Wire Line
	9550 1850 9450 1850
Wire Wire Line
	9000 1850 9150 1850
$Comp
L host-x1-rescue:R R62
U 1 1 5918D835
P 9300 1950
F 0 "R62" V 9250 1750 50  0000 C CNN
F 1 "100" V 9300 1950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 9230 1950 50  0001 C CNN
F 3 "" H 9300 1950 50  0000 C CNN
	1    9300 1950
	0    1    1    0   
$EndComp
Text Label 9000 1950 2    60   ~ 0
RXD2_P
Text Label 9550 1950 0    60   ~ 0
RXD2_N
Wire Wire Line
	9550 1950 9450 1950
Wire Wire Line
	9000 1950 9150 1950
$Comp
L host-x1-rescue:R R63
U 1 1 5918D83F
P 9300 2050
F 0 "R63" V 9250 1850 50  0000 C CNN
F 1 "100" V 9300 2050 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 9230 2050 50  0001 C CNN
F 3 "" H 9300 2050 50  0000 C CNN
	1    9300 2050
	0    1    1    0   
$EndComp
Text Label 9000 2050 2    60   ~ 0
RXD1_P
Text Label 9550 2050 0    60   ~ 0
RXD1_N
Wire Wire Line
	9550 2050 9450 2050
Wire Wire Line
	9000 2050 9150 2050
$Comp
L host-x1-rescue:R R64
U 1 1 5918D849
P 9300 2150
F 0 "R64" V 9250 1950 50  0000 C CNN
F 1 "100" V 9300 2150 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 9230 2150 50  0001 C CNN
F 3 "" H 9300 2150 50  0000 C CNN
	1    9300 2150
	0    1    1    0   
$EndComp
Text Label 9000 2150 2    60   ~ 0
RXD0_P
Text Label 9550 2150 0    60   ~ 0
RXD0_N
Wire Wire Line
	9550 2150 9450 2150
Wire Wire Line
	9000 2150 9150 2150
Text Notes 8750 2550 0    60   ~ 0
Layer-changing caps
$Comp
L host-x1-rescue:C C112
U 1 1 5918E4EB
P 8900 2800
F 0 "C112" H 9015 2846 50  0000 L CNN
F 1 "0.1 uF" H 9015 2755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8938 2650 50  0001 C CNN
F 3 "" H 8900 2800 50  0000 C CNN
	1    8900 2800
	1    0    0    -1  
$EndComp
Text Label 8750 2950 2    60   ~ 0
GND
Wire Wire Line
	8750 2950 8900 2950
Text Label 8750 2650 2    60   ~ 0
3V3
Wire Wire Line
	8750 2650 8900 2650
$Comp
L host-x1-rescue:C C113
U 1 1 5918E948
P 9450 2800
F 0 "C113" H 9565 2846 50  0000 L CNN
F 1 "0.1 uF" H 9565 2755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 9488 2650 50  0001 C CNN
F 3 "" H 9450 2800 50  0000 C CNN
	1    9450 2800
	1    0    0    -1  
$EndComp
Connection ~ 8900 2650
Connection ~ 8900 2950
$Comp
L host-x1-rescue:C C114
U 1 1 5918F7AE
P 9950 2800
F 0 "C114" H 10065 2846 50  0000 L CNN
F 1 "0.1 uF" H 10065 2755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 9988 2650 50  0001 C CNN
F 3 "" H 9950 2800 50  0000 C CNN
	1    9950 2800
	1    0    0    -1  
$EndComp
Connection ~ 9450 2650
Connection ~ 9450 2950
$Comp
L host-x1-rescue:C C115
U 1 1 5918FC12
P 10450 2800
F 0 "C115" H 10565 2846 50  0000 L CNN
F 1 "0.1 uF" H 10565 2755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 10488 2650 50  0001 C CNN
F 3 "" H 10450 2800 50  0000 C CNN
	1    10450 2800
	1    0    0    -1  
$EndComp
Connection ~ 9950 2650
Connection ~ 9950 2950
$Comp
L host-x1-rescue:C C116
U 1 1 59190054
P 8900 3250
F 0 "C116" H 9015 3296 50  0000 L CNN
F 1 "0.1 uF" H 9015 3205 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8938 3100 50  0001 C CNN
F 3 "" H 8900 3250 50  0000 C CNN
	1    8900 3250
	1    0    0    -1  
$EndComp
Text Label 8750 3100 2    60   ~ 0
3V3
Text Label 8750 3400 2    60   ~ 0
GND
Wire Wire Line
	8750 3400 8900 3400
Wire Wire Line
	8900 3100 8750 3100
Wire Wire Line
	1900 4850 2400 4850
Wire Wire Line
	1900 4550 2550 4550
Wire Wire Line
	1450 5750 1350 5750
Wire Wire Line
	1450 5950 1350 5950
Wire Wire Line
	4000 4850 4500 4850
Wire Wire Line
	5000 5750 5050 5750
Wire Wire Line
	5000 5950 4900 5950
Wire Wire Line
	8900 2650 9450 2650
Wire Wire Line
	8900 2950 9450 2950
Wire Wire Line
	9450 2650 9950 2650
Wire Wire Line
	9450 2950 9950 2950
Wire Wire Line
	9950 2650 10450 2650
Wire Wire Line
	9950 2950 10450 2950
Text Notes 3000 3950 0    50   ~ 0
BUG! This is actually 12V
$EndSCHEMATC
