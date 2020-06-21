EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 15 18
Title "MAXWELL Main Board"
Date "2020-06-21"
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
S 14300 1000 1150 1850
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
Text HLabel 1700 5450 0    50   Input ~ 0
3V3
Text HLabel 15450 1050 2    50   Input ~ 0
5V0
Text HLabel 15450 1150 2    50   Input ~ 0
2V5
Text Label 15450 1250 0    50   ~ 0
GND
Text HLabel 9800 4700 0    50   Input ~ 0
GTX_TRIG_OUT_P
Text HLabel 9800 4800 0    50   Input ~ 0
GTX_TRIG_OUT_N
Text HLabel 15450 1350 2    50   Input ~ 0
5V0_N
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
Text Label 5700 3750 2    50   ~ 0
VCP1
Text Label 6100 5300 2    50   ~ 0
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
Wire Wire Line
	3050 5450 4150 5450
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
$Comp
L osc-azonenberg:CCSO-914X3-xxxx U46
U 1 1 60EB6F23
P 2200 8850
F 0 "U46" H 2175 9137 60  0000 C CNN
F 1 "AOCJYR-10.000MHZ-M5625LF" H 2175 9031 60  0000 C CNN
F 2 "" H 2200 8850 60  0000 C CNN
F 3 "" H 2200 8850 60  0000 C CNN
	1    2200 8850
	1    0    0    -1  
$EndComp
NoConn ~ 1500 8850
Text Label 1500 8950 2    50   ~ 0
3V3
$Comp
L analog-azonenberg:LMH7322 U?
U 2 1 60ECECA1
P 5200 9250
AR Path="/5EEF3BE9/60ECECA1" Ref="U?"  Part="2" 
AR Path="/5EEF3B79/5F303230/60ECECA1" Ref="U?"  Part="2" 
AR Path="/5EEF3B79/60ECECA1" Ref="U38"  Part="2" 
F 0 "U38" H 5125 10397 60  0000 C CNN
F 1 "LMH7322" H 5125 10291 60  0000 C CNN
F 2 "" H 4700 9200 60  0000 C CNN
F 3 "" H 4700 9200 60  0000 C CNN
	2    5200 9250
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 60ECECA7
P 4150 9250
AR Path="/5EEF3B79/5F303230/60ECECA7" Ref="R?"  Part="1" 
AR Path="/5EEF3B79/60ECECA7" Ref="R83"  Part="1" 
F 0 "R83" V 4100 9450 50  0000 C CNN
F 1 "4.99K" V 4150 9250 50  0000 C CNN
F 2 "" V 4080 9250 50  0001 C CNN
F 3 "" H 4150 9250 50  0001 C CNN
	1    4150 9250
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 9250 4500 9250
Wire Wire Line
	4500 9150 4000 9150
Wire Wire Line
	4000 9150 4000 9250
$Comp
L device:R R?
U 1 1 60ECECB0
P 5900 9150
AR Path="/5EEF3B79/5F303230/60ECECB0" Ref="R?"  Part="1" 
AR Path="/5EEF3B79/60ECECB0" Ref="R92"  Part="1" 
F 0 "R92" V 5850 9350 50  0000 C CNN
F 1 "10K" V 5900 9150 50  0000 C CNN
F 2 "" V 5830 9150 50  0001 C CNN
F 3 "" H 5900 9150 50  0001 C CNN
	1    5900 9150
	0    1    1    0   
$EndComp
$Comp
L device:R R?
U 1 1 60ECECB6
P 5900 9250
AR Path="/5EEF3B79/5F303230/60ECECB6" Ref="R?"  Part="1" 
AR Path="/5EEF3B79/60ECECB6" Ref="R131"  Part="1" 
F 0 "R131" V 5850 9450 50  0000 C CNN
F 1 "10K" V 5900 9250 50  0000 C CNN
F 2 "" V 5830 9250 50  0001 C CNN
F 3 "" H 5900 9250 50  0001 C CNN
	1    5900 9250
	0    1    1    0   
$EndComp
Text Label 6200 9150 0    50   ~ 0
5V0_N
Wire Wire Line
	6200 9150 6050 9150
