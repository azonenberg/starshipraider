EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 9 15
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
U 7 1 5F2ECCDE
P 10800 9250
AR Path="/5EDD71F2/5F2ECCDE" Ref="U?"  Part="9" 
AR Path="/5EDD723A/5F2ECCDE" Ref="U?"  Part="6" 
AR Path="/5EDD723A/5F2BB4CD/5F2ECCDE" Ref="U2"  Part="7" 
F 0 "U2" H 10800 9200 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 10800 9100 50  0000 L CNN
F 2 "" H 10800 9250 50  0001 C CNN
F 3 "" H 10800 9250 50  0001 C CNN
	7    10800 9250
	1    0    0    -1  
$EndComp
$Comp
L xilinx-azonenberg:XC7KxT-FFG676 U?
U 8 1 5F2ECCE4
P 13600 9250
AR Path="/5EDD71F2/5F2ECCE4" Ref="U?"  Part="9" 
AR Path="/5EDD723A/5F2ECCE4" Ref="U?"  Part="8" 
AR Path="/5EDD723A/5F2BB4CD/5F2ECCE4" Ref="U2"  Part="8" 
F 0 "U2" H 13600 9200 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 13600 9100 50  0000 L CNN
F 2 "" H 13600 9250 50  0001 C CNN
F 3 "" H 13600 9250 50  0001 C CNN
	8    13600 9250
	1    0    0    -1  
$EndComp
$Sheet
S 13500 950  1400 2600
U 5F308105
F0 "SERDES inputs" 50
F1 "serdesinputs.sch" 50
F2 "IN0_P" I L 13500 1000 50 
F3 "IN0_N" I L 13500 1100 50 
F4 "IN1_P" I L 13500 1300 50 
F5 "IN1_N" I L 13500 1400 50 
F6 "IN2_P" I L 13500 1600 50 
F7 "IN2_N" I L 13500 1700 50 
F8 "IN3_P" I L 13500 1900 50 
F9 "IN3_N" I L 13500 2000 50 
F10 "2V5" I R 14900 1000 50 
F11 "GND" I R 14900 1100 50 
F12 "MUX0_SEL" I R 14900 1300 50 
F13 "EXT_TRIG_P" I L 13500 2200 50 
F14 "EXT_TRIG_N" I L 13500 2300 50 
F15 "MUX0_EQ" I R 14900 1400 50 
F16 "REFCLK_P" I L 13500 2500 50 
F17 "REFCLK_N" I L 13500 2600 50 
F18 "MUX1_SEL" I R 14900 1600 50 
F19 "MUX1_EQ" I R 14900 1700 50 
F20 "SYNC_CLK_P" I L 13500 2800 50 
F21 "SYNC_CLK_N" I L 13500 2900 50 
F22 "MUX2_SEL" I R 14900 1900 50 
F23 "MUX3_SEL" I R 14900 2200 50 
F24 "MUX3_EQ" I R 14900 2300 50 
F25 "MUX2_EQ" I R 14900 2000 50 
F26 "GTX_TRIG_OUT_P" O L 13500 3100 50 
F27 "GTX_TRIG_OUT_N" O L 13500 3200 50 
$EndSheet
$Comp
L special-azonenberg:CONN_SFF8087 J3
U 1 1 5F3DFECC
P 1550 5650
F 0 "J3" H 1550 5600 50  0000 L CNN
F 1 "CONN_SFF8087" H 1550 5500 50  0000 L CNN
F 2 "" H 1550 5650 50  0001 C CNN
F 3 "" H 1550 5650 50  0001 C CNN
	1    1550 5650
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J3
U 2 1 5F3E0DC5
P 1550 3200
F 0 "J3" H 1550 3150 50  0000 L CNN
F 1 "CONN_SFF8087" H 1550 3050 50  0000 L CNN
F 2 "" H 1550 3200 50  0001 C CNN
F 3 "" H 1550 3200 50  0001 C CNN
	2    1550 3200
	1    0    0    -1  
