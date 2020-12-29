EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
P 4350 2000
F 0 "U?" H 4650 1650 50  0000 C CNN
F 1 "FUSB302BMPX" H 4850 2450 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-14-1EP_2.5x2.5mm_P0.5mm_EP1.45x1.45mm" H 4350 1500 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/FUSB302B-D.PDF" H 4450 1600 50  0001 C CNN
	1    4350 2000
	1    0    0    -1  
$EndComp
Text HLabel 3650 1900 0    50   Input ~ 0
SDA
Text HLabel 3650 2000 0    50   Input ~ 0
SCL
Text HLabel 3650 2100 0    50   Input ~ 0
INT_N
Wire Wire Line
	3650 1900 3850 1900
Wire Wire Line
	3650 2000 3850 2000
Wire Wire Line
	3650 2100 3850 2100
Wire Wire Line
	4350 2400 4350 2600
$Comp
L power:GND #PWR?
U 1 1 5FEB48CA
P 4350 2600
F 0 "#PWR?" H 4350 2350 50  0001 C CNN
F 1 "GND" H 4355 2427 50  0000 C CNN
F 2 "" H 4350 2600 50  0001 C CNN
F 3 "" H 4350 2600 50  0001 C CNN
	1    4350 2600
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
Wire Wire Line
	1950 3300 2300 3300
Wire Wire Line
	1950 3400 2300 3400
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
Text HLabel 8350 4650 0    50   Input ~ 0
-7V
Text HLabel 8550 2000 1    50   Input ~ 0
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
I'm not 100% sure about this.\nI've heard you should only connect one shield to ground.\nI would make it the host side, and I don't know if it's valid.
Wire Wire Line
	4850 1900 5050 1900
Wire Wire Line
	4850 2000 5050 2000
Wire Wire Line
	4850 2100 5050 2100
Text Label 5050 2000 0    50   ~ 0
CC1
Text Label 5050 2100 0    50   ~ 0
CC2
Text Label 5050 1900 0    50   ~ 0
VBUS
Text HLabel 3600 1150 0    50   Input ~ 0
+5V
Wire Wire Line
	4250 1600 4250 1150
Wire Wire Line
	4250 1150 3950 1150
$Comp
L Device:R R?
U 1 1 5FEC5F38
P 4450 1300
F 0 "R?" H 4520 1346 50  0000 L CNN
F 1 "0R" H 4520 1255 50  0000 L CNN
F 2 "" V 4380 1300 50  0001 C CNN
F 3 "~" H 4450 1300 50  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1150 4450 1150
Connection ~ 4250 1150
Wire Wire Line
	4350 1600 4350 1450
Wire Wire Line
	4350 1450 4450 1450
Wire Wire Line
	4450 1600 4450 1450
Connection ~ 4450 1450
Text Notes 3350 950  0    50   ~ 0
Unsure if VCONN needs to be connected.\nWe won't use it, but I'm not sure if the IC works without it.
$Comp
L Device:C_Small C?
U 1 1 5FEC8A7C
P 3650 1400
F 0 "C?" H 3742 1446 50  0000 L CNN
F 1 "0u1" H 3742 1355 50  0000 L CNN
F 2 "" H 3650 1400 50  0001 C CNN
F 3 "~" H 3650 1400 50  0001 C CNN
	1    3650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FEC8FCB
P 3950 1400
F 0 "C?" H 4042 1446 50  0000 L CNN
F 1 "1u" H 4042 1355 50  0000 L CNN
F 2 "" H 3950 1400 50  0001 C CNN
F 3 "~" H 3950 1400 50  0001 C CNN
	1    3950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1150 3650 1300
Connection ~ 3650 1150
Wire Wire Line
	3650 1150 3600 1150
Wire Wire Line
	3950 1150 3950 1300
Connection ~ 3950 1150
Wire Wire Line
	3950 1150 3650 1150
Wire Wire Line
	3950 1500 3650 1500
Wire Wire Line
	3650 1500 3650 1600