Text Label 6200 9250 0    50   ~ 0
2V5
Wire Wire Line
	6200 9250 6050 9250
Text Label 4500 8350 2    50   ~ 0
5V0
Text Label 4500 8450 2    50   ~ 0
5V0_N
Text Label 5750 8350 0    50   ~ 0
2V5
Wire Wire Line
	5750 8350 5750 8450
Wire Wire Line
	3200 8850 4500 8850
$Comp
L device:R R?
U 1 1 60ECECC8
P 3200 9000
AR Path="/5EEF3B79/5F303230/60ECECC8" Ref="R?"  Part="1" 
AR Path="/5EEF3B79/60ECECC8" Ref="R76"  Part="1" 
F 0 "R76" H 3270 9046 50  0000 L CNN
F 1 "49.9" H 3270 8955 50  0000 L CNN
F 2 "" V 3130 9000 50  0001 C CNN
F 3 "" H 3200 9000 50  0001 C CNN
	1    3200 9000
	1    0    0    -1  
$EndComp
Text Label 3400 9150 0    50   ~ 0
GND
Wire Wire Line
	3400 9150 3200 9150
Text Label 4500 8950 2    50   ~ 0
GND
Wire Wire Line
	3200 8850 2850 8850
Connection ~ 3200 8850
Text Label 5750 8850 0    50   ~ 0
CLK_OCXO_P
Text Label 5750 8950 0    50   ~ 0
CLK_OCXO_N
$Comp
L device:R R?
U 1 1 60EE22EA
P 5400 9850
AR Path="/5EEF3B79/5F303230/60EE22EA" Ref="R?"  Part="1" 
AR Path="/5EEF3B79/60EE22EA" Ref="R84"  Part="1" 
F 0 "R84" V 5350 9600 50  0000 C CNN
F 1 "62" V 5400 9850 50  0000 C CNN
F 2 "" V 5330 9850 50  0001 C CNN
F 3 "" H 5400 9850 50  0001 C CNN
	1    5400 9850
	0    1    1    0   
$EndComp
Text Label 5550 9850 0    50   ~ 0
CLK_OCXO_P
Wire Wire Line
	5050 9850 5250 9850
$Comp
L device:R R?
U 1 1 60EE22F2
P 6350 9850
AR Path="/5EEF3B79/5F303230/60EE22F2" Ref="R?"  Part="1" 
AR Path="/5EEF3B79/60EE22F2" Ref="R132"  Part="1" 
F 0 "R132" V 6300 9550 50  0000 C CNN
F 1 "240" V 6350 9850 50  0000 C CNN
F 2 "" V 6280 9850 50  0001 C CNN
F 3 "" H 6350 9850 50  0001 C CNN
	1    6350 9850
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 9850 5550 9850
$Comp
L device:R R?
U 1 1 60EE22F9
P 5400 9950
AR Path="/5EEF3B79/5F303230/60EE22F9" Ref="R?"  Part="1" 
AR Path="/5EEF3B79/60EE22F9" Ref="R89"  Part="1" 
F 0 "R89" V 5350 9700 50  0000 C CNN
F 1 "62" V 5400 9950 50  0000 C CNN
F 2 "" V 5330 9950 50  0001 C CNN
F 3 "" H 5400 9950 50  0001 C CNN
	1    5400 9950
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 9950 5250 9950
$Comp
L device:R R?
U 1 1 60EE2301
P 6350 9950
AR Path="/5EEF3B79/5F303230/60EE2301" Ref="R?"  Part="1" 
AR Path="/5EEF3B79/60EE2301" Ref="R139"  Part="1" 
F 0 "R139" V 6300 9650 50  0000 C CNN
F 1 "240" V 6350 9950 50  0000 C CNN
F 2 "" V 6280 9950 50  0001 C CNN
F 3 "" H 6350 9950 50  0001 C CNN
	1    6350 9950
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 9950 5550 9950
Wire Wire Line
	5050 9950 5050 9850
Wire Wire Line
	6500 9950 6500 9850