$EndComp
Text Label 1450 950  2    50   ~ 0
POD6_D0_P
Text Label 1450 1050 2    50   ~ 0
POD6_D0_N
Text Label 1450 1250 2    50   ~ 0
POD6_D1_P
Text Label 1450 1350 2    50   ~ 0
POD6_D1_N
Text Label 1450 1850 2    50   ~ 0
POD6_D3_P
Text Label 1450 1950 2    50   ~ 0
POD6_D3_N
Text Label 1450 1550 2    50   ~ 0
POD6_D2_P
Text Label 1450 1650 2    50   ~ 0
POD6_D2_N
Text Label 1450 2150 2    50   ~ 0
POD6_D4_P
Text Label 1450 2250 2    50   ~ 0
POD6_D4_N
Text Label 1450 2450 2    50   ~ 0
POD6_D5_P
Text Label 1450 2550 2    50   ~ 0
POD6_D5_N
Text Label 1450 2750 2    50   ~ 0
POD6_D6_P
Text Label 1450 2850 2    50   ~ 0
POD6_D6_N
Text Label 1450 3050 2    50   ~ 0
POD6_D7_P
Text Label 1450 3150 2    50   ~ 0
POD6_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J4
U 2 1 5F3EE49C
P 2950 3200
F 0 "J4" H 2950 3150 50  0000 L CNN
F 1 "CONN_SFF8087" H 2950 3050 50  0000 L CNN
F 2 "" H 2950 3200 50  0001 C CNN
F 3 "" H 2950 3200 50  0001 C CNN
	2    2950 3200
	1    0    0    -1  
$EndComp
Text Label 2850 950  2    50   ~ 0
POD7_D0_P
Text Label 2850 1050 2    50   ~ 0
POD7_D0_N
Text Label 2850 1250 2    50   ~ 0
POD7_D1_P
Text Label 2850 1350 2    50   ~ 0
POD7_D1_N
Text Label 2850 1850 2    50   ~ 0
POD7_D3_P
Text Label 2850 1950 2    50   ~ 0
POD7_D3_N
Text Label 2850 1550 2    50   ~ 0
POD7_D2_P
Text Label 2850 1650 2    50   ~ 0
POD7_D2_N
Text Label 2850 2150 2    50   ~ 0
POD7_D4_P
Text Label 2850 2250 2    50   ~ 0
POD7_D4_N
Text Label 2850 2450 2    50   ~ 0
POD7_D5_P
Text Label 2850 2550 2    50   ~ 0
POD7_D5_N
Text Label 2850 2750 2    50   ~ 0
POD7_D6_P
Text Label 2850 2850 2    50   ~ 0
POD7_D6_N
Text Label 2850 3050 2    50   ~ 0
POD7_D7_P
Text Label 2850 3150 2    50   ~ 0
POD7_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J5
U 2 1 5F3F3B95
P 4350 3200
F 0 "J5" H 4350 3150 50  0000 L CNN
F 1 "CONN_SFF8087" H 4350 3050 50  0000 L CNN
F 2 "" H 4350 3200 50  0001 C CNN
F 3 "" H 4350 3200 50  0001 C CNN
	2    4350 3200
	1    0    0    -1  
$EndComp
Text Label 4250 950  2    50   ~ 0
POD8_D0_P
Text Label 4250 1050 2    50   ~ 0
POD8_D0_N
Text Label 4250 1250 2    50   ~ 0
POD8_D1_P
Text Label 4250 1350 2    50   ~ 0
POD8_D1_N
Text Label 4250 1850 2    50   ~ 0
POD8_D3_P
Text Label 4250 1950 2    50   ~ 0
POD8_D3_N
Text Label 4250 1550 2    50   ~ 0
POD8_D2_P
Text Label 4250 1650 2    50   ~ 0
POD8_D2_N
Text Label 4250 2150 2    50   ~ 0
POD8_D4_P
Text Label 4250 2250 2    50   ~ 0
POD8_D4_N
Text Label 4250 2450 2    50   ~ 0
POD8_D5_P
Text Label 4250 2550 2    50   ~ 0
POD8_D5_N
Text Label 4250 2750 2    50   ~ 0
POD8_D6_P
Text Label 4250 2850 2    50   ~ 0
POD8_D6_N
Text Label 4250 3050 2    50   ~ 0
POD8_D7_P
Text Label 4250 3150 2    50   ~ 0
POD8_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J6
U 2 1 5F3F3BAF
P 5750 3200
F 0 "J6" H 5750 3150 50  0000 L CNN
F 1 "CONN_SFF8087" H 5750 3050 50  0000 L CNN
F 2 "" H 5750 3200 50  0001 C CNN
F 3 "" H 5750 3200 50  0001 C CNN
	2    5750 3200
	1    0    0    -1  
