EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8850 1050 750  1450
U 5FEAAA07
F0 "USB C" 50
F1 "usb_c.sch" 50
F2 "SDA" I L 8850 1200 50 
F3 "SCL" I L 8850 1300 50 
F4 "INT_N" I L 8850 1400 50 
F5 "-7V" I L 8850 2300 50 
F6 "+7V" I L 8850 2400 50 
F7 "+5V" I L 8850 2100 50 
F8 "PROBE_PWR_EN" I L 8850 1550 50 
F9 "VBUS_~EN" I L 8850 1650 50 
$EndSheet
Text Notes 3350 2000 0    50   ~ 0
Spartan 7 (xc7s6) in ftgb196 - smallest 1mm pitch package
Text Notes 3250 2450 0    50   ~ 0
STUSB1700 for the USB-C interface maybe?
Text Notes 3250 2550 0    50   ~ 0
Or FUSB302B
$Comp
L Connector:Barrel_Jack J?
U 1 1 5FF78E24
P 950 2350
F 0 "J?" H 1007 2675 50  0000 C CNN
F 1 "Barrel_Jack" H 1007 2584 50  0000 C CNN
F 2 "" H 1000 2310 50  0001 C CNN
F 3 "~" H 1000 2310 50  0001 C CNN
	1    950  2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2450 1350 2450
Wire Wire Line
	1350 2450 1350 2600
$Comp
L power:GND #PWR?
U 1 1 5FF79CD6
P 1350 2600
F 0 "#PWR?" H 1350 2350 50  0001 C CNN
F 1 "GND" H 1355 2427 50  0000 C CNN
F 2 "" H 1350 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0001 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2250 1550 2250
Wire Wire Line
	1550 2250 1550 2050
$Comp
L power:+12V #PWR?
U 1 1 5FF7A6C3
P 1550 2050
F 0 "#PWR?" H 1550 1900 50  0001 C CNN
F 1 "+12V" H 1565 2223 50  0000 C CNN
F 2 "" H 1550 2050 50  0001 C CNN
F 3 "" H 1550 2050 50  0001 C CNN
	1    1550 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5FF7C198
P 1150 4600
F 0 "J?" H 1258 4881 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1258 4790 50  0000 C CNN
F 2 "" H 1150 4600 50  0001 C CNN
F 3 "~" H 1150 4600 50  0001 C CNN
	1    1150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4800 1450 4800
Wire Wire Line
	1450 4800 1450 4950
$Comp
L power:GND #PWR?
U 1 1 5FF7CCC8
P 1450 4950
F 0 "#PWR?" H 1450 4700 50  0001 C CNN
F 1 "GND" H 1455 4777 50  0000 C CNN
F 2 "" H 1450 4950 50  0001 C CNN
F 3 "" H 1450 4950 50  0001 C CNN
	1    1450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4500 1600 4500
Wire Wire Line
	1350 4600 1600 4600
Wire Wire Line
	1350 4700 1600 4700
Text Label 1600 4500 0    50   ~ 0
COPI
Text Label 1600 4600 0    50   ~ 0
CIPO
Text Label 1600 4700 0    50   ~ 0
~CS
$Sheet
S 7950 3150 1550 700 
U 5FFD8F4C
F0 "FPGA Power" 50
F1 "fpga_power.sch" 50
$EndSheet
$Comp
L xilinx7:xc7s6cpga196 U?
U 1 1 600C37FE
P 4600 4300
F 0 "U?" H 5531 3653 60  0000 L CNN
F 1 "xc7s6cpga196" H 5531 3547 60  0000 L CNN
F 2 "" H 4800 4350 60  0001 L CNN
F 3 "" H 4800 4150 60  0001 L CNN
F 4 "xc7s6cpga196" H 4800 4050 60  0001 L CNN "desc"
	1    4600 4300
	1    0    0    -1  
$EndComp
Text Notes 2350 5100 0    50   ~ 0
TODO:\n- SPI flash\n- JTAG interface\n- EMCCLK (100mhz DSC6102 maybe)\n- Main 12V -> 5V supply\n- 12V -> +- 7V supply\n- Finish off supply gating\n- power sequencing\n- FPGA IO connections and power sequencing
$EndSCHEMATC