Text Label 5050 9850 2    50   ~ 0
GND
Text Label 6500 9850 0    50   ~ 0
2V5
Text Label 5550 9950 0    50   ~ 0
CLK_OCXO_N
Text Label 1500 9050 2    50   ~ 0
GND
Text Label 950  8800 2    50   ~ 0
3V3
$Comp
L device:C C281
U 1 1 60EE77BF
P 950 8950
F 0 "C281" H 1065 8996 50  0000 L CNN
F 1 "10 uF" H 1065 8905 50  0000 L CNN
F 2 "" H 988 8800 50  0001 C CNN
F 3 "" H 950 8950 50  0001 C CNN
	1    950  8950
	1    0    0    -1  
$EndComp
Text Label 950  9100 2    50   ~ 0
GND
Text Notes 7950 3050 0    50   ~ 0
PLL configuration\n\nPLL1_R = 1\nPLL1_N = 1\nPLL1 PFD freq = 10 MHz\nPLL1 VCXO: 100 MHz\nVCO tune slope = 60 ppm/V = 6 kHz/V\nPLL1 CP = 1.6 mA\nPLL1 loop filter:\n* R2 = 3.9K\n* C1 = 5.6 nF\n* C2 = 270 nF\nOSCout_DIV = 1\n\nPLL2_R = 2\nPLL2_N_PRE = 2\nPLL2_N = 25\nPLL2 PFD = 50 MHz\nPLL2 CP = 3.2 mA\nPLL2 loop filter:\n* C1 = 39 pF\n* C2 = 3.3 nF\n* C3 = 0.01 nF (integrated)\n* C4 = 0.01 nF (integrated)\n* R2 = 820\n* R3 = 200 (integrated)\n* R4 = 200 (integrated)\n\nPLL2 VCO = 2.5 GHz
$Comp
L osc-azonenberg:OSC_LVDS_VCXO U47
U 1 1 60F4816C
P 6000 3900
F 0 "U47" H 6300 4697 60  0000 C CNN
F 1 "565BAA100M000ABG" H 6300 4591 60  0000 C CNN
F 2 "" H 6000 3900 60  0000 C CNN
F 3 "" H 6000 3900 60  0000 C CNN
	1    6000 3900
	1    0    0    -1  
$EndComp
Text Label 5700 3350 2    50   ~ 0
3V3
Text Label 5700 3450 2    50   ~ 0
GND
Text Label 5700 3850 2    50   ~ 0
3V3
$Comp
L device:C C292
U 1 1 60F48ED2
P 7550 3450
F 0 "C292" V 7298 3450 50  0000 C CNN
F 1 "0.1 uF" V 7389 3450 50  0000 C CNN
F 2 "" H 7588 3300 50  0001 C CNN
F 3 "" H 7550 3450 50  0001 C CNN
	1    7550 3450
	0    1    1    0   
$EndComp
$Comp
L device:C C293
U 1 1 60F48EDC
P 7550 3750
F 0 "C293" V 7700 3750 50  0000 C CNN
F 1 "0.1 uF" V 7800 3750 50  0000 C CNN
F 2 "" H 7588 3600 50  0001 C CNN
F 3 "" H 7550 3750 50  0001 C CNN
	1    7550 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 3550 6900 3450
Wire Wire Line
	6900 3450 7400 3450
Wire Wire Line
	6900 3650 6900 3750
Wire Wire Line
	6900 3750 7400 3750
Text Label 6900 3450 0    50   ~ 0
VCXO_P
Text Label 6900 3750 0    50   ~ 0
VCXO_N
Text Label 7700 3450 0    50   ~ 0
VCXO_AC_P
Text Label 7700 3750 0    50   ~ 0
VCXO_AC_N
Text Label 1700 1650 2    50   ~ 0
VCXO_AC_P
Text Label 1700 1750 2    50   ~ 0
VCXO_AC_N
$Comp
L device:C C284
U 1 1 60F5C688
P 6050 4300
F 0 "C284" H 6165 4346 50  0000 L CNN
F 1 "5.6 nF" H 6165 4255 50  0000 L CNN
F 2 "" H 6088 4150 50  0001 C CNN
F 3 "" H 6050 4300 50  0001 C CNN
	1    6050 4300
	1    0    0    -1  