$EndComp
Text Label 5650 950  2    50   ~ 0
POD9_D0_P
Text Label 5650 1050 2    50   ~ 0
POD9_D0_N
Text Label 5650 1250 2    50   ~ 0
POD9_D1_P
Text Label 5650 1350 2    50   ~ 0
POD9_D1_N
Text Label 5650 1850 2    50   ~ 0
POD9_D3_P
Text Label 5650 1950 2    50   ~ 0
POD9_D3_N
Text Label 5650 1550 2    50   ~ 0
POD9_D2_P
Text Label 5650 1650 2    50   ~ 0
POD9_D2_N
Text Label 5650 2150 2    50   ~ 0
POD9_D4_P
Text Label 5650 2250 2    50   ~ 0
POD9_D4_N
Text Label 5650 2450 2    50   ~ 0
POD9_D5_P
Text Label 5650 2550 2    50   ~ 0
POD9_D5_N
Text Label 5650 2750 2    50   ~ 0
POD9_D6_P
Text Label 5650 2850 2    50   ~ 0
POD9_D6_N
Text Label 5650 3050 2    50   ~ 0
POD9_D7_P
Text Label 5650 3150 2    50   ~ 0
POD9_D7_N
Text Label 10600 4800 2    50   ~ 0
POD6_D3_P
Text Label 10600 4900 2    50   ~ 0
POD6_D3_N
Text Label 10600 5000 2    50   ~ 0
POD6_D4_P
Text Label 10600 5100 2    50   ~ 0
POD6_D4_N
Text Label 10600 5200 2    50   ~ 0
POD6_D5_P
Text Label 10600 5300 2    50   ~ 0
POD6_D5_N
Text Label 10600 5400 2    50   ~ 0
POD6_D6_P
Text Label 10600 5500 2    50   ~ 0
POD6_D6_N
Text Label 10600 5600 2    50   ~ 0
POD6_D7_P
Text Label 10600 5700 2    50   ~ 0
POD6_D7_N
Text Label 10600 6600 2    50   ~ 0
POD7_D0_P
Text Label 10600 6700 2    50   ~ 0
POD7_D0_N
Text Label 10600 5800 2    50   ~ 0
POD7_D1_P
Text Label 10600 5900 2    50   ~ 0
POD7_D1_N
Text Label 10600 6200 2    50   ~ 0
POD7_D3_P
Text Label 10600 6300 2    50   ~ 0
POD7_D3_N
Text Label 10600 6000 2    50   ~ 0
POD7_D2_P
Text Label 10600 6100 2    50   ~ 0
POD7_D2_N
Text Label 10600 7000 2    50   ~ 0
POD7_D4_P
Text Label 10600 7100 2    50   ~ 0
POD7_D4_N
Text Label 10600 7200 2    50   ~ 0
POD7_D5_P
Text Label 10600 7300 2    50   ~ 0
POD7_D5_N
Text Label 10600 7400 2    50   ~ 0
POD7_D6_P
Text Label 10600 7500 2    50   ~ 0
POD7_D6_N
Text Label 10600 7600 2    50   ~ 0
POD7_D7_P
Text Label 10600 7700 2    50   ~ 0
POD7_D7_N
Text Label 10600 6800 2    50   ~ 0
POD8_D0_P
Text Label 10600 6900 2    50   ~ 0
POD8_D0_N
Text Label 10600 7800 2    50   ~ 0
POD8_D1_P
Text Label 10600 7900 2    50   ~ 0
POD8_D1_N
Text Label 10600 8200 2    50   ~ 0
POD8_D3_P
Text Label 10600 8300 2    50   ~ 0
POD8_D3_N
Text Label 10600 8000 2    50   ~ 0
POD8_D2_P
Text Label 10600 8100 2    50   ~ 0
POD8_D2_N
Text Label 10600 8400 2    50   ~ 0
POD8_D4_P
Text Label 10600 8500 2    50   ~ 0
POD8_D4_N
Text Label 10600 8600 2    50   ~ 0
POD8_D5_P
Text Label 10600 8700 2    50   ~ 0
POD8_D5_N
Text Label 10600 8800 2    50   ~ 0
POD8_D6_P
Text Label 10600 8900 2    50   ~ 0
POD8_D6_N
Text Label 10600 9000 2    50   ~ 0
POD8_D7_P
Text Label 10600 9100 2    50   ~ 0
POD8_D7_N
Text Label 13400 6400 2    50   ~ 0
POD9_D0_P
Text Label 13400 6500 2    50   ~ 0
POD9_D0_N
Text Label 13400 4400 2    50   ~ 0
POD9_D1_P
Text Label 13400 4500 2    50   ~ 0
POD9_D1_N
Text Label 13400 4800 2    50   ~ 0
POD9_D3_P
Text Label 13400 4900 2    50   ~ 0
POD9_D3_N
Text Label 13400 4600 2    50   ~ 0
POD9_D2_P
Text Label 13400 4700 2    50   ~ 0
POD9_D2_N
Text Label 13400 5000 2    50   ~ 0
POD9_D4_P
Text Label 13400 5100 2    50   ~ 0
POD9_D4_N
Text Label 13400 5200 2    50   ~ 0
POD9_D5_P
Text Label 13400 5300 2    50   ~ 0
POD9_D5_N
Text Label 13400 5400 2    50   ~ 0
POD9_D6_P
Text Label 13400 5500 2    50   ~ 0
POD9_D6_N
Text Label 13400 5600 2    50   ~ 0
POD9_D7_P
Text Label 13400 5700 2    50   ~ 0
POD9_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J7
U 2 1 5F405F23
P 7150 3200
F 0 "J7" H 7150 3150 50  0000 L CNN
F 1 "CONN_SFF8087" H 7150 3050 50  0000 L CNN
F 2 "" H 7150 3200 50  0001 C CNN
F 3 "" H 7150 3200 50  0001 C CNN
	2    7150 3200
	1    0    0    -1  
