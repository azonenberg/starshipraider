EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle J?
U 1 1 5FEAB244
P 1350 2100
F 0 "J?" H 1457 3367 50  0000 C CNN
F 1 "USB_C_Receptacle" H 1457 3276 50  0000 C CNN
F 2 "" H 1500 2100 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1500 2100 50  0001 C CNN
	1    1350 2100
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:FUSB302BMPX U?
U 1 1 5FEADEAA
P 1750 6450
F 0 "U?" H 2050 6100 50  0000 C CNN
F 1 "FUSB302BMPX" H 2250 6900 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-14-1EP_2.5x2.5mm_P0.5mm_EP1.45x1.45mm" H 1750 5950 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/FUSB302B-D.PDF" H 1850 6050 50  0001 C CNN
F 4 "FUSB302BMPXCT-ND" H 1750 6450 50  0001 C CNN "DPN"
	1    1750 6450
	1    0    0    -1  
$EndComp
Text HLabel 1050 6350 0    50   Input ~ 0
SDA
Text HLabel 1050 6450 0    50   Input ~ 0
SCL
Text HLabel 1050 6550 0    50   Input ~ 0
INT_N
Wire Wire Line
	1050 6350 1250 6350
Wire Wire Line
	1050 6450 1250 6450
Wire Wire Line
	1050 6550 1250 6550
Wire Wire Line
	1750 6850 1750 7050
$Comp
L power:GND #PWR?
U 1 1 5FEB48CA
P 1750 7050
F 0 "#PWR?" H 1750 6800 50  0001 C CNN
F 1 "GND" H 1755 6877 50  0000 C CNN
F 2 "" H 1750 7050 50  0001 C CNN
F 3 "" H 1750 7050 50  0001 C CNN
	1    1750 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1300 2200 1300
Wire Wire Line
	1950 1400 2200 1400
Text Label 2200 1300 0    50   ~ 0
CC1
Text Label 2200 1400 0    50   ~ 0
CC2
Wire Wire Line
	1950 1100 2200 1100
Text Label 2200 1100 0    50   ~ 0
VBUS
NoConn ~ 1950 1600
NoConn ~ 1950 1700
NoConn ~ 1950 1800
NoConn ~ 1950 1900
Text Label 2300 3300 0    50   ~ 0
SBU1
Text Label 2300 3400 0    50   ~ 0
SBU2
Wire Wire Line
	1950 2400 1950 2500
Wire Wire Line
	1950 2100 1950 2200
Wire Wire Line
	1950 2700 1950 2800
Wire Wire Line
	1950 3000 1950 3100
Wire Wire Line
	1950 2400 2150 2400
Connection ~ 1950 2400
Wire Wire Line
	1950 3000 2150 3000
Wire Wire Line
	2150 3000 2150 2400
Connection ~ 1950 3000
Wire Wire Line
	1950 2700 2300 2700
Wire Wire Line
	2300 2700 2300 2100
Connection ~ 1950 2700
Wire Wire Line
	1950 2100 2300 2100
Connection ~ 1950 2100
Text HLabel 9850 3400 0    50   Input ~ 0
-7V
Text HLabel 9750 750  0    50   Input ~ 0
+7V
Wire Wire Line
	2150 2400 2550 2400
Connection ~ 2150 2400
Wire Wire Line
	2300 2100 2550 2100
Connection ~ 2300 2100
$Comp
L power:GND #PWR?
U 1 1 5FEBFB76
P 1350 3850
F 0 "#PWR?" H 1350 3600 50  0001 C CNN
F 1 "GND" H 1355 3677 50  0000 C CNN
F 2 "" H 1350 3850 50  0001 C CNN
F 3 "" H 1350 3850 50  0001 C CNN
	1    1350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3700 1350 3850
Wire Wire Line
	1050 3700 1050 3850
$Comp
L power:GND #PWR?
U 1 1 5FEC192C
P 1050 3850
F 0 "#PWR?" H 1050 3600 50  0001 C CNN
F 1 "GND" H 1055 3677 50  0000 C CNN
F 2 "" H 1050 3850 50  0001 C CNN
F 3 "" H 1050 3850 50  0001 C CNN
	1    1050 3850
	1    0    0    -1  
