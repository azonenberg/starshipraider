EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 15 15
Title "MAXWELL Main Board"
Date "2020-06-17"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L special-azonenberg:LMK04806 U36
U 1 1 5EF9E8C0
P 1800 5100
F 0 "U36" H 2400 9375 50  0000 C CNN
F 1 "LMK04806B" H 2400 9284 50  0000 C CNN
F 2 "" H 1800 5100 50  0001 C CNN
F 3 "" H 1800 5100 50  0001 C CNN
	1    1800 5100
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:LMK04806 U36
U 3 1 5EFA1019
P 1800 8400
F 0 "U36" H 1800 9550 50  0000 L CNN
F 1 "LMK04806B" H 1800 9450 50  0000 L CNN
F 2 "" H 1800 8400 50  0001 C CNN
F 3 "" H 1800 8400 50  0001 C CNN
	3    1800 8400
	1    0    0    -1  
$EndComp
$Sheet
S 14300 1000 1150 2450
U 5F303230
F0 "Trigger and Reference Inputs" 50
F1 "trigger.sch" 50
F2 "GND" I R 15450 1250 50 
F3 "REF_IN_P" O L 14300 1650 50 
F4 "REF_IN_N" O L 14300 1750 50 
F5 "PPS_IN_P" O L 14300 1950 50 
F6 "PPS_IN_N" O L 14300 2050 50 
F7 "REF_OUT_P" I L 14300 2250 50 
F8 "REF_OUT_N" I L 14300 2350 50 
F9 "TRIG_IN_1_P" O L 14300 1050 50 
F10 "TRIG_IN_1_N" O L 14300 1150 50 
F11 "TRIG_IN_2_P" O L 14300 1350 50 
F12 "TRIG_IN_2_N" O L 14300 1450 50 
F13 "REF_OUT" I L 14300 2550 50 
F14 "5V0" I R 15450 1050 50 
F15 "5V0_N" I R 15450 1350 50 
F16 "2V5" I R 15450 1150 50 
F17 "TRIG_OUT" I L 14300 2750 50 
F18 "GTX_TRIG_OUT_P" I L 14300 2950 50 
F19 "GTX_TRIG_OUT_N" I L 14300 3050 50 
F20 "GPIO_IN_P" O L 14300 3250 50 
F21 "GPIO_IN_N" O L 14300 3350 50 
$EndSheet
Text HLabel 3100 1050 2    50   Output ~ 0
S7_CLK_P
Text HLabel 3100 1150 2    50   Output ~ 0
S7_CLK_N
Text HLabel 3100 1350 2    50   Output ~ 0
K7_CLK_P
Text HLabel 3100 1450 2    50   Output ~ 0
K7_CLK_N
Text HLabel 3100 4050 2    50   Output ~ 0
ETH_REFCLK
Text HLabel 3100 1950 2    50   Output ~ 0
LA_REFCLK_P
Text HLabel 3100 2050 2    50   Output ~ 0
LA_REFCLK_N
Text HLabel 3100 2250 2    50   Output ~ 0
SYNC_CLK_1_P
Text HLabel 3100 2350 2    50   Output ~ 0
SYNC_CLK_1_N
Text HLabel 3100 2550 2    50   Output ~ 0
SYNC_CLK_2_P
Text HLabel 3100 2650 2    50   Output ~ 0
SYNC_CLK_2_N
Text HLabel 3100 3450 2    50   Output ~ 0
XG_REFCLK_P
Text HLabel 3100 3550 2    50   Output ~ 0
XG_REFCLK_N
Text HLabel 14300 1050 0    50   Output ~ 0
EXT_TRIG_1_P
Text HLabel 14300 1150 0    50   Output ~ 0
EXT_TRIG_1_N
Text HLabel 14300 1350 0    50   Output ~ 0
EXT_TRIG_2_P
Text HLabel 14300 1450 0    50   Output ~ 0
EXT_TRIG_2_N
Text HLabel 3100 1650 2    50   Output ~ 0
RAM_CLK_P
Text HLabel 3100 1750 2    50   Output ~ 0
RAM_CLK_N
Text Notes 3800 4100 0    50   ~ 0
25 MHz LVCMOS
Text Notes 3800 3500 0    50   ~ 0
156.25 MHz LVDS
Text Notes 3800 1100 0    50   ~ 0
156.25 MHz LVDS
Text Notes 3800 1700 0    50   ~ 0
100 MHz LVDS
Text Notes 3800 2300 0    50   ~ 0
TBD MHz LVDS
Text Label 3100 2850 0    50   ~ 0
REF_OUT_P
Text Label 3100 2950 0    50   ~ 0
REF_OUT_N
Text Notes 3800 2850 0    50   ~ 0
Reference output, default 10 MHz
Text Label 3100 3150 0    50   ~ 0
REF_OUT
$Comp
L special-azonenberg:LMK04806 U36
U 2 1 5EFA0009
P 1800 7000
F 0 "U36" H 1800 8750 50  0000 L CNN
F 1 "LMK04806B" H 1800 8650 50  0000 L CNN
F 2 "" H 1800 7000 50  0001 C CNN
F 3 "" H 1800 7000 50  0001 C CNN
	2    1800 7000
	1    0    0    -1  