$EndComp
Text Label 7050 950  2    50   ~ 0
POD10_D0_P
Text Label 7050 1050 2    50   ~ 0
POD10_D0_N
Text Label 7050 1250 2    50   ~ 0
POD10_D1_P
Text Label 7050 1350 2    50   ~ 0
POD10_D1_N
Text Label 7050 1850 2    50   ~ 0
POD10_D3_P
Text Label 7050 1950 2    50   ~ 0
POD10_D3_N
Text Label 7050 1550 2    50   ~ 0
POD10_D2_P
Text Label 7050 1650 2    50   ~ 0
POD10_D2_N
Text Label 7050 2150 2    50   ~ 0
POD10_D4_P
Text Label 7050 2250 2    50   ~ 0
POD10_D4_N
Text Label 7050 2450 2    50   ~ 0
POD10_D5_P
Text Label 7050 2550 2    50   ~ 0
POD10_D5_N
Text Label 7050 2750 2    50   ~ 0
POD10_D6_P
Text Label 7050 2850 2    50   ~ 0
POD10_D6_N
Text Label 7050 3050 2    50   ~ 0
POD10_D7_P
Text Label 7050 3150 2    50   ~ 0
POD10_D7_N
$Comp
L special-azonenberg:CONN_SFF8087 J8
U 2 1 5F405F3D
P 8550 3200
F 0 "J8" H 8550 3150 50  0000 L CNN
F 1 "CONN_SFF8087" H 8550 3050 50  0000 L CNN
F 2 "" H 8550 3200 50  0001 C CNN
F 3 "" H 8550 3200 50  0001 C CNN
	2    8550 3200
	1    0    0    -1  