$EndComp
Text Label 6050 4150 2    50   ~ 0
VCP1
Text Label 6050 4750 2    50   ~ 0
GND
$Comp
L device:C C287
U 1 1 60F5D26D
P 6600 4300
F 0 "C287" H 6715 4346 50  0000 L CNN
F 1 "270 nF" H 6715 4255 50  0000 L CNN
F 2 "" H 6638 4150 50  0001 C CNN
F 3 "" H 6600 4300 50  0001 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
$Comp
L device:R R140
U 1 1 60F5D6CF
P 6600 4600
F 0 "R140" H 6670 4646 50  0000 L CNN
F 1 "3.9K" H 6670 4555 50  0000 L CNN
F 2 "" V 6530 4600 50  0001 C CNN
F 3 "" H 6600 4600 50  0001 C CNN
	1    6600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4750 6600 4750
Wire Wire Line
	6050 4750 6050 4450
Wire Wire Line
	6050 4150 6600 4150
$Comp
L device:C C285
U 1 1 60F5FA10
P 6100 5450
F 0 "C285" H 6215 5496 50  0000 L CNN
F 1 "39 pF" H 6215 5405 50  0000 L CNN
F 2 "" H 6138 5300 50  0001 C CNN
F 3 "" H 6100 5450 50  0001 C CNN
	1    6100 5450
	1    0    0    -1  
$EndComp
$Comp
L device:C C288
U 1 1 60F5FDF2
P 6600 5450
F 0 "C288" H 6715 5496 50  0000 L CNN
F 1 "3.3 nF" H 6715 5405 50  0000 L CNN
F 2 "" H 6638 5300 50  0001 C CNN
F 3 "" H 6600 5450 50  0001 C CNN
	1    6600 5450
	1    0    0    -1  
$EndComp
$Comp
L device:R R141
U 1 1 60F600EB
P 6600 5750
F 0 "R141" H 6670 5796 50  0000 L CNN
F 1 "820" H 6670 5705 50  0000 L CNN
F 2 "" V 6530 5750 50  0001 C CNN
F 3 "" H 6600 5750 50  0001 C CNN
	1    6600 5750
	1    0    0    -1  
$EndComp
Text Label 6100 5900 2    50   ~ 0
GND
Wire Wire Line
	6100 5900 6600 5900
Wire Wire Line
	6100 5900 6100 5600
Wire Wire Line
	6100 5300 6600 5300
$Comp
L device:C C286
U 1 1 60F66D93
P 6100 6550
F 0 "C286" H 6215 6596 50  0000 L CNN
F 1 "4.7 uF" H 6215 6505 50  0000 L CNN
F 2 "" H 6138 6400 50  0001 C CNN
F 3 "" H 6100 6550 50  0001 C CNN
	1    6100 6550
	1    0    0    -1  
$EndComp
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB4
U 1 1 60F6793F
P 6400 6400
F 0 "FB4" V 6242 6400 40  0000 C CNN
F 1 "600R @ 100 MHz" V 6318 6400 40  0000 C CNN
F 2 "" H 6400 6400 60  0000 C CNN
F 3 "" H 6400 6400 60  0000 C CNN
	1    6400 6400
	0    1    1    0   
$EndComp
Text Label 6100 6400 2    50   ~ 0
3V3
$Comp
L device:C C289
U 1 1 60F6AF09
P 6700 6550
F 0 "C289" H 6815 6596 50  0000 L CNN
F 1 "0.47 uF" H 6815 6505 50  0000 L CNN
F 2 "" H 6738 6400 50  0001 C CNN
F 3 "" H 6700 6550 50  0001 C CNN
	1    6700 6550
	1    0    0    -1  
$EndComp
Text Label 6700 6400 0    50   ~ 0
VCC_CLK23
Text Label 6100 6700 2    50   ~ 0
GND
Wire Wire Line
	6100 6700 6700 6700
Text Label 1700 5550 2    50   ~ 0
VCC_CLK23
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB5
U 1 1 60F6CB4F
P 6400 6950
F 0 "FB5" V 6242 6950 40  0000 C CNN
F 1 "600R @ 100 MHz" V 6318 6950 40  0000 C CNN
F 2 "" H 6400 6950 60  0000 C CNN
F 3 "" H 6400 6950 60  0000 C CNN
	1    6400 6950
	0    1    1    0   