$EndComp
Text HLabel 1700 7450 0    50   BiDi ~ 0
PLL_SYNC
Text HLabel 1700 7650 0    50   Input ~ 0
PLL_SPI_LE
Text HLabel 1700 7750 0    50   Input ~ 0
PLL_SPI_CLK
Text HLabel 1700 7850 0    50   Input ~ 0
PLL_SPI_DATA
Text HLabel 1700 8050 0    50   BiDi ~ 0
PLL_STATUS_HOLDOVER
Text HLabel 1700 8150 0    50   BiDi ~ 0
PLL_STATUS_LD
Text HLabel 1700 8250 0    50   BiDi ~ 0
PLL_STATUS_CLKIN0
Text HLabel 1700 8350 0    50   BiDi ~ 0
PLL_STATUS_CLKIN1
Text HLabel 1700 6850 0    50   Input ~ 0
GND
Wire Wire Line
	1700 6850 1700 6950
Text Label 14300 2250 2    50   ~ 0
REF_OUT_P
Text Label 14300 2350 2    50   ~ 0
REF_OUT_N
Text Label 14300 2550 2    50   ~ 0
REF_OUT
Text Label 14300 1650 2    50   ~ 0
REF_IN_P
Text Label 14300 1750 2    50   ~ 0
REF_IN_N
Text Label 1700 1350 2    50   ~ 0
REF_IN_AC_P
Text Label 1700 1450 2    50   ~ 0
REF_IN_AC_N
Text HLabel 14300 1950 0    50   Output ~ 0
PPS_IN_P
Text HLabel 14300 2050 0    50   Output ~ 0
PPS_IN_N
Text HLabel 14300 3250 0    50   Output ~ 0
GPIO_IN_P
Text HLabel 14300 3350 0    50   Output ~ 0
GPIO_IN_N
Text HLabel 1700 5450 0    50   Input ~ 0
3V3
Text HLabel 15450 1050 2    50   Input ~ 0
5V0
Text HLabel 15450 1150 2    50   Input ~ 0
2V5
Text Label 15450 1250 0    50   ~ 0
GND
Text HLabel 14300 2950 0    50   Input ~ 0
GTX_TRIG_OUT_P
Text HLabel 14300 3050 0    50   Input ~ 0
GTX_TRIG_OUT_N
Text HLabel 13150 2650 0    50   Input ~ 0
TRIG_OUT_N
Text HLabel 13150 2550 0    50   Input ~ 0
TRIG_OUT_P
Text HLabel 15450 1350 2    50   Input ~ 0
5V0_N
Text Notes 12650 2800 0    50   ~ 0
TODO: Diff to single conversion
Text Label 1700 5750 2    50   ~ 0
3V3
Text Label 1700 6050 2    50   ~ 0
3V3
Wire Wire Line
	1700 5750 1700 5850
Text Label 1700 6250 2    50   ~ 0
3V3
$Comp
L device:C C229
U 1 1 60796FC4
P 3600 5700
F 0 "C229" H 3715 5746 50  0000 L CNN
F 1 "0.1 uF" H 3715 5655 50  0000 L CNN
F 2 "" H 3638 5550 50  0001 C CNN
F 3 "" H 3600 5700 50  0001 C CNN
	1    3600 5700
	1    0    0    -1  
$EndComp
Text Label 3050 5750 0    50   ~ 0
VCP1
Text Label 3050 5850 0    50   ~ 0
VCP2
Text Label 3700 9000 0    50   ~ 0
VCP1
Text Label 3700 9100 0    50   ~ 0
VCP2
Wire Wire Line
	3050 5550 3600 5550
$Comp
L device:C C230
U 1 1 60798450
P 4150 5700
F 0 "C230" H 4265 5746 50  0000 L CNN
F 1 "10 uF" H 4265 5655 50  0000 L CNN
F 2 "" H 4188 5550 50  0001 C CNN
F 3 "" H 4150 5700 50  0001 C CNN
	1    4150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5450 4150 5550