$EndComp
Text Label 8450 950  2    50   ~ 0
POD11_D0_P
Text Label 8450 1050 2    50   ~ 0
POD11_D0_N
Text Label 8450 1250 2    50   ~ 0
POD11_D1_P
Text Label 8450 1350 2    50   ~ 0
POD11_D1_N
Text Label 8450 1850 2    50   ~ 0
POD11_D3_P
Text Label 8450 1950 2    50   ~ 0
POD11_D3_N
Text Label 8450 1550 2    50   ~ 0
POD11_D2_P
Text Label 8450 1650 2    50   ~ 0
POD11_D2_N
Text Label 8450 2150 2    50   ~ 0
POD11_D4_P
Text Label 8450 2250 2    50   ~ 0
POD11_D4_N
Text Label 8450 2450 2    50   ~ 0
POD11_D5_P
Text Label 8450 2550 2    50   ~ 0
POD11_D5_N
Text Label 8450 2750 2    50   ~ 0
POD11_D6_P
Text Label 8450 2850 2    50   ~ 0
POD11_D6_N
Text Label 8450 3050 2    50   ~ 0
POD11_D7_P
Text Label 8450 3150 2    50   ~ 0
POD11_D7_N
Text Label 13400 7400 2    50   ~ 0
POD10_D5_P
Text Label 13400 7500 2    50   ~ 0
POD10_D5_N
Text Label 13400 7600 2    50   ~ 0
POD10_D6_P
Text Label 13400 7700 2    50   ~ 0
POD10_D6_N
Text Label 13400 7800 2    50   ~ 0
POD10_D7_P
Text Label 13400 7900 2    50   ~ 0
POD10_D7_N
Text Label 13400 7000 2    50   ~ 0
POD11_D0_P
Text Label 13400 7100 2    50   ~ 0
POD11_D0_N
Text Label 13400 8000 2    50   ~ 0
POD11_D1_P
Text Label 13400 8100 2    50   ~ 0
POD11_D1_N
Text Label 13400 8400 2    50   ~ 0
POD11_D3_P
Text Label 13400 8500 2    50   ~ 0
POD11_D3_N
Text Label 13400 8200 2    50   ~ 0
POD11_D2_P
Text Label 13400 8300 2    50   ~ 0
POD11_D2_N
Text Label 13500 1000 2    50   ~ 0
POD11_D4_P
Text Label 13500 1100 2    50   ~ 0
POD11_D4_N
Text Label 13500 1300 2    50   ~ 0
POD11_D5_P
Text Label 13500 1400 2    50   ~ 0
POD11_D5_N
Text Label 13500 1600 2    50   ~ 0
POD11_D6_P
Text Label 13500 1700 2    50   ~ 0
POD11_D6_N
Text Label 13500 1900 2    50   ~ 0
POD11_D7_P
Text Label 13500 2000 2    50   ~ 0
POD11_D7_N
Text Label 10600 4700 2    50   ~ 0
POD6_D2_N
Text Label 10600 4600 2    50   ~ 0
POD6_D2_P
Text Label 10600 4500 2    50   ~ 0
POD6_D1_N
Text Label 10600 4400 2    50   ~ 0
POD6_D1_P
Text Label 10600 6500 2    50   ~ 0
POD6_D0_N
Text Label 10600 6400 2    50   ~ 0
POD6_D0_P
Text Label 13400 7300 2    50   ~ 0
POD10_D4_N
Text Label 13400 7200 2    50   ~ 0
POD10_D4_P
Text Label 13400 6100 2    50   ~ 0
POD10_D2_N
Text Label 13400 6000 2    50   ~ 0
POD10_D2_P
Text Label 13400 6300 2    50   ~ 0
POD10_D3_N
Text Label 13400 6200 2    50   ~ 0
POD10_D3_P
Text Label 13400 5900 2    50   ~ 0
POD10_D1_N
Text Label 13400 5800 2    50   ~ 0
POD10_D1_P
Text Label 13400 6900 2    50   ~ 0
POD10_D0_N
Text Label 13400 6800 2    50   ~ 0
POD10_D0_P
Text HLabel 13400 6600 0    50   Input ~ 0
K7_CLK_P
Text HLabel 13400 6700 0    50   Input ~ 0
K7_CLK_N
$Comp
L special-azonenberg:CONN_SFF8087 J4
U 1 1 5F4F0590
P 2950 5650
F 0 "J4" H 2950 5600 50  0000 L CNN
F 1 "CONN_SFF8087" H 2950 5500 50  0000 L CNN
F 2 "" H 2950 5650 50  0001 C CNN
F 3 "" H 2950 5650 50  0001 C CNN
	1    2950 5650
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J5
U 1 1 5F4F181F
P 4350 5650
F 0 "J5" H 4350 5600 50  0000 L CNN
F 1 "CONN_SFF8087" H 4350 5500 50  0000 L CNN
F 2 "" H 4350 5650 50  0001 C CNN
F 3 "" H 4350 5650 50  0001 C CNN
	1    4350 5650
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J6
U 1 1 5F4F28DA
P 5750 5650
F 0 "J6" H 5750 5600 50  0000 L CNN
F 1 "CONN_SFF8087" H 5750 5500 50  0000 L CNN
F 2 "" H 5750 5650 50  0001 C CNN
F 3 "" H 5750 5650 50  0001 C CNN
	1    5750 5650
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J7
U 1 1 5F4F3578
P 7150 5650
F 0 "J7" H 7150 5600 50  0000 L CNN
F 1 "CONN_SFF8087" H 7150 5500 50  0000 L CNN
F 2 "" H 7150 5650 50  0001 C CNN
F 3 "" H 7150 5650 50  0001 C CNN
	1    7150 5650
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J8
U 1 1 5F4F4453
P 8550 5650
F 0 "J8" H 8550 5600 50  0000 L CNN
F 1 "CONN_SFF8087" H 8550 5500 50  0000 L CNN
F 2 "" H 8550 5650 50  0001 C CNN
F 3 "" H 8550 5650 50  0001 C CNN
	1    8550 5650
	1    0    0    -1  