$EndComp
Text Notes 650  4400 0    50   ~ 0
I'm not 100% sure about the shield connection.\nI've heard you should only connect one shield to ground.\nQuick searches haven't confirmed or invalidated this.
Wire Wire Line
	2250 6350 2450 6350
Wire Wire Line
	2250 6450 2450 6450
Wire Wire Line
	2250 6550 2450 6550
Text Label 2450 6450 0    50   ~ 0
CC1
Text Label 2450 6550 0    50   ~ 0
CC2
Text Label 2450 6350 0    50   ~ 0
VBUS
Text HLabel 1000 5600 0    50   Input ~ 0
+5V
Wire Wire Line
	1650 6050 1650 5600
Wire Wire Line
	1650 5600 1350 5600
$Comp
L Device:R R?
U 1 1 5FEC5F38
P 1850 5750
F 0 "R?" H 1920 5796 50  0000 L CNN
F 1 "0R" H 1920 5705 50  0000 L CNN
F 2 "" V 1780 5750 50  0001 C CNN
F 3 "~" H 1850 5750 50  0001 C CNN
	1    1850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5600 1850 5600
Connection ~ 1650 5600
Wire Wire Line
	1750 6050 1750 5900
Wire Wire Line
	1750 5900 1850 5900
Wire Wire Line
	1850 6050 1850 5900
Connection ~ 1850 5900
Text Notes 750  5400 0    50   ~ 0
Unsure if VCONN needs to be connected.\nWe won't use it, but I'm not sure if the IC works without it.
$Comp
L Device:C_Small C?
U 1 1 5FEC8A7C
P 1050 5850
F 0 "C?" H 1142 5896 50  0000 L CNN
F 1 "0u1" H 1142 5805 50  0000 L CNN
F 2 "" H 1050 5850 50  0001 C CNN
F 3 "~" H 1050 5850 50  0001 C CNN
	1    1050 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FEC8FCB
P 1350 5850
F 0 "C?" H 1442 5896 50  0000 L CNN
F 1 "1u" H 1442 5805 50  0000 L CNN
F 2 "" H 1350 5850 50  0001 C CNN
F 3 "~" H 1350 5850 50  0001 C CNN
	1    1350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5600 1050 5750
Connection ~ 1050 5600
Wire Wire Line
	1050 5600 1000 5600
Wire Wire Line
	1350 5600 1350 5750
Connection ~ 1350 5600
Wire Wire Line
	1350 5600 1050 5600
Wire Wire Line
	1350 5950 1050 5950
Wire Wire Line
	1050 5950 1050 6050
Connection ~ 1050 5950
$Comp
L power:GND #PWR?
U 1 1 5FECB406
P 1050 6050
F 0 "#PWR?" H 1050 5800 50  0001 C CNN
F 1 "GND" H 1055 5877 50  0000 C CNN
F 2 "" H 1050 6050 50  0001 C CNN
F 3 "" H 1050 6050 50  0001 C CNN
	1    1050 6050
	1    0    0    -1  
$EndComp
Text HLabel 7900 2650 0    50   Input ~ 0
PROBE_PWR_EN
Text HLabel 7950 4100 0    50   Input ~ 0
VBUS_~EN
Text HLabel 7950 4000 0    50   Input ~ 0
+5V
Text Label 9050 4000 0    50   ~ 0
VBUS
Text Label 2550 2400 0    50   ~ 0
+7V_GATED
Text Label 2550 2100 0    50   ~ 0
-7V_GATED
$Comp
L Device:Q_PMOS_DGS Q?
U 1 1 5FEF7D93
P 9950 1550
F 0 "Q?" H 10155 1596 50  0000 L CNN
F 1 "Q_PMOS_DGS" H 10155 1505 50  0000 L CNN
F 2 "" H 10150 1650 50  0001 C CNN
F 3 "~" H 9950 1550 50  0001 C CNN
	1    9950 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF11E9A