Text Label 4600 5850 0    50   ~ 0
GND
Wire Wire Line
	3600 5850 4150 5850
Connection ~ 4150 5850
Wire Wire Line
	4150 5850 4600 5850
NoConn ~ 3100 4750
NoConn ~ 3100 4650
NoConn ~ 3100 4950
NoConn ~ 3100 5050
Text Notes 3300 4850 0    50   ~ 0
TODO: test points on OSCout?
NoConn ~ 3100 3250
NoConn ~ 3100 3750
NoConn ~ 3100 3850
NoConn ~ 3100 4150
NoConn ~ 3100 4350
NoConn ~ 3100 4450
Text Notes 2450 9100 0    50   ~ 0
TODO: LMK decoupling
Text Notes 2450 9200 0    50   ~ 0
TODO: PLL loop filters
Text Notes 2450 9300 0    50   ~ 0
TODO: External VCXO
Wire Wire Line
	3050 5450 4150 5450
Text Notes 8150 5200 0    50   ~ 0
TODO: OCXO
Text Label 1700 1050 2    50   ~ 0
CLK_OCXO_AC_P
Text Label 1700 1150 2    50   ~ 0
CLK_OCXO_AC_N
Text Label 6450 2050 0    50   ~ 0
REF_IN_AC_P
Text Label 6450 2350 0    50   ~ 0
REF_IN_AC_N
Text Label 6450 1050 0    50   ~ 0
CLK_OCXO_AC_P
Text Label 6450 1350 0    50   ~ 0
CLK_OCXO_AC_N
$Comp
L device:R R94
U 1 1 607B4C8C
P 5900 1200
F 0 "R94" H 5970 1246 50  0000 L CNN
F 1 "100" H 5970 1155 50  0000 L CNN
F 2 "" V 5830 1200 50  0001 C CNN
F 3 "" H 5900 1200 50  0001 C CNN
	1    5900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1050 5900 1050
Wire Wire Line
	6150 1350 5900 1350
$Comp
L device:C C231
U 1 1 607BAB55
P 6300 1050
F 0 "C231" V 6048 1050 50  0000 C CNN
F 1 "0.1 uF" V 6139 1050 50  0000 C CNN
F 2 "" H 6338 900 50  0001 C CNN
F 3 "" H 6300 1050 50  0001 C CNN
	1    6300 1050
	0    1    1    0   
$EndComp
$Comp
L device:C C232
U 1 1 607BB030
P 6300 1350
F 0 "C232" V 6450 1350 50  0000 C CNN
F 1 "0.1 uF" V 6550 1350 50  0000 C CNN
F 2 "" H 6338 1200 50  0001 C CNN
F 3 "" H 6300 1350 50  0001 C CNN
	1    6300 1350
	0    1    1    0   
$EndComp
$Comp
L device:R R95
U 1 1 607C0356
P 5900 2200
F 0 "R95" H 5970 2246 50  0000 L CNN
F 1 "100" H 5970 2155 50  0000 L CNN
F 2 "" V 5830 2200 50  0001 C CNN
F 3 "" H 5900 2200 50  0001 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2050 5900 2050
Wire Wire Line
	6150 2350 5900 2350
$Comp
L device:C C233
U 1 1 607C0362
P 6300 2050
F 0 "C233" V 6048 2050 50  0000 C CNN
F 1 "0.1 uF" V 6139 2050 50  0000 C CNN
F 2 "" H 6338 1900 50  0001 C CNN
F 3 "" H 6300 2050 50  0001 C CNN
	1    6300 2050
	0    1    1    0   
$EndComp
$Comp
L device:C C234
U 1 1 607C036C
P 6300 2350
F 0 "C234" V 6450 2350 50  0000 C CNN
F 1 "0.1 uF" V 6550 2350 50  0000 C CNN
F 2 "" H 6338 2200 50  0001 C CNN
F 3 "" H 6300 2350 50  0001 C CNN
	1    6300 2350
	0    1    1    0   
$EndComp
Text Label 5900 1050 2    50   ~ 0
CLK_OCXO_P
Text Label 5900 1350 2    50   ~ 0
CLK_OCXO_N
Text Label 5900 2050 2    50   ~ 0
REF_IN_P
Text Label 5900 2350 2    50   ~ 0
REF_IN_N
Text Notes 5850 2750 0    50   ~ 0
Termination and AC coupling for clock inputs
$EndSCHEMATC