$EndComp
Text HLabel 1450 3900 0    50   Output ~ 0
POD6_UART_TX
Text HLabel 1450 4200 0    50   Input ~ 0
POD6_UART_RX
Text HLabel 2850 3900 0    50   Output ~ 0
POD7_UART_TX
Text HLabel 2850 4200 0    50   Input ~ 0
POD7_UART_RX
Text HLabel 4250 3900 0    50   Output ~ 0
POD8_UART_TX
Text HLabel 4250 4200 0    50   Input ~ 0
POD8_UART_RX
Text HLabel 5650 3900 0    50   Output ~ 0
POD9_UART_TX
Text HLabel 5650 4200 0    50   Input ~ 0
POD9_UART_RX
Text HLabel 7050 3900 0    50   Output ~ 0
POD10_UART_TX
Text HLabel 7050 4200 0    50   Input ~ 0
POD10_UART_RX
Text HLabel 8450 3900 0    50   Output ~ 0
POD11_UART_TX
Text HLabel 8450 4200 0    50   Input ~ 0
POD11_UART_RX
Text Label 1450 4500 2    50   ~ 0
GND
Wire Wire Line
	1450 4500 1450 4600
Connection ~ 1450 4600
Wire Wire Line
	1450 4600 1450 4700
Connection ~ 1450 4700
Wire Wire Line
	1450 4700 1450 4800
Connection ~ 1450 4800
Wire Wire Line
	1450 4800 1450 4900
Connection ~ 1450 4900
Wire Wire Line
	1450 4900 1450 5000
Connection ~ 1450 5000
Wire Wire Line
	1450 5000 1450 5100
Connection ~ 1450 5100
Wire Wire Line
	1450 5100 1450 5200
Connection ~ 1450 5200
Wire Wire Line
	1450 5200 1450 5300
Connection ~ 1450 5300
Wire Wire Line
	1450 5300 1450 5400
Connection ~ 1450 5400
Wire Wire Line
	1450 5400 1450 5500
Connection ~ 1450 5500
Wire Wire Line
	1450 5500 1450 5600
Text Label 2850 4500 2    50   ~ 0
GND
Wire Wire Line
	2850 4500 2850 4600
Connection ~ 2850 4600
Wire Wire Line
	2850 4600 2850 4700
Connection ~ 2850 4700
Wire Wire Line
	2850 4700 2850 4800
Connection ~ 2850 4800
Wire Wire Line
	2850 4800 2850 4900
Connection ~ 2850 4900
Wire Wire Line
	2850 4900 2850 5000
Connection ~ 2850 5000
Wire Wire Line
	2850 5000 2850 5100
Connection ~ 2850 5100
Wire Wire Line
	2850 5100 2850 5200
Connection ~ 2850 5200
Wire Wire Line
	2850 5200 2850 5300
Connection ~ 2850 5300
Wire Wire Line
	2850 5300 2850 5400
Connection ~ 2850 5400
Wire Wire Line
	2850 5400 2850 5500
Connection ~ 2850 5500
Wire Wire Line
	2850 5500 2850 5600
Text Label 2350 5600 0    50   ~ 0
GND
Text Label 3750 5600 0    50   ~ 0
GND
Text Label 4250 4500 2    50   ~ 0
GND
Wire Wire Line
	4250 4500 4250 4600
Connection ~ 4250 4600
Wire Wire Line
	4250 4600 4250 4700
Connection ~ 4250 4700
Wire Wire Line
	4250 4700 4250 4800
Connection ~ 4250 4800
Wire Wire Line
	4250 4800 4250 4900
Connection ~ 4250 4900
Wire Wire Line
	4250 4900 4250 5000
Connection ~ 4250 5000
Wire Wire Line
	4250 5000 4250 5100