$EndComp
Text Label 6100 6950 2    50   ~ 0
3V3
$Comp
L device:C C290
U 1 1 60F6CB5A
P 6700 7100
F 0 "C290" H 6815 7146 50  0000 L CNN
F 1 "0.47 uF" H 6815 7055 50  0000 L CNN
F 2 "" H 6738 6950 50  0001 C CNN
F 3 "" H 6700 7100 50  0001 C CNN
	1    6700 7100
	1    0    0    -1  
$EndComp
Text Label 6700 6950 0    50   ~ 0
VCC_CLK89
Text Label 6100 7250 2    50   ~ 0
GND
Wire Wire Line
	6100 7250 6700 7250
Text Label 1700 6450 2    50   ~ 0
VCC_CLK89
Text Label 1700 6650 2    50   ~ 0
VCC_CLK89
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB6
U 1 1 60F6FAC8
P 6400 7500
F 0 "FB6" V 6242 7500 40  0000 C CNN
F 1 "600R @ 100 MHz" V 6318 7500 40  0000 C CNN
F 2 "" H 6400 7500 60  0000 C CNN
F 3 "" H 6400 7500 60  0000 C CNN
	1    6400 7500
	0    1    1    0   
$EndComp
Text Label 6100 7500 2    50   ~ 0
3V3
$Comp
L device:C C291
U 1 1 60F6FAD3
P 6700 7650
F 0 "C291" H 6815 7696 50  0000 L CNN
F 1 "0.47 uF" H 6815 7605 50  0000 L CNN
F 2 "" H 6738 7500 50  0001 C CNN
F 3 "" H 6700 7650 50  0001 C CNN
	1    6700 7650
	1    0    0    -1  
$EndComp
Text Label 6700 7500 0    50   ~ 0
VCC_CLK45
Text Label 6100 7800 2    50   ~ 0
GND
Wire Wire Line
	6100 7800 6700 7800
Text Label 1700 5650 2    50   ~ 0
VCC_CLK45
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB9
U 1 1 60F710A9
P 7850 6400
F 0 "FB9" V 7692 6400 40  0000 C CNN
F 1 "600R @ 100 MHz" V 7768 6400 40  0000 C CNN
F 2 "" H 7850 6400 60  0000 C CNN
F 3 "" H 7850 6400 60  0000 C CNN
	1    7850 6400
	0    1    1    0   
$EndComp
Text Label 7550 6400 2    50   ~ 0
3V3
$Comp
L device:C C296
U 1 1 60F710B4
P 8150 6550
F 0 "C296" H 8265 6596 50  0000 L CNN
F 1 "0.47 uF" H 8265 6505 50  0000 L CNN
F 2 "" H 8188 6400 50  0001 C CNN
F 3 "" H 8150 6550 50  0001 C CNN
	1    8150 6550
	1    0    0    -1  
$EndComp
Text Label 8150 6400 0    50   ~ 0
VCC_CLK67
Text Label 7550 6700 2    50   ~ 0
GND
Wire Wire Line
	7550 6700 8150 6700
Text Label 1700 6350 2    50   ~ 0
VCC_CLK67
Text Label 1700 6550 2    50   ~ 0
VCC_CLK67
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB7
U 1 1 60F77B54
P 7800 6950
F 0 "FB7" V 7642 6950 40  0000 C CNN
F 1 "600R @ 100 MHz" V 7718 6950 40  0000 C CNN
F 2 "" H 7800 6950 60  0000 C CNN
F 3 "" H 7800 6950 60  0000 C CNN
	1    7800 6950
	0    1    1    0   
$EndComp
Text Label 7500 6950 2    50   ~ 0
3V3
$Comp
L device:C C294
U 1 1 60F77B5F
P 8100 7100
F 0 "C294" H 8215 7146 50  0000 L CNN
F 1 "0.47 uF" H 8215 7055 50  0000 L CNN
F 2 "" H 8138 6950 50  0001 C CNN
F 3 "" H 8100 7100 50  0001 C CNN
	1    8100 7100
	1    0    0    -1  
$EndComp
Text Label 8100 6950 0    50   ~ 0
VCC_PLL1
Text Label 7500 7250 2    50   ~ 0
GND
Wire Wire Line
	7500 7250 8100 7250
