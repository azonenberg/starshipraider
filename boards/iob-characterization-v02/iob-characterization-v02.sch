EESchema Schematic File Version 2
LIBS:conn
LIBS:device
LIBS:analog-azonenberg
LIBS:cmos
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 2
Title "STARSHIPRAIDER I/O Characterization"
Date "2017-05-17"
Rev "0.2"
Comp "Andrew Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STARSHIPRAIDER_IOBOARD_MODULE J?
U 1 1 591D397B
P 1600 4050
F 0 "J?" H 2150 7487 60  0000 C CNN
F 1 "STARSHIPRAIDER_IOBOARD_MODULE" H 2150 7381 60  0000 C CNN
F 2 "" H 2250 4250 60  0000 C CNN
F 3 "" H 2250 4250 60  0000 C CNN
	1    1600 4050
	1    0    0    -1  
$EndComp
$Sheet
S 5250 900  1100 1750
U 591D3AB5
F0 "Power Supply" 60
F1 "psu.sch" 60
F2 "12V0" I L 5250 950 60 
F3 "5V0" I L 5250 1050 60 
F4 "GND" I L 5250 1250 60 
F5 "I2C_SDA" I L 5250 1450 60 
F6 "I2C_SCL" I L 5250 1550 60 
F7 "VCCO" O R 6350 950 60 
F8 "VCLIP_HI" O R 6350 1150 60 
F9 "VCLIP_LO" O R 6350 1250 60 
F10 "2V5" O R 6350 1450 60 
$EndSheet
$Comp
L 24Cxx-DFN8 U?
U 1 1 591D3CD6
P 1600 5150
F 0 "U?" H 2000 5947 60  0000 C CNN
F 1 "24LC16BT" H 2000 5841 60  0000 C CNN
F 2 "" H 2000 5450 60  0000 C CNN
F 3 "" H 2000 5450 60  0000 C CNN
	1    1600 5150
	1    0    0    -1  
$EndComp
Text Label 1250 900  2    60   ~ 0
5V0
Text Label 1250 1000 2    60   ~ 0
3V3
Wire Wire Line
	1250 900  1400 900 
Wire Wire Line
	1400 1000 1250 1000
Text Label 1250 1100 2    60   ~ 0
I2C_SDA
Wire Wire Line
	1250 1100 1400 1100
Text Label 1250 1200 2    60   ~ 0
GND
Wire Wire Line
	1250 1200 1400 1200
Text Label 1250 1500 2    60   ~ 0
GND
Wire Wire Line
	1250 1500 1400 1500
Text Label 1250 1800 2    60   ~ 0
GND
Wire Wire Line
	1250 1800 1400 1800
Text Label 1250 2100 2    60   ~ 0
GND
Wire Wire Line
	1250 2100 1400 2100
Text Label 1250 2400 2    60   ~ 0
GND
Wire Wire Line
	1250 2400 1400 2400
Text Label 1250 2700 2    60   ~ 0
GND
Wire Wire Line
	1250 2700 1400 2700
Text Label 1250 3000 2    60   ~ 0
GND
Wire Wire Line
	1250 3000 1400 3000
Text Label 1250 3300 2    60   ~ 0
GND
Wire Wire Line
	1250 3300 1400 3300
Text Label 1250 3600 2    60   ~ 0
GND
Wire Wire Line
	1250 3600 1400 3600
Text Label 1250 3700 2    60   ~ 0
3V3
Text Label 1250 3800 2    60   ~ 0
12V0
Text Label 1250 4000 2    60   ~ 0
GND
Wire Wire Line
	1250 4000 1400 4000
Wire Wire Line
	1250 3800 1400 3800
Wire Wire Line
	1250 3700 1400 3700
Text Label 3050 900  0    60   ~ 0
5V0
Wire Wire Line
	3050 900  2900 900 
Text Label 3050 1000 0    60   ~ 0
3V3
Wire Wire Line
	3050 1000 2900 1000
Text Label 3050 1100 0    60   ~ 0
I2C_SCL
Wire Wire Line
	3050 1100 2900 1100