Connection ~ 4250 5100
Wire Wire Line
	4250 5100 4250 5200
Connection ~ 4250 5200
Wire Wire Line
	4250 5200 4250 5300
Connection ~ 4250 5300
Wire Wire Line
	4250 5300 4250 5400
Connection ~ 4250 5400
Wire Wire Line
	4250 5400 4250 5500
Connection ~ 4250 5500
Wire Wire Line
	4250 5500 4250 5600
Text Label 5150 5600 0    50   ~ 0
GND
Text Label 6550 5600 0    50   ~ 0
GND
Text Label 5650 4500 2    50   ~ 0
GND
Wire Wire Line
	5650 4500 5650 4600
Connection ~ 5650 4600
Wire Wire Line
	5650 4600 5650 4700
Connection ~ 5650 4700
Wire Wire Line
	5650 4700 5650 4800
Connection ~ 5650 4800
Wire Wire Line
	5650 4800 5650 4900
Connection ~ 5650 4900
Wire Wire Line
	5650 4900 5650 5000
Connection ~ 5650 5000
Wire Wire Line
	5650 5000 5650 5100
Connection ~ 5650 5100
Wire Wire Line
	5650 5100 5650 5200
Connection ~ 5650 5200
Wire Wire Line
	5650 5200 5650 5300
Connection ~ 5650 5300
Wire Wire Line
	5650 5300 5650 5400
Connection ~ 5650 5400
Wire Wire Line
	5650 5400 5650 5500
Connection ~ 5650 5500
Wire Wire Line
	5650 5500 5650 5600
Text Label 7050 4500 2    50   ~ 0
GND
Wire Wire Line
	7050 4500 7050 4600
Connection ~ 7050 4600
Wire Wire Line
	7050 4600 7050 4700
Connection ~ 7050 4700
Wire Wire Line
	7050 4700 7050 4800
Connection ~ 7050 4800
Wire Wire Line
	7050 4800 7050 4900
Connection ~ 7050 4900
Wire Wire Line
	7050 4900 7050 5000
Connection ~ 7050 5000
Wire Wire Line
	7050 5000 7050 5100
Connection ~ 7050 5100
Wire Wire Line
	7050 5100 7050 5200
Connection ~ 7050 5200
Wire Wire Line
	7050 5200 7050 5300
Connection ~ 7050 5300
Wire Wire Line
	7050 5300 7050 5400
Connection ~ 7050 5400
Wire Wire Line
	7050 5400 7050 5500
Connection ~ 7050 5500
Wire Wire Line
	7050 5500 7050 5600
Text Label 8450 4500 2    50   ~ 0
GND
Wire Wire Line
	8450 4500 8450 4600
Connection ~ 8450 4600
Wire Wire Line
	8450 4600 8450 4700
Connection ~ 8450 4700
Wire Wire Line
	8450 4700 8450 4800
Connection ~ 8450 4800
Wire Wire Line
	8450 4800 8450 4900
Connection ~ 8450 4900
Wire Wire Line
	8450 4900 8450 5000
Connection ~ 8450 5000
Wire Wire Line
	8450 5000 8450 5100
Connection ~ 8450 5100
Wire Wire Line
	8450 5100 8450 5200
Connection ~ 8450 5200
Wire Wire Line
	8450 5200 8450 5300
Connection ~ 8450 5300
Wire Wire Line
	8450 5300 8450 5400
Connection ~ 8450 5400
Wire Wire Line
	8450 5400 8450 5500
Connection ~ 8450 5500
Wire Wire Line
	8450 5500 8450 5600
Text Label 7950 5600 0    50   ~ 0
GND
Text Label 9350 5600 0    50   ~ 0
GND
Text HLabel 15150 1000 2    50   Input ~ 0
2V5
Wire Wire Line
	15150 1000 14900 1000
Text HLabel 15150 1100 2    50   Input ~ 0
GND
Wire Wire Line
	15150 1100 14900 1100