Text Label 1700 5950 2    50   ~ 0
VCC_PLL1
Text Label 1700 6150 2    50   ~ 0
VCC_PLL2
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB8
U 1 1 60F790DE
P 7800 7500
F 0 "FB8" V 7642 7500 40  0000 C CNN
F 1 "600R @ 100 MHz" V 7718 7500 40  0000 C CNN
F 2 "" H 7800 7500 60  0000 C CNN
F 3 "" H 7800 7500 60  0000 C CNN
	1    7800 7500
	0    1    1    0   
$EndComp
Text Label 7500 7500 2    50   ~ 0
3V3
$Comp
L device:C C295
U 1 1 60F790E9
P 8100 7650
F 0 "C295" H 8215 7696 50  0000 L CNN
F 1 "0.47 uF" H 8215 7605 50  0000 L CNN
F 2 "" H 8138 7500 50  0001 C CNN
F 3 "" H 8100 7650 50  0001 C CNN
	1    8100 7650
	1    0    0    -1  
$EndComp
Text Label 8100 7500 0    50   ~ 0
VCC_PLL2
Text Label 7500 7800 2    50   ~ 0
GND
Wire Wire Line
	7500 7800 8100 7800
Text HLabel 9800 4400 0    50   Input ~ 0
TRIG_OUT_P
Text HLabel 9800 4500 0    50   Input ~ 0
TRIG_OUT_N
Text HLabel 9800 4200 0    50   Input ~ 0
TRIG_OUT_SEL
$Comp
L special-azonenberg:SY56017R U?
U 1 1 6110E24F
P 10000 4850
AR Path="/5EDD723A/5F2BB4CD/5F308105/6110E24F" Ref="U?"  Part="1" 
AR Path="/5EEF3B79/6110E24F" Ref="U45"  Part="1" 
F 0 "U45" H 10000 4700 50  0000 L CNN
F 1 "SY56017R" H 10000 4800 50  0000 L CNN
F 2 "" H 10000 4850 50  0001 C CNN
F 3 "" H 10000 4850 50  0001 C CNN
	1    10000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3600 9800 3700
Wire Wire Line
	9800 3900 9800 4000
Text HLabel 10850 3700 2    50   Input ~ 0
TRIG_OUT_MUX_EQ
$Comp
L device:C C?
U 1 1 6110E25A
P 10050 5300
AR Path="/5EDD723A/5F2BB4CD/5F308105/6110E25A" Ref="C?"  Part="1" 
AR Path="/5EEF3B79/6110E25A" Ref="C97"  Part="1" 
F 0 "C97" H 10200 5400 50  0000 C CNN
F 1 "0.1 uF" H 10300 5300 50  0000 C CNN
F 2 "" H 10088 5150 50  0001 C CNN
F 3 "" H 10050 5300 50  0001 C CNN
	1    10050 5300
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 6110E260
P 10550 5300
AR Path="/5EDD723A/5F2BB4CD/5F308105/6110E260" Ref="C?"  Part="1" 
AR Path="/5EEF3B79/6110E260" Ref="C98"  Part="1" 
F 0 "C98" H 10700 5400 50  0000 C CNN
F 1 "0.01 uF" H 10800 5300 50  0000 C CNN
F 2 "" H 10588 5150 50  0001 C CNN
F 3 "" H 10550 5300 50  0001 C CNN
	1    10550 5300
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 6110E266
P 11100 5300
AR Path="/5EDD723A/5F2BB4CD/5F308105/6110E266" Ref="C?"  Part="1" 
AR Path="/5EEF3B79/6110E266" Ref="C102"  Part="1" 
F 0 "C102" H 11250 5400 50  0000 C CNN
F 1 "0.1 uF" H 11350 5300 50  0000 C CNN
F 2 "" H 11138 5150 50  0001 C CNN
F 3 "" H 11100 5300 50  0001 C CNN
	1    11100 5300
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 6110E26C
P 11600 5300
AR Path="/5EDD723A/5F2BB4CD/5F308105/6110E26C" Ref="C?"  Part="1" 
AR Path="/5EEF3B79/6110E26C" Ref="C103"  Part="1" 
F 0 "C103" H 11750 5400 50  0000 C CNN
F 1 "0.01 uF" H 11850 5300 50  0000 C CNN
F 2 "" H 11638 5150 50  0001 C CNN
F 3 "" H 11600 5300 50  0001 C CNN
	1    11600 5300
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 6110E272
P 12150 5300
AR Path="/5EDD723A/5F2BB4CD/5F308105/6110E272" Ref="C?"  Part="1" 
AR Path="/5EEF3B79/6110E272" Ref="C104"  Part="1" 
F 0 "C104" H 12300 5400 50  0000 C CNN
F 1 "0.1 uF" H 12400 5300 50  0000 C CNN
F 2 "" H 12188 5150 50  0001 C CNN
F 3 "" H 12150 5300 50  0001 C CNN
	1    12150 5300
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 6110E278
P 12650 5300
AR Path="/5EDD723A/5F2BB4CD/5F308105/6110E278" Ref="C?"  Part="1" 
AR Path="/5EEF3B79/6110E278" Ref="C105"  Part="1" 
F 0 "C105" H 12800 5400 50  0000 C CNN
F 1 "0.01 uF" H 12900 5300 50  0000 C CNN
F 2 "" H 12688 5150 50  0001 C CNN
F 3 "" H 12650 5300 50  0001 C CNN
	1    12650 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12650 5150 12150 5150