Text Notes 1650 5250 0    60   ~ 0
Address = 8'ha0
Wire Wire Line
	1400 4900 1300 4900
Wire Wire Line
	1300 4700 1300 5100
Wire Wire Line
	1300 5000 1400 5000
Wire Wire Line
	750  5100 1400 5100
Connection ~ 1300 5000
Wire Wire Line
	1150 4700 1400 4700
Connection ~ 1300 4900
Text Label 1150 4700 2    60   ~ 0
GND
Connection ~ 1300 4700
Text Label 750  4600 2    60   ~ 0
3V3
Wire Wire Line
	750  4600 1400 4600
Text Label 2750 4600 0    60   ~ 0
I2C_SCL
Wire Wire Line
	2750 4600 2600 4600
Text Label 2750 4700 0    60   ~ 0
I2C_SDA
Wire Wire Line
	2750 4700 2600 4700
Text Label 2750 4900 0    60   ~ 0
3V3
Wire Wire Line
	2750 4900 2600 4900
$Comp
L C C?
U 1 1 591D4141
P 750 4950
F 0 "C?" H 865 4996 50  0000 L CNN
F 1 "0.47 uF" H 865 4905 50  0000 L CNN
F 2 "" H 788 4800 50  0000 C CNN
F 3 "" H 750 4950 50  0000 C CNN
	1    750  4950
	1    0    0    -1  
$EndComp
Connection ~ 1300 5100
Wire Wire Line
	750  4600 750  4800
Text Label 3050 1200 0    60   ~ 0
GND
Wire Wire Line
	3050 1200 2900 1200
Text Label 3050 1500 0    60   ~ 0
GND
Wire Wire Line
	3050 1500 2900 1500
Text Label 3050 1800 0    60   ~ 0
GND
Wire Wire Line
	3050 1800 2900 1800
Text Label 3050 2100 0    60   ~ 0
GND
Wire Wire Line
	3050 2100 2900 2100
Text Label 3050 2400 0    60   ~ 0
GND
Wire Wire Line
	3050 2400 2900 2400
Text Label 3050 2700 0    60   ~ 0
GND
Wire Wire Line
	3050 2700 2900 2700
Text Label 3050 3000 0    60   ~ 0
GND
Wire Wire Line
	3050 3000 2900 3000
Text Label 3050 3300 0    60   ~ 0
GND
Wire Wire Line
	3050 3300 2900 3300
Text Label 3050 3600 0    60   ~ 0
GND
Wire Wire Line
	3050 3600 2900 3600
Text Label 3050 3700 0    60   ~ 0
3V3
Text Label 3050 3800 0    60   ~ 0
12V0
Wire Wire Line
	3050 3800 2900 3800
Wire Wire Line
	2900 3700 3050 3700
$Comp
L LMH7322 U?
U 1 1 591D4440
P 12750 7750
F 0 "U?" H 12675 8897 60  0000 C CNN
F 1 "LMH7322" H 12675 8791 60  0000 C CNN
F 2 "" H 12250 7700 60  0000 C CNN
F 3 "" H 12250 7700 60  0000 C CNN
	1    12750 7750
	1    0    0    -1  
$EndComp
$Comp
L LMH7322 U?
U 2 1 591D451C
P 12750 9300
F 0 "U?" H 12675 10447 60  0000 C CNN
F 1 "LMH7322" H 12675 10341 60  0000 C CNN
F 2 "" H 12250 9250 60  0000 C CNN
F 3 "" H 12250 9250 60  0000 C CNN
	2    12750 9300
	1    0    0    -1  
$EndComp
Text Label 5100 1050 2    60   ~ 0
5V0
Wire Wire Line
	5100 1050 5250 1050
Text Label 5100 950  2    60   ~ 0
12V0
Wire Wire Line
	5100 950  5250 950 
Text Label 5100 1250 2    60   ~ 0
GND
Wire Wire Line
	5100 1250 5250 1250
Text Label 13550 6850 0    60   ~ 0
2V5
Wire Wire Line
	13300 6850 13550 6850
Text Notes 12250 9450 0    60   ~ 0
Input comparators
Wire Wire Line
	13400 6850 13400 6950