Connection ~ 3650 1500
$Comp
L power:GND #PWR?
U 1 1 5FECB406
P 3650 1600
F 0 "#PWR?" H 3650 1350 50  0001 C CNN
F 1 "GND" H 3655 1427 50  0000 C CNN
F 2 "" H 3650 1600 50  0001 C CNN
F 3 "" H 3650 1600 50  0001 C CNN
	1    3650 1600
	1    0    0    -1  
$EndComp
Text HLabel 5300 3900 0    50   Input ~ 0
PROBE_PWR_EN
Text HLabel 4750 5450 0    50   Input ~ 0
VBUS_~EN
$Comp
L Device:Q_PMOS_DGS Q?
U 1 1 5FEE7A6A
P 5500 5450
F 0 "Q?" H 5705 5496 50  0000 L CNN
F 1 "Q_PMOS_DGS" H 5705 5405 50  0000 L CNN
F 2 "" H 5700 5550 50  0001 C CNN
F 3 "~" H 5500 5450 50  0001 C CNN
	1    5500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5450 5000 5450
$Comp
L Device:R R?
U 1 1 5FEE9120
P 5000 5200
F 0 "R?" H 5070 5246 50  0000 L CNN
F 1 "10k" H 5070 5155 50  0000 L CNN
F 2 "" V 4930 5200 50  0001 C CNN
F 3 "~" H 5000 5200 50  0001 C CNN
	1    5000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5350 5000 5450
Connection ~ 5000 5450
Wire Wire Line
	5000 5450 5300 5450
Wire Wire Line
	5000 5050 5000 5000
Wire Wire Line
	5000 5000 5600 5000
Wire Wire Line
	5600 5000 5600 5250
Text HLabel 5600 4900 1    50   Input ~ 0
+5V
Wire Wire Line
	5600 4900 5600 5000
Connection ~ 5600 5000
Wire Wire Line
	5600 5650 5600 5800
Wire Wire Line
	5600 5800 5850 5800
Text Label 5850 5800 0    50   ~ 0
VBUS
Text Label 2550 2400 0    50   ~ 0
+7V_GATED
Text Label 2550 2100 0    50   ~ 0
-7V_GATED
$Comp
L Device:Q_PMOS_DGS Q?
U 1 1 5FEF7D93
P 8450 2800
F 0 "Q?" H 8655 2846 50  0000 L CNN
F 1 "Q_PMOS_DGS" H 8655 2755 50  0000 L CNN
F 2 "" H 8650 2900 50  0001 C CNN
F 3 "~" H 8450 2800 50  0001 C CNN
	1    8450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF11E9A
P 7800 2400
F 0 "R?" H 7870 2446 50  0000 L CNN
F 1 "10k" H 7870 2355 50  0000 L CNN
F 2 "" V 7730 2400 50  0001 C CNN
F 3 "~" H 7800 2400 50  0001 C CNN
	1    7800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4650 8600 4650
Wire Wire Line
	8600 4650 8600 4400
$Comp
L Device:R R?
U 1 1 5FF18D9C
P 7900 4250
F 0 "R?" H 7970 4296 50  0000 L CNN
F 1 "10k" H 7970 4205 50  0000 L CNN
F 2 "" V 7830 4250 50  0001 C CNN
F 3 "~" H 7900 4250 50  0001 C CNN
	1    7900 4250
	1    0    0    -1  
$EndComp
Connection ~ 8600 4400
Wire Wire Line
	8600 4400 8600 4100
Wire Wire Line
	8550 3000 8550 3150
Wire Wire Line
	8550 3150 9050 3150
Text Label 9050 3150 0    50   ~ 0
+7V_GATED
Wire Wire Line
	8600 3700 8600 3600
Wire Wire Line
	8600 3600 9000 3600
Text Label 9000 3600 0    50   ~ 0
-7V_GATED
$Comp
L Device:Q_PNP_BCE Q?
U 1 1 5FF2357A
P 7450 4000
F 0 "Q?" V 7778 4000 50  0000 C CNN
F 1 "Q_PNP_BCE" V 7687 4000 50  0000 C CNN
F 2 "" H 7650 4100 50  0001 C CNN
F 3 "~" H 7450 4000 50  0001 C CNN
	1    7450 4000
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF24ABE
P 7450 4350
F 0 "#PWR?" H 7450 4100 50  0001 C CNN
F 1 "GND" H 7455 4177 50  0000 C CNN
F 2 "" H 7450 4350 50  0001 C CNN
F 3 "" H 7450 4350 50  0001 C CNN
	1    7450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4200 7450 4350