Wire Wire Line
	10550 5150 10050 5150
Connection ~ 11600 5150
Wire Wire Line
	11600 5150 11100 5150
Connection ~ 12150 5150
Wire Wire Line
	12150 5150 11600 5150
Wire Wire Line
	10050 5450 10550 5450
Connection ~ 10550 5450
Wire Wire Line
	10550 5450 11100 5450
Connection ~ 11100 5450
Wire Wire Line
	11100 5450 11600 5450
Connection ~ 11600 5450
Wire Wire Line
	11600 5450 12150 5450
Connection ~ 12150 5450
Wire Wire Line
	12150 5450 12650 5450
Text Label 10050 5150 2    50   ~ 0
2V5
Text Label 10050 5450 2    50   ~ 0
GND
Text Label 9800 3400 2    50   ~ 0
2V5
Text Label 9800 3900 2    50   ~ 0
GND
Text Label 11100 5150 2    50   ~ 0
1V2
Text Label 10850 4550 0    50   ~ 0
TRIG_OUT_MUX_P
Text Label 10850 4650 0    50   ~ 0
TRIG_OUT_MUX_N
Text Label 10850 3500 0    50   ~ 0
1V2
$Comp
L device:C C?
U 1 1 6113398E
P 10850 3250
AR Path="/5EDD723A/5F2BB4CD/5F308105/6113398E" Ref="C?"  Part="1" 
AR Path="/5EEF3B79/6113398E" Ref="C101"  Part="1" 
F 0 "C101" H 11000 3350 50  0000 C CNN
F 1 "0.1 uF" H 11100 3250 50  0000 C CNN
F 2 "" H 10888 3100 50  0001 C CNN
F 3 "" H 10850 3250 50  0001 C CNN
	1    10850 3250
	1    0    0    -1  
$EndComp
Text Label 10850 3100 2    50   ~ 0
GND
Text Label 14300 2750 2    50   ~ 0
TRIG_OUT_MUX_P
$Comp
L device:R R150
U 1 1 6113FF93
P 11850 4650
F 0 "R150" V 11750 4650 50  0000 C CNN
F 1 "49.9" V 11850 4650 50  0000 C CNN
F 2 "" V 11780 4650 50  0001 C CNN
F 3 "" H 11850 4650 50  0001 C CNN
	1    11850 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	10850 4650 11700 4650
Text Label 12000 4650 0    50   ~ 0
GND
Text Notes 13600 3600 0    50   ~ 0
TRIG_OUT_MUX is one leg of a 1.2V CML output\nDC coupled, 390 mV swing or -4 dBm\n\nREF_OUT is single ended LVCMOS33\n~~3.3V swing or +14 dBm\n\nREF_OUT_P/N is LVDS, 400 mV or -4 dBm
Text HLabel 9800 3600 0    50   Input ~ 0
1V2
$EndSCHEMATC