Wire Wire Line
	13400 6950 13300 6950
Connection ~ 13400 6850
Text Label 13550 8400 0    60   ~ 0
2V5
Wire Wire Line
	13300 8400 13550 8400
Wire Wire Line
	13400 8400 13400 8500
Wire Wire Line
	13400 8500 13300 8500
Connection ~ 13400 8400
Text Label 14600 7350 0    60   ~ 0
RXD0_P
Text Label 14600 7450 0    60   ~ 0
RXD0_N
Text Label 13400 8900 0    60   ~ 0
RXD1_P
Wire Wire Line
	13400 8900 13300 8900
Text Label 13400 9000 0    60   ~ 0
RXD1_N
Wire Wire Line
	13400 9000 13300 9000
$Comp
L R R?
U 1 1 591D5E1E
P 13650 7650
F 0 "R?" V 13700 7800 50  0000 C CNN
F 1 "10K" V 13650 7650 50  0000 C CNN
F 2 "" V 13580 7650 50  0000 C CNN
F 3 "" H 13650 7650 50  0000 C CNN
	1    13650 7650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13500 7650 13300 7650
$Comp
L R R?
U 1 1 591D6147
P 13650 7750
F 0 "R?" V 13700 7900 50  0000 C CNN
F 1 "10K" V 13650 7750 50  0000 C CNN
F 2 "" V 13580 7750 50  0000 C CNN
F 3 "" H 13650 7750 50  0000 C CNN
	1    13650 7750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13500 7750 13300 7750
Text Label 13900 7750 0    60   ~ 0
2V5
Wire Wire Line
	13900 7750 13800 7750
$Comp
L R R?
U 1 1 591D634D
P 13650 9200
F 0 "R?" V 13700 9350 50  0000 C CNN
F 1 "10K" V 13650 9200 50  0000 C CNN
F 2 "" V 13580 9200 50  0000 C CNN
F 3 "" H 13650 9200 50  0000 C CNN
	1    13650 9200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13500 9200 13300 9200
$Comp
L R R?
U 1 1 591D6354
P 13650 9300
F 0 "R?" V 13700 9450 50  0000 C CNN
F 1 "10K" V 13650 9300 50  0000 C CNN
F 2 "" V 13580 9300 50  0000 C CNN
F 3 "" H 13650 9300 50  0000 C CNN
	1    13650 9300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13500 9300 13300 9300
Text Label 13900 9300 0    60   ~ 0
2V5
Wire Wire Line
	13900 9300 13800 9300
Text Label 3050 1300 0    60   ~ 0
RXD0_P
Text Label 3050 1400 0    60   ~ 0
RXD0_N
Wire Wire Line
	2900 1300 3050 1300
Wire Wire Line
	3050 1400 2900 1400
Text Label 3050 1600 0    60   ~ 0
RXD1_P
Text Label 3050 1700 0    60   ~ 0
RXD1_N
Wire Wire Line
	2900 1600 3050 1600
Wire Wire Line
	3050 1700 2900 1700
Text Label 3050 1900 0    60   ~ 0
GND
Wire Wire Line
	3050 1900 2900 1900
Text Label 3050 2000 0    60   ~ 0
GND
Wire Wire Line
	3050 2000 2900 2000
Text Label 3050 2200 0    60   ~ 0
GND
Wire Wire Line
	3050 2200 2900 2200
Text Label 3050 2300 0    60   ~ 0
GND
Wire Wire Line
	3050 2300 2900 2300
Text Label 3050 2500 0    60   ~ 0
GND
Wire Wire Line
	3050 2500 2900 2500
Text Label 3050 2600 0    60   ~ 0
GND
Wire Wire Line
	3050 2600 2900 2600
Text Label 3050 2800 0    60   ~ 0
GND
Wire Wire Line
	3050 2800 2900 2800
Text Label 3050 2900 0    60   ~ 0
GND
Wire Wire Line
	3050 2900 2900 2900
Text Label 3050 3100 0    60   ~ 0
GND
Wire Wire Line
	3050 3100 2900 3100