P 9300 1150
F 0 "R?" H 9370 1196 50  0000 L CNN
F 1 "10k" H 9370 1105 50  0000 L CNN
F 2 "" V 9230 1150 50  0001 C CNN
F 3 "~" H 9300 1150 50  0001 C CNN
	1    9300 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3400 10100 3400
Wire Wire Line
	10100 3400 10100 3150
$Comp
L Device:R R?
U 1 1 5FF18D9C
P 9400 3000
F 0 "R?" H 9470 3046 50  0000 L CNN
F 1 "10k" H 9470 2955 50  0000 L CNN
F 2 "" V 9330 3000 50  0001 C CNN
F 3 "~" H 9400 3000 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
Connection ~ 10100 3150
Wire Wire Line
	10100 3150 10100 2850
Wire Wire Line
	10050 1750 10050 1900
Wire Wire Line
	10050 1900 10550 1900
Text Label 10550 1900 0    50   ~ 0
+7V_GATED
Wire Wire Line
	10100 2450 10100 2350
Wire Wire Line
	10100 2350 10500 2350
Text Label 10500 2350 0    50   ~ 0
-7V_GATED
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 5FF2357A
P 8950 2750
F 0 "Q?" V 9278 2750 50  0000 C CNN
F 1 "Q_PNP_BCE" V 9187 2750 50  0000 C CNN
F 2 "" H 9150 2850 50  0001 C CNN
F 3 "~" H 8950 2750 50  0001 C CNN
	1    8950 2750
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF24ABE
P 8950 3100
F 0 "#PWR?" H 8950 2850 50  0001 C CNN
F 1 "GND" H 8955 2927 50  0000 C CNN
F 2 "" H 8950 3100 50  0001 C CNN
F 3 "" H 8950 3100 50  0001 C CNN
	1    8950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2950 8950 3100
$Comp
L Device:R R?
U 1 1 5FF27983
P 9550 2650
F 0 "R?" V 9343 2650 50  0000 C CNN
F 1 "100R" V 9434 2650 50  0000 C CNN
F 2 "" V 9480 2650 50  0001 C CNN
F 3 "~" H 9550 2650 50  0001 C CNN
	1    9550 2650
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 5FEF8C7D
P 10000 2650
F 0 "Q?" H 10204 2696 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 10204 2605 50  0000 L CNN
F 2 "" H 10200 2750 50  0001 C CNN
F 3 "~" H 10000 2650 50  0001 C CNN
	1    10000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2650 9800 2650
Wire Wire Line
	9400 2650 9400 2850
Wire Wire Line
	9400 3150 10100 3150
Wire Wire Line
	9150 2650 9400 2650
Connection ~ 9400 2650
Wire Wire Line
	8750 2650 8550 2650
$Comp
L Device:R R?
U 1 1 5FF317D1
P 8400 2650
F 0 "R?" V 8193 2650 50  0000 C CNN
F 1 "10k" V 8284 2650 50  0000 C CNN
F 2 "" V 8330 2650 50  0001 C CNN
F 3 "~" H 8400 2650 50  0001 C CNN
	1    8400 2650
	0    1    1    0   
$EndComp
Text Notes 7250 850  0    50   ~ 0
Modelled in LTSpice and seems to work,\nhaven't done full analysis.
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5FF399E2
P 9200 2000
F 0 "Q?" H 9391 2046 50  0000 L CNN
F 1 "Q_NPN_BCE" H 9391 1955 50  0000 L CNN
F 2 "" H 9400 2100 50  0001 C CNN
F 3 "~" H 9200 2000 50  0001 C CNN
	1    9200 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF3BF1C
P 9300 2300
F 0 "#PWR?" H 9300 2050 50  0001 C CNN
F 1 "GND" H 9305 2127 50  0000 C CNN
F 2 "" H 9300 2300 50  0001 C CNN
F 3 "" H 9300 2300 50  0001 C CNN
	1    9300 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF3DDF3