$Comp
L Device:R R?
U 1 1 5FF27983
P 8050 3900
F 0 "R?" V 7843 3900 50  0000 C CNN
F 1 "100R" V 7934 3900 50  0000 C CNN
F 2 "" V 7980 3900 50  0001 C CNN
F 3 "~" H 8050 3900 50  0001 C CNN
	1    8050 3900
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 5FEF8C7D
P 8500 3900
F 0 "Q?" H 8704 3946 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 8704 3855 50  0000 L CNN
F 2 "" H 8700 4000 50  0001 C CNN
F 3 "~" H 8500 3900 50  0001 C CNN
	1    8500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3900 8300 3900
Wire Wire Line
	7900 3900 7900 4100
Wire Wire Line
	7900 4400 8600 4400
Wire Wire Line
	7650 3900 7900 3900
Connection ~ 7900 3900
Wire Wire Line
	7250 3900 7050 3900
$Comp
L Device:R R?
U 1 1 5FF317D1
P 6900 3900
F 0 "R?" V 6693 3900 50  0000 C CNN
F 1 "10k" V 6784 3900 50  0000 C CNN
F 2 "" V 6830 3900 50  0001 C CNN
F 3 "~" H 6900 3900 50  0001 C CNN
	1    6900 3900
	0    1    1    0   
$EndComp
Text Notes 6700 4950 0    50   ~ 0
Modelled in LTSpice and seems to work,\nhaven't gone through and actually analysed anything but it makes sense.
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5FF399E2
P 7700 3250
F 0 "Q?" H 7891 3296 50  0000 L CNN
F 1 "Q_NPN_BCE" H 7891 3205 50  0000 L CNN
F 2 "" H 7900 3350 50  0001 C CNN
F 3 "~" H 7700 3250 50  0001 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF3BF1C
P 7800 3550
F 0 "#PWR?" H 7800 3300 50  0001 C CNN
F 1 "GND" H 7805 3377 50  0000 C CNN
F 2 "" H 7800 3550 50  0001 C CNN
F 3 "" H 7800 3550 50  0001 C CNN
	1    7800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF3DDF3
P 7050 3250
F 0 "R?" V 6843 3250 50  0000 C CNN
F 1 "10k" V 6934 3250 50  0000 C CNN
F 2 "" V 6980 3250 50  0001 C CNN
F 3 "~" H 7050 3250 50  0001 C CNN
	1    7050 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 3250 7500 3250
Text Notes 5500 2750 0    50   ~ 0
This works fine right?\nSaturating the transistor and thus pulling everything down?
Wire Wire Line
	7800 3450 7800 3550
$Comp
L Device:R R?
U 1 1 5FF5C1FA
P 8000 2800
F 0 "R?" V 7793 2800 50  0000 C CNN
F 1 "100R" V 7884 2800 50  0000 C CNN
F 2 "" V 7930 2800 50  0001 C CNN
F 3 "~" H 8000 2800 50  0001 C CNN
	1    8000 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 2000 8550 2250
Wire Wire Line
	7800 2250 8550 2250
Connection ~ 8550 2250
Wire Wire Line
	8550 2250 8550 2600
Wire Wire Line
	7800 2550 7800 2800
Wire Wire Line
	7800 2800 7850 2800
Connection ~ 7800 2800
Wire Wire Line
	7800 2800 7800 3050
Wire Wire Line
	8150 2800 8250 2800
Wire Wire Line
	6900 3250 6600 3250
Wire Wire Line
	6600 3250 6600 3900
Connection ~ 6600 3900
Wire Wire Line
	6600 3900 6750 3900
Wire Wire Line
	5300 3900 6600 3900
$EndSCHEMATC