Text Label 14900 1300 0    50   ~ 0
MUX0_SEL
Text Label 14900 1400 0    50   ~ 0
MUX0_EQ
Text Label 14900 1600 0    50   ~ 0
MUX1_SEL
Text Label 14900 1700 0    50   ~ 0
MUX1_EQ
Text Label 14900 1900 0    50   ~ 0
MUX2_SEL
Text Label 14900 2000 0    50   ~ 0
MUX2_EQ
Text Label 14900 2200 0    50   ~ 0
MUX3_SEL
Text Label 14900 2300 0    50   ~ 0
MUX3_EQ
Text Label 13400 4300 2    50   ~ 0
MUX0_SEL
Text Label 13400 9200 2    50   ~ 0
MUX0_EQ
Text Label 10600 4300 2    50   ~ 0
MUX1_SEL
Text Label 10600 9200 2    50   ~ 0
MUX1_EQ
Text Label 13400 8800 2    50   ~ 0
MUX2_SEL
Text Label 13400 8900 2    50   ~ 0
MUX2_EQ
Text Label 13400 9000 2    50   ~ 0
MUX3_SEL
Text Label 13400 9100 2    50   ~ 0
MUX3_EQ
Text HLabel 1450 3600 0    50   Input ~ 0
P6_12V0
Text HLabel 2850 3600 0    50   Input ~ 0
P7_12V0
Text HLabel 4250 3600 0    50   Input ~ 0
P8_12V0
Text HLabel 5650 3600 0    50   Input ~ 0
P9_12V0
Text HLabel 7050 3600 0    50   Input ~ 0
P10_12V0
Text HLabel 8450 3600 0    50   Input ~ 0
P11_12V0
Text HLabel 1450 4000 0    50   Output ~ 0
P6_PRESENT
Text HLabel 2850 4000 0    50   Output ~ 0
P7_PRESENT
Text HLabel 4250 4000 0    50   Output ~ 0
P8_PRESENT
Text HLabel 5650 4000 0    50   Output ~ 0
P9_PRESENT
Text HLabel 7050 4000 0    50   Output ~ 0
P10_PRESENT
Text HLabel 8450 4000 0    50   Output ~ 0
P11_PRESENT
Wire Wire Line
	1450 3600 1450 3700
Connection ~ 1450 3700
Wire Wire Line
	1450 3700 1450 3800
Text Label 1450 4100 2    50   ~ 0
P6_12V0
Text Label 1450 4300 2    50   ~ 0
P6_12V0
Wire Wire Line
	2850 3600 2850 3700
Connection ~ 2850 3700
Wire Wire Line
	2850 3700 2850 3800
Connection ~ 4250 3700
Wire Wire Line
	4250 3700 4250 3800
Wire Wire Line
	5650 3600 5650 3700
Connection ~ 5650 3700
Wire Wire Line
	5650 3700 5650 3800
Wire Wire Line
	7050 3600 7050 3700
Connection ~ 7050 3700
Wire Wire Line
	7050 3700 7050 3800
Connection ~ 8450 3700
Wire Wire Line
	8450 3700 8450 3800
Wire Wire Line
	8450 3600 8450 3700
Wire Wire Line
	4250 3600 4250 3700
Text Label 2850 4100 2    50   ~ 0
P7_12V0
Text Label 2850 4300 2    50   ~ 0
P7_12V0
Text Label 4250 4100 2    50   ~ 0
P8_12V0
Text Label 4250 4300 2    50   ~ 0
P8_12V0
Text Label 5650 4100 2    50   ~ 0
P9_12V0
Text Label 5650 4300 2    50   ~ 0
P9_12V0
Text Label 7050 4100 2    50   ~ 0
P10_12V0
Text Label 7050 4300 2    50   ~ 0
P10_12V0
Text Label 8450 4100 2    50   ~ 0
P11_12V0
Text Label 8450 4300 2    50   ~ 0
P11_12V0
Text HLabel 13500 2200 0    50   Input ~ 0
EXT_TRIG_P
Text HLabel 13500 2300 0    50   Input ~ 0
EXT_TRIG_N
Text HLabel 13500 2500 0    50   Input ~ 0
LA_REFCLK_P
Text HLabel 13500 2600 0    50   Input ~ 0
LA_REFCLK_N
Text HLabel 13500 2800 0    50   Input ~ 0
SYNC_CLK_P
Text HLabel 13500 2900 0    50   Input ~ 0
SYNC_CLK_N
Text HLabel 13400 8700 0    50   Output ~ 0
TRIG_OUT_N
Text HLabel 13400 8600 0    50   Output ~ 0
TRIG_OUT_P
Text HLabel 13500 3100 0    50   Output ~ 0
GTX_TRIG_OUT_P
Text HLabel 13500 3200 0    50   Output ~ 0
GTX_TRIG_OUT_N
$EndSCHEMATC