P 8550 2000
F 0 "R?" V 8343 2000 50  0000 C CNN
F 1 "10k" V 8434 2000 50  0000 C CNN
F 2 "" V 8480 2000 50  0001 C CNN
F 3 "~" H 8550 2000 50  0001 C CNN
	1    8550 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 2000 9000 2000
Wire Wire Line
	9300 2200 9300 2300
$Comp
L Device:R R?
U 1 1 5FF5C1FA
P 9500 1550
F 0 "R?" V 9293 1550 50  0000 C CNN
F 1 "100R" V 9384 1550 50  0000 C CNN
F 2 "" V 9430 1550 50  0001 C CNN
F 3 "~" H 9500 1550 50  0001 C CNN
	1    9500 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 750  10050 1000
Wire Wire Line
	9300 1000 10050 1000
Connection ~ 10050 1000
Wire Wire Line
	10050 1000 10050 1350
Wire Wire Line
	9300 1300 9300 1550
Wire Wire Line
	9300 1550 9350 1550
Connection ~ 9300 1550
Wire Wire Line
	9300 1550 9300 1800
Wire Wire Line
	9650 1550 9750 1550
Wire Wire Line
	8400 2000 8100 2000
Wire Wire Line
	8100 2000 8100 2650
Wire Wire Line
	8100 2650 8250 2650
$Comp
L project:LM66100 U?
U 1 1 5FECA27D
P 8450 4050
F 0 "U?" H 8475 4325 50  0000 C CNN
F 1 "LM66100" H 8475 4234 50  0000 C CNN
F 2 "" H 8400 4050 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/lm66100.pdf?HQS=dis-dk-null-digikeymode-dsf-pf-null-wwe&ts=1609185393082" H 8400 4050 50  0001 C CNN
F 4 "296-53541-1-ND" H 8450 4050 50  0001 C CNN "DPN"
	1    8450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4000 8150 4000
$Comp
L power:GND #PWR?
U 1 1 5FED23B4
P 8050 4550
F 0 "#PWR?" H 8050 4300 50  0001 C CNN
F 1 "GND" H 8055 4377 50  0000 C CNN
F 2 "" H 8050 4550 50  0001 C CNN
F 3 "" H 8050 4550 50  0001 C CNN
	1    8050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4000 9050 4000
Wire Wire Line
	8150 4400 8050 4400
Wire Wire Line
	8050 4400 8050 4550
Wire Wire Line
	7950 4100 8150 4100
NoConn ~ 8800 4400
Text Notes 7550 4950 0    50   ~ 0
Cheaper than doing it with discrete components
Wire Wire Line
	8100 2650 7900 2650
Connection ~ 8100 2650
Text Notes 7200 650  0    79   ~ 0
Probe Power Gating\n
Wire Wire Line
	9750 750  10050 750 
Wire Notes Line
	7200 650  11050 650 
Wire Notes Line
	11050 650  11050 3500
Wire Notes Line
	11050 3500 7200 3500
Wire Notes Line
	7200 650  7200 3500
Text Notes 7200 3700 0    79   ~ 0
VBUS Gating and Backfeed Protection\n
Wire Notes Line
	9450 3700 9450 5150
Wire Notes Line
	9450 5150 7200 5150
Wire Notes Line
	7200 5150 7200 3700
Wire Notes Line
	7200 3700 9450 3700
Text Notes 700  5200 0    79   ~ 0
USB C Controller
Wire Notes Line
	3100 5200 3100 7300
Wire Notes Line
	3100 7300 700  7300
Wire Notes Line
	700  7300 700  5200
Wire Notes Line
	700  5200 3100 5200
Text Notes 7550 1450 0    50   ~ 0
TODO check base resistor values
Text HLabel 2800 3300 2    50   Input ~ 0
SBU1
Text HLabel 2800 3400 2    50   Input ~ 0
SBU2
Wire Wire Line
	1950 3300 2800 3300
Wire Wire Line
	1950 3400 2800 3400
$EndSCHEMATC
