EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 14 16
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
P 5150 6400
F 0 "U36" H 5150 7550 50  0000 L CNN
F 1 "LMK04806B" H 5150 7450 50  0000 L CNN
F 2 "" H 5150 6400 50  0001 C CNN
F 3 "" H 5150 6400 50  0001 C CNN
	3    5150 6400
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
Text Notes 850  1150 0    50   ~ 0
10 MHz from OCXO
Text Notes 850  1450 0    50   ~ 0
External ref in
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
Text HLabel 5050 5450 0    50   BiDi ~ 0
PLL_SYNC
Text HLabel 5050 5650 0    50   Input ~ 0
PLL_SPI_LE
Text HLabel 5050 5750 0    50   Input ~ 0
PLL_SPI_CLK
Text HLabel 5050 5850 0    50   Input ~ 0
PLL_SPI_DATA
Text HLabel 5050 6050 0    50   BiDi ~ 0
PLL_STATUS_HOLDOVER
Text HLabel 5050 6150 0    50   BiDi ~ 0
PLL_STATUS_LD
Text HLabel 5050 6250 0    50   BiDi ~ 0
PLL_STATUS_CLKIN0
Text HLabel 5050 6350 0    50   BiDi ~ 0
PLL_STATUS_CLKIN1
Text HLabel 1700 6850 0    50   Output ~ 0
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
Text Label 1050 1950 2    50   ~ 0
REF_IN_P
Text Label 1050 2050 2    50   ~ 0
REF_IN_N
Text HLabel 14300 1950 0    50   Output ~ 0
PPS_IN_P
Text HLabel 14300 2050 0    50   Output ~ 0
PPS_IN_N
Text HLabel 14300 3250 0    50   Output ~ 0
GPIO_IN_P
Text HLabel 14300 3350 0    50   Output ~ 0
GPIO_IN_N
Text HLabel 5550 3850 0    50   Input ~ 0
3V3
Text HLabel 5450 4050 0    50   Input ~ 0
GND
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
Text HLabel 12850 2800 0    50   Input ~ 0
TRIG_OUT_N
Text HLabel 12850 2700 0    50   Input ~ 0
TRIG_OUT_P
Text HLabel 15450 1350 2    50   Input ~ 0
5V0_N
Text Notes 12350 2950 0    50   ~ 0
Diff to single conversion
$EndSCHEMATC
