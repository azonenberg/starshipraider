EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 15
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
L special-azonenberg:LMK04806 U36
U 1 1 5EF9E8C0
P 1800 5100
F 0 "U36" H 2400 9375 50  0000 C CNN
F 1 "LMK04806" H 2400 9284 50  0000 C CNN
F 2 "" H 1800 5100 50  0001 C CNN
F 3 "" H 1800 5100 50  0001 C CNN
	1    1800 5100
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:LMK04806 U36
U 2 1 5EFA0009
P 4500 5100
F 0 "U36" H 5075 6875 50  0000 C CNN
F 1 "LMK04806" H 5075 6784 50  0000 C CNN
F 2 "" H 4500 5100 50  0001 C CNN
F 3 "" H 4500 5100 50  0001 C CNN
	2    4500 5100
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:LMK04806 U36
U 3 1 5EFA1019
P 6600 5100
F 0 "U36" H 7418 5651 50  0000 L CNN
F 1 "LMK04806" H 7418 5560 50  0000 L CNN
F 2 "" H 6600 5100 50  0001 C CNN
F 3 "" H 6600 5100 50  0001 C CNN
	3    6600 5100
	1    0    0    -1  
$EndComp
$Sheet
S 6900 1450 1050 1500
U 5F303230
F0 "Trigger and Reference Inputs" 50
F1 "trigger.sch" 50
F2 "GND" I L 6900 2250 50 
F3 "TRIG_IN_P" O L 6900 2000 50 
F4 "TRIG_IN_N" O L 6900 2100 50 
F5 "REF_IN_P" O L 6900 2400 50 
F6 "REF_IN_N" O L 6900 2500 50 
F7 "PPS_IN_P" O L 6900 2650 50 
F8 "PPS_IN_N" O L 6900 2750 50 
F9 "REF_OUT_P" I L 6900 1600 50 
F10 "REF_OUT_N" I L 6900 1700 50 
$EndSheet
Text HLabel 5050 1500 0    50   Output ~ 0
S7_CLK_P
Text HLabel 5050 1600 0    50   Output ~ 0
S7_CLK_N
Text HLabel 5050 1800 0    50   Output ~ 0
K7_CLK_P
Text HLabel 5050 1900 0    50   Output ~ 0
K7_CLK_N
Text HLabel 5050 1300 0    50   Output ~ 0
ETH_REFCLK
Text HLabel 5050 2050 0    50   Output ~ 0
LA_REFCLK_P
Text HLabel 5050 2150 0    50   Output ~ 0
LA_REFCLK_N
Text HLabel 5050 2350 0    50   Output ~ 0
SYNC_CLK_1_P
Text HLabel 5050 2450 0    50   Output ~ 0
SYNC_CLK_1_N
Text HLabel 5050 2650 0    50   Output ~ 0
SYNC_CLK_2_P
Text HLabel 5050 2750 0    50   Output ~ 0
SYNC_CLK_2_N
Text HLabel 5050 2900 0    50   Output ~ 0
XG_REFCLK_P
Text HLabel 5050 3000 0    50   Output ~ 0
XG_REFCLK_N
Text HLabel 8700 3250 0    50   Output ~ 0
EXT_TRIG_1_P
Text HLabel 8700 3350 0    50   Output ~ 0
EXT_TRIG_1_N
Text HLabel 8700 3550 0    50   Output ~ 0
EXT_TRIG_2_P
Text HLabel 8700 3650 0    50   Output ~ 0
EXT_TRIG_2_N
Text HLabel 8700 3850 0    50   Input ~ 0
TRIG_OUT_P
Text HLabel 8700 3950 0    50   Input ~ 0
TRIG_OUT_N
Text HLabel 8700 4150 0    50   Input ~ 0
GTX_TRIG_OUT_P
Text HLabel 8700 4250 0    50   Input ~ 0
GTX_TRIG_OUT_N
$EndSCHEMATC