Text Label 3050 3200 0    60   ~ 0
GND
Wire Wire Line
	3050 3200 2900 3200
Text Label 3050 3400 0    60   ~ 0
GND
Wire Wire Line
	3050 3400 2900 3400
Text Label 3050 3500 0    60   ~ 0
GND
Wire Wire Line
	3050 3500 2900 3500
NoConn ~ 1400 1900
NoConn ~ 1400 2000
NoConn ~ 1400 2200
NoConn ~ 1400 2300
NoConn ~ 1400 2500
NoConn ~ 1400 2600
NoConn ~ 1400 2800
NoConn ~ 1400 2900
NoConn ~ 1400 3100
NoConn ~ 1400 3200
NoConn ~ 1400 3400
NoConn ~ 1400 3500
Text Label 11850 7450 2    60   ~ 0
VREF
Wire Wire Line
	11850 7450 12050 7450
Text Label 11850 9000 2    60   ~ 0
VREF
Wire Wire Line
	11850 9000 12050 9000
Text Label 11850 8900 2    60   ~ 0
VIN1_PROT
Wire Wire Line
	11850 8900 12050 8900
Text Label 11850 7350 2    60   ~ 0
VIN0_PROT
Wire Wire Line
	11850 7350 12050 7350
$Comp
L R R?
U 1 1 591D7E50
P 11800 7650
F 0 "R?" V 11750 7450 50  0000 C CNN
F 1 "20K" V 11800 7650 50  0000 C CNN
F 2 "" V 11730 7650 50  0000 C CNN
F 3 "" H 11800 7650 50  0000 C CNN
	1    11800 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	11950 7650 12050 7650
Wire Wire Line
	11650 7650 11500 7650
Wire Wire Line
	11500 7650 11500 7750
Wire Wire Line
	11500 7750 12050 7750
$Comp
L R R?
U 1 1 591D8251
P 11800 9200
F 0 "R?" V 11750 9000 50  0000 C CNN
F 1 "20K" V 11800 9200 50  0000 C CNN
F 2 "" V 11730 9200 50  0000 C CNN
F 3 "" H 11800 9200 50  0000 C CNN
	1    11800 9200
	0    1    1    0   
$EndComp
Wire Wire Line
	11950 9200 12050 9200
Wire Wire Line
	11650 9200 11500 9200
Wire Wire Line
	11500 9200 11500 9300
Wire Wire Line
	11500 9300 12050 9300
Wire Wire Line
	12050 6950 11950 6950
Wire Wire Line
	11950 6950 11950 7050
Wire Wire Line
	11950 7050 12050 7050
Text Label 11850 6850 2    60   ~ 0
12V0
Wire Wire Line
	11850 6850 12050 6850
Text Label 11850 8400 2    60   ~ 0
12V0
Wire Wire Line
	11850 8400 12050 8400
$Comp
L R R?
U 1 1 591D8A42
P 14450 7200
F 0 "R?" H 14520 7246 50  0000 L CNN
F 1 "R" V 14450 7150 50  0000 L CNN
F 2 "" V 14380 7200 50  0000 C CNN
F 3 "" H 14450 7200 50  0000 C CNN
	1    14450 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13300 7350 14600 7350
Connection ~ 14450 7350
$Comp
L R R?
U 1 1 591D8C6E
P 14450 7600
F 0 "R?" H 14520 7646 50  0000 L CNN
F 1 "R" V 14450 7550 50  0000 L CNN
F 2 "" V 14380 7600 50  0000 C CNN
F 3 "" H 14450 7600 50  0000 C CNN
	1    14450 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13300 7450 14600 7450
Connection ~ 14450 7450
Text Notes 14100 8250 0    60   ~ 0
TODO: Calculate termination resistors\nNeeds to have midpoint of +0.5V\nParallel resistance must equal 50R
Text Notes 5150 7650 0    60   ~ 0
TODO: Input protection
Text Notes 9050 8100 0    60   ~ 0
TODO: Figure out Vss voltage for comparator\nOptions include 0, -0.5, -1V
$EndSCHEMATC
