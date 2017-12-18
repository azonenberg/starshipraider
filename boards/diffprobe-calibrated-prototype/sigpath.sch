EESchema Schematic File Version 3
LIBS:analog-azonenberg
LIBS:cmos
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:silego-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:conn
LIBS:device
LIBS:diffprobe-calibrated-prototype-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 4
Title "500 MHz Active Differential Probe"
Date "2017-12-18"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R?
U 1 1 5A1F7B04
P 1450 2400
F 0 "R?" H 1520 2446 50  0000 L CNN
F 1 "49.9" H 1520 2355 50  0000 L CNN
F 2 "" V 1380 2400 50  0000 C CNN
F 3 "" H 1450 2400 50  0000 C CNN
	1    1450 2400
	1    0    0    -1  
$EndComp
$Comp
L BNC P?
U 1 1 5A1F7B3B
P 1200 2550
F 0 "P?" H 1301 2434 50  0000 L CNN
F 1 "SMA" H 1301 2525 50  0000 L CNN
F 2 "" H 1200 2550 50  0000 C CNN
F 3 "" H 1200 2550 50  0000 C CNN
	1    1200 2550
	-1   0    0    1   
$EndComp
$Comp
L THS3217 U?
U 1 1 5A1F7B74
P 10300 3050
F 0 "U?" H 10275 5297 60  0000 C CNN
F 1 "THS3217" H 10275 5191 60  0000 C CNN
F 2 "" H 10300 3000 60  0001 C CNN
F 3 "" H 10300 3000 60  0001 C CNN
	1    10300 3050
	1    0    0    -1  
$EndComp
$Comp
L BNC P?
U 1 1 5A1F7C3D
P 1200 2800
F 0 "P?" H 1301 2776 50  0000 L CNN
F 1 "SMA" H 1301 2685 50  0000 L CNN
F 2 "" H 1200 2800 50  0000 C CNN
F 3 "" H 1200 2800 50  0000 C CNN
	1    1200 2800
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A1F7D30
P 1450 2950
F 0 "R?" H 1520 2996 50  0000 L CNN
F 1 "49.9" H 1520 2905 50  0000 L CNN
F 2 "" V 1380 2950 50  0000 C CNN
F 3 "" H 1450 2950 50  0000 C CNN
	1    1450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2550 2150 2550
Wire Wire Line
	1350 2800 1450 2800
Wire Wire Line
	1200 2350 1200 2250
Wire Wire Line
	900  2250 1450 2250
Wire Wire Line
	1200 3000 1200 3100
Wire Wire Line
	900  3100 1450 3100
Text Label 900  3100 2    60   ~ 0
GND
Connection ~ 1200 3100
Text Label 900  2250 2    60   ~ 0
GND
Connection ~ 1200 2250
Wire Wire Line
	9250 2300 9250 2350
Wire Wire Line
	9250 2350 9500 2350
Connection ~ 1450 2550
Wire Wire Line
	1450 2800 1450 2750
Wire Wire Line
	1450 2750 2150 2750
Wire Wire Line
	9250 2500 9250 2450
Wire Wire Line
	9250 2450 9500 2450
Text Label 2150 2550 0    60   ~ 0
VIN_P
Text Label 2150 2750 0    60   ~ 0
VIN_N
Wire Wire Line
	9350 1050 9500 1050
Wire Wire Line
	9400 1050 9400 1150
Wire Wire Line
	9400 1150 9500 1150
Connection ~ 9400 1050
Wire Wire Line
	9350 1250 9500 1250
Wire Wire Line
	9400 1250 9400 1350
Wire Wire Line
	9400 1350 9500 1350
Connection ~ 9400 1250
Wire Wire Line
	9350 1450 9500 1450
Wire Wire Line
	9500 1550 9400 1550
Wire Wire Line
	9400 1550 9400 1450
Connection ~ 9400 1450
Text Label 9000 1750 2    60   ~ 0
5V0_P
$Comp
L R R?
U 1 1 5A1F818B
P 9250 1750
F 0 "R?" V 9300 1600 50  0000 C CNN
F 1 "0" V 9250 1750 50  0000 C CNN
F 2 "" V 9180 1750 50  0000 C CNN
F 3 "" H 9250 1750 50  0000 C CNN
	1    9250 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 1750 9100 1750
Wire Wire Line
	9400 1750 9500 1750
$Comp
L R R?
U 1 1 5A1F8312
P 9250 1850
F 0 "R?" V 9300 1700 50  0000 C CNN
F 1 "0" V 9250 1850 50  0000 C CNN
F 2 "" V 9180 1850 50  0000 C CNN
F 3 "" H 9250 1850 50  0000 C CNN
	1    9250 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 1850 9500 1850
Wire Wire Line
	9100 1850 9050 1850
Wire Wire Line
	9050 1850 9050 1750
Connection ~ 9050 1750
Text Label 9350 2950 2    60   ~ 0
VOFFSET_BUF
Wire Wire Line
	9350 2950 9500 2950
Text Label 11150 2050 0    60   ~ 0
VOFFSET_BUF
Wire Wire Line
	11150 2050 11050 2050
NoConn ~ 11050 2750
NoConn ~ 9500 2750
NoConn ~ 9500 2850
Text Label 9500 2050 2    60   ~ 0
VOFFSET
Text Label 11150 2350 0    60   ~ 0
VOUT_RAW
Wire Wire Line
	11050 2350 13750 2350
$Comp
L BNC P?
U 1 1 5A1F85E9
P 15650 2350
F 0 "P?" H 15751 2326 50  0000 L CNN
F 1 "SMA" H 15751 2235 50  0000 L CNN
F 2 "" H 15650 2350 50  0000 C CNN
F 3 "" H 15650 2350 50  0000 C CNN
	1    15650 2350
	1    0    0    -1  
$EndComp
Text Notes 9050 9400 0    60   ~ 0
TODO: Decoupling for everything
Text Label 4550 9000 0    60   ~ 0
VOFFSET
$Comp
L HMC346AMS8GE U?
U 1 1 5A1FD030
P 13950 3050
F 0 "U?" H 14225 3997 60  0000 C CNN
F 1 "HMC346AMS8GE" H 14225 3891 60  0000 C CNN
F 2 "" H 14150 3050 60  0001 C CNN
F 3 "" H 14150 3050 60  0001 C CNN
	1    13950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 2350 15500 2350
Text Label 15000 2350 0    60   ~ 0
VOUT
Text Label 15500 2550 2    60   ~ 0
GND
Wire Wire Line
	15500 2550 15650 2550
Text Label 13600 2900 2    60   ~ 0
GND
Wire Wire Line
	13600 2900 13750 2900
Wire Wire Line
	13650 2900 13650 3000
Wire Wire Line
	13650 3000 13750 3000
Connection ~ 13650 2900
$Comp
L AD8675 U?
U 1 1 5A1FD8B9
P 11950 3500
F 0 "U?" H 12350 4347 60  0000 C CNN
F 1 "AD8675" H 12350 4241 60  0000 C CNN
F 2 "" H 11950 3500 60  0001 C CNN
F 3 "" H 11950 3500 60  0001 C CNN
	1    11950 3500
	1    0    0    -1  
$EndComp
Text Label 11600 2900 2    60   ~ 0
5V0_P
Text HLabel 9350 1050 0    60   Input ~ 0
5V0_P
Text HLabel 9350 1450 0    60   Input ~ 0
5V0_N
Text HLabel 9350 1250 0    60   Input ~ 0
GND
Text Label 11600 3000 2    60   ~ 0
5V0_N
NoConn ~ 12950 2900
NoConn ~ 12950 3000
Wire Wire Line
	12950 3350 13350 3350
Wire Wire Line
	13350 3350 13350 2750
Wire Wire Line
	13350 2750 13750 2750
Text Label 13350 3350 0    60   ~ 0
ATTEN_V2
$Comp
L D D?
U 1 1 5A1FDC38
P 13200 2750
F 0 "D?" H 13100 2800 50  0000 C CNN
F 1 "1N4148" H 13150 2650 50  0000 C CNN
F 2 "" H 13200 2750 50  0000 C CNN
F 3 "" H 13200 2750 50  0000 C CNN
	1    13200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 2750 13000 2750
Wire Wire Line
	13000 2750 13000 2450
Wire Wire Line
	13000 2450 13750 2450
Text Label 13000 2450 0    60   ~ 0
ATTEN_REF
Text Label 11600 3400 2    60   ~ 0
ATTEN_REF
$Comp
L R R?
U 1 1 5A1FDE64
P 11700 3550
F 0 "R?" H 11770 3596 50  0000 L CNN
F 1 "3.9K" H 11770 3505 50  0000 L CNN
F 2 "" V 11630 3550 50  0000 C CNN
F 3 "" H 11700 3550 50  0000 C CNN
	1    11700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11600 2900 11750 2900
Wire Wire Line
	11750 3000 11600 3000
Wire Wire Line
	11600 3400 11750 3400
Connection ~ 11700 3400
$Comp
L R R?
U 1 1 5A1FE1FD
P 11700 3950
F 0 "R?" H 11770 3996 50  0000 L CNN
F 1 "3.9K" H 11770 3905 50  0000 L CNN
F 2 "" V 11630 3950 50  0000 C CNN
F 3 "" H 11700 3950 50  0000 C CNN
	1    11700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 3700 11700 3800
Text Label 11600 3750 2    60   ~ 0
5V0_N
Wire Wire Line
	11050 4100 12050 4100
Wire Wire Line
	11600 3750 11700 3750
Connection ~ 11700 3750
Wire Wire Line
	11050 3300 11750 3300
$Comp
L R R?
U 1 1 5A1FE4D8
P 12050 3950
F 0 "R?" H 12120 3996 50  0000 L CNN
F 1 "499" H 12120 3905 50  0000 L CNN
F 2 "" V 11980 3950 50  0000 C CNN
F 3 "" H 12050 3950 50  0000 C CNN
	1    12050 3950
	1    0    0    -1  
$EndComp
Text Label 12050 3750 0    60   ~ 0
GND
Wire Wire Line
	12050 3750 12050 3800
Connection ~ 11700 4100
Text Label 11600 3300 2    60   ~ 0
VATTEN_P
Wire Wire Line
	11050 3300 11050 4100
Text Label 13750 2650 2    60   ~ 0
VATTEN
Text Label 4550 8900 0    60   ~ 0
VATTEN
Text Notes 8250 8600 0    60   ~ 0
VOUT should not exceed 5V RMS to avoid damaging DSO\nVOUT_RAW should not exceed +18 dBm (1.776 Vrms / 5V p-p) AC voltage\nHMC346AMS doesn't specify max DC offset other than "should be about zero"\nWith 2V/V gain:\n* Input differential = 0.89 Vrms max (17.76V w/ 20x probes)\n* Input common mode = unspecified, but minimize
$Comp
L AD57x2 U?
U 1 1 5A1FD27E
P 3200 10850
F 0 "U?" H 3650 13047 60  0000 C CNN
F 1 "AD5752" H 3650 12941 60  0000 C CNN
F 2 "" H 3200 10850 60  0001 C CNN
F 3 "" H 3200 10850 60  0001 C CNN
	1    3200 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 9000 4300 9000
Wire Wire Line
	4300 8900 4550 8900
Wire Wire Line
	2500 8900 3000 8900
Text Label 2850 9000 2    60   ~ 0
5V0_P
Wire Wire Line
	2850 9000 3000 9000
Text Label 2850 9100 2    60   ~ 0
5V0_N
Wire Wire Line
	2850 9100 3000 9100
Text HLabel 2500 8900 0    60   Input ~ 0
3V3
Wire Wire Line
	2900 9100 2900 9200
Wire Wire Line
	2900 9200 3000 9200
Connection ~ 2900 9100
Text Label 2850 9300 2    60   ~ 0
GND
Wire Wire Line
	2850 9300 3000 9300
Wire Wire Line
	2900 9300 2900 9700
Wire Wire Line
	2900 9400 3000 9400
Connection ~ 2900 9300
Wire Wire Line
	2900 9500 3000 9500
Connection ~ 2900 9400
Wire Wire Line
	2900 9600 3000 9600
Connection ~ 2900 9500
Wire Wire Line
	2900 9700 3000 9700
Connection ~ 2900 9600
Text Label 2400 10100 2    60   ~ 0
GND
$Comp
L R R?
U 1 1 5A1FDC9E
P 2750 10100
F 0 "R?" V 2800 9900 50  0000 L CNN
F 1 "0" V 2750 10100 50  0000 L CNN
F 2 "" V 2680 10100 50  0000 C CNN
F 3 "" H 2750 10100 50  0000 C CNN
	1    2750 10100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 10100 2600 10100
Wire Wire Line
	2900 10100 3000 10100
Text Label 2400 10300 2    60   ~ 0
GND
$Comp
L R R?
U 1 1 5A1FE175
P 2750 10300
F 0 "R?" V 2800 10100 50  0000 L CNN
F 1 "0" V 2750 10300 50  0000 L CNN
F 2 "" V 2680 10300 50  0000 C CNN
F 3 "" H 2750 10300 50  0000 C CNN
	1    2750 10300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 10300 2600 10300
Wire Wire Line
	2900 10300 3000 10300
Text Label 2400 10400 2    60   ~ 0
3V3
$Comp
L R R?
U 1 1 5A1FE2EB
P 2750 10400
F 0 "R?" V 2800 10200 50  0000 L CNN
F 1 "0" V 2750 10400 50  0000 L CNN
F 2 "" V 2680 10400 50  0000 C CNN
F 3 "" H 2750 10400 50  0000 C CNN
	1    2750 10400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 10400 2600 10400
Wire Wire Line
	2900 10400 3000 10400
Text HLabel 2850 10500 0    60   Input ~ 0
SPI_CS_N
Text HLabel 2850 10600 0    60   Input ~ 0
SPI_SCK
Text HLabel 2850 10700 0    60   Input ~ 0
SPI_MOSI
Text HLabel 2850 10800 0    60   Output ~ 0
SPI_MISO
Wire Wire Line
	2850 10800 3000 10800
Wire Wire Line
	3000 10700 2850 10700
Wire Wire Line
	2850 10600 3000 10600
Wire Wire Line
	3000 10500 2850 10500
$Comp
L MCP1501_DFN U?
U 1 1 5A206F69
P 1450 10450
F 0 "U?" H 1800 11347 60  0000 C CNN
F 1 "MCP1501_DFN" H 1800 11241 60  0000 C CNN
F 2 "" H 1450 10450 60  0001 C CNN
F 3 "" H 1450 10450 60  0001 C CNN
	1    1450 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 9900 3000 9900
Wire Wire Line
	2350 9800 2450 9800
Wire Wire Line
	2450 9800 2450 9900
Connection ~ 2450 9900
Text Label 2550 9900 0    60   ~ 0
2V5_REF
Wire Wire Line
	1250 9800 1150 9800
Wire Wire Line
	1150 9800 1150 9900
Wire Wire Line
	1150 9900 1250 9900
Text Label 1050 10000 2    60   ~ 0
GND
Wire Wire Line
	1050 10000 1250 10000
Wire Wire Line
	1150 10000 1150 10400
Wire Wire Line
	1150 10100 1250 10100
Connection ~ 1150 10000
Wire Wire Line
	1150 10200 1250 10200
Connection ~ 1150 10100
Wire Wire Line
	1150 10300 1250 10300
Connection ~ 1150 10200
Wire Wire Line
	1150 10400 1250 10400
Connection ~ 1150 10300
Text Label 1150 9800 2    60   ~ 0
3V3
$Comp
L C C?
U 1 1 5A20EE5F
P 1250 850
F 0 "C?" H 1365 896 50  0000 L CNN
F 1 "4.7 uF" H 1365 805 50  0000 L CNN
F 2 "" H 1288 700 50  0000 C CNN
F 3 "" H 1250 850 50  0000 C CNN
	1    1250 850 
	1    0    0    -1  
$EndComp
Text Label 1100 700  2    60   ~ 0
5V0_P
$Comp
L C C?
U 1 1 5A20EF7C
P 1750 850
F 0 "C?" H 1865 896 50  0000 L CNN
F 1 "0.47 uF" H 1865 805 50  0000 L CNN
F 2 "" H 1788 700 50  0000 C CNN
F 3 "" H 1750 850 50  0000 C CNN
	1    1750 850 
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A20EFFE
P 2300 850
F 0 "C?" H 2415 896 50  0000 L CNN
F 1 "0.47 uF" H 2415 805 50  0000 L CNN
F 2 "" H 2338 700 50  0000 C CNN
F 3 "" H 2300 850 50  0000 C CNN
	1    2300 850 
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A20F050
P 1250 1250
F 0 "C?" H 1365 1296 50  0000 L CNN
F 1 "4.7 uF" H 1365 1205 50  0000 L CNN
F 2 "" H 1288 1100 50  0000 C CNN
F 3 "" H 1250 1250 50  0000 C CNN
	1    1250 1250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A20F09E
P 1750 1250
F 0 "C?" H 1865 1296 50  0000 L CNN
F 1 "0.47 uF" H 1865 1205 50  0000 L CNN
F 2 "" H 1788 1100 50  0000 C CNN
F 3 "" H 1750 1250 50  0000 C CNN
	1    1750 1250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A20F0FC
P 2300 1250
F 0 "C?" H 2415 1296 50  0000 L CNN
F 1 "0.47 uF" H 2415 1205 50  0000 L CNN
F 2 "" H 2338 1100 50  0000 C CNN
F 3 "" H 2300 1250 50  0000 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
Text Label 1100 1050 2    60   ~ 0
GND
Text Label 1100 1400 2    60   ~ 0
5V0_N
Wire Wire Line
	1100 1400 2300 1400
Connection ~ 1250 1400
Connection ~ 1750 1400
Wire Wire Line
	1250 1000 1250 1100
Wire Wire Line
	1100 1050 2300 1050
Connection ~ 1250 1050
Wire Wire Line
	2300 1000 2300 1100
Connection ~ 2300 1050
Wire Wire Line
	1750 1000 1750 1100
Connection ~ 1750 1050
Wire Wire Line
	1100 700  2300 700 
Connection ~ 1250 700 
Connection ~ 1750 700 
$Comp
L AXICOM_HF3_2COIL K?
U 1 1 5A2DEB78
P 6850 4650
F 0 "K?" H 7475 6447 60  0000 C CNN
F 1 "AXICOM_HF3_2COIL" H 7475 6341 60  0000 C CNN
F 2 "" H 6950 4600 60  0001 C CNN
F 3 "" H 6950 4600 60  0001 C CNN
	1    6850 4650
	-1   0    0    -1  
$EndComp
Text Label 9250 2300 2    60   ~ 0
VIN_P_COUPLED
Text Label 9250 2500 2    60   ~ 0
VIN_N_COUPLED
$Comp
L AXICOM_HF3_2COIL K?
U 1 1 5A2DFF07
P 6850 2550
F 0 "K?" H 7475 4347 60  0000 C CNN
F 1 "AXICOM_HF3_2COIL" H 7475 4241 60  0000 C CNN
F 2 "" H 6950 2500 60  0001 C CNN
F 3 "" H 6950 2500 60  0001 C CNN
	1    6850 2550
	-1   0    0    -1  
$EndComp
Text Label 7200 1000 0    60   ~ 0
VIN_P_COUPLED
Wire Wire Line
	7200 1000 7050 1000
Text Label 7200 3100 0    60   ~ 0
VIN_N_COUPLED
Wire Wire Line
	7200 3100 7050 3100
Text Label 7200 1700 0    60   ~ 0
GND
Wire Wire Line
	7050 1700 7200 1700
Wire Wire Line
	7150 1700 7150 2500
Wire Wire Line
	7150 1800 7050 1800
Connection ~ 7150 1700
Wire Wire Line
	7150 1900 7050 1900
Connection ~ 7150 1800
Wire Wire Line
	7150 2000 7050 2000
Connection ~ 7150 1900
Wire Wire Line
	7150 2100 7050 2100
Connection ~ 7150 2000
Wire Wire Line
	7150 2200 7050 2200
Connection ~ 7150 2100
Wire Wire Line
	7150 2300 7050 2300
Connection ~ 7150 2200
Wire Wire Line
	7150 2400 7050 2400
Connection ~ 7150 2300
Wire Wire Line
	7150 2500 7050 2500
Connection ~ 7150 2400
Text Label 7200 3800 0    60   ~ 0
GND
Wire Wire Line
	7050 3800 7200 3800
Wire Wire Line
	7150 3800 7150 4600
Wire Wire Line
	7150 3900 7050 3900
Connection ~ 7150 3800
Wire Wire Line
	7150 4000 7050 4000
Connection ~ 7150 3900
Wire Wire Line
	7150 4100 7050 4100
Connection ~ 7150 4000
Wire Wire Line
	7150 4200 7050 4200
Connection ~ 7150 4100
Wire Wire Line
	7150 4300 7050 4300
Connection ~ 7150 4200
Wire Wire Line
	7150 4400 7050 4400
Connection ~ 7150 4300
Wire Wire Line
	7150 4500 7050 4500
Connection ~ 7150 4400
Wire Wire Line
	7150 4600 7050 4600
Connection ~ 7150 4500
Text Label 5250 1000 2    60   ~ 0
VIN_P
Wire Wire Line
	5250 1000 5400 1000
Text Label 5250 3100 2    60   ~ 0
VIN_N
Wire Wire Line
	5250 3100 5400 3100
Text Label 5250 1100 2    60   ~ 0
VIN_P_AC
Wire Wire Line
	4500 1100 5400 1100
Text Label 5250 3200 2    60   ~ 0
VIN_N_AC
Wire Wire Line
	4500 3200 5400 3200
$Comp
L C C?
U 1 1 5A2E1A29
P 4500 950
F 0 "C?" H 4615 996 50  0000 L CNN
F 1 "0.1 uF" H 4615 905 50  0000 L CNN
F 2 "" H 4538 800 50  0000 C CNN
F 3 "" H 4500 950 50  0000 C CNN
	1    4500 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 800  5250 800 
Wire Wire Line
	5250 800  5250 1000
$Comp
L C C?
U 1 1 5A2E1C27
P 4500 3050
F 0 "C?" H 4615 3096 50  0000 L CNN
F 1 "0.1 uF" H 4615 3005 50  0000 L CNN
F 2 "" H 4538 2900 50  0000 C CNN
F 3 "" H 4500 3050 50  0000 C CNN
	1    4500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2900 5250 2900
Wire Wire Line
	5250 2900 5250 3100
Wire Wire Line
	7050 1200 7150 1200
Wire Wire Line
	7150 1200 7150 1300
Wire Wire Line
	7150 1300 7050 1300
Wire Wire Line
	7050 1400 7150 1400
Wire Wire Line
	7150 1400 7150 1500
Wire Wire Line
	7150 1500 7050 1500
Wire Wire Line
	7050 3300 7150 3300
Wire Wire Line
	7150 3300 7150 3400
Wire Wire Line
	7150 3400 7050 3400
Wire Wire Line
	7050 3500 7150 3500
Wire Wire Line
	7150 3500 7150 3600
Wire Wire Line
	7150 3600 7050 3600
Text Label 7150 1200 0    60   ~ 0
COIL1_P
Text Label 7150 3300 0    60   ~ 0
COIL2_P
Text Label 7150 1400 0    60   ~ 0
COIL1_N
Text Label 7150 3500 0    60   ~ 0
COIL2_N
Text Notes 6900 4900 0    60   ~ 0
TODO: Diodes on relay coils
Text HLabel 1300 5650 0    60   Input ~ 0
12V0_P
Text HLabel 1550 6450 0    60   Input ~ 0
RELAY1_DIR
Text HLabel 1550 6150 0    60   Input ~ 0
RELAY1_EN
Text HLabel 1550 8000 0    60   Input ~ 0
RELAY2_DIR
Text HLabel 1550 7700 0    60   Input ~ 0
RELAY2_EN
Wire Wire Line
	1550 6150 1650 6150
Wire Wire Line
	1650 6450 1550 6450
Text Label 1550 6350 2    60   ~ 0
3V3
$Comp
L DRV8800_WQFN U?
U 1 1 5A377542
P 1850 6500
F 0 "U?" H 2275 7597 60  0000 C CNN
F 1 "DRV8800_WQFN" H 2275 7491 60  0000 C CNN
F 2 "" H 1850 6500 60  0001 C CNN
F 3 "" H 1850 6500 60  0001 C CNN
	1    1850 6500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A377636
P 3600 5900
F 0 "C?" H 3715 5946 50  0000 L CNN
F 1 "0.1 uF 25V" H 3715 5855 50  0000 L CNN
F 2 "" H 3638 5750 50  0000 C CNN
F 3 "" H 3600 5900 50  0000 C CNN
	1    3600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5950 3450 5950
Wire Wire Line
	2900 6050 3600 6050
Wire Wire Line
	1650 5750 1550 5750
Wire Wire Line
	1550 5750 1550 5850
Wire Wire Line
	1550 5850 1650 5850
Text Label 1550 5750 2    60   ~ 0
GND
Wire Wire Line
	1300 5650 1650 5650
NoConn ~ 1650 5950
Wire Wire Line
	3450 5950 3450 5750
Wire Wire Line
	3450 5750 3600 5750
$Comp
L C C?
U 1 1 5A3782CC
P 3600 6300
F 0 "C?" H 3715 6346 50  0000 L CNN
F 1 "0.1 uF 25V" H 3715 6255 50  0000 L CNN
F 2 "" H 3638 6150 50  0000 C CNN
F 3 "" H 3600 6300 50  0000 C CNN
	1    3600 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6150 3600 6150
Text Label 3600 6550 0    60   ~ 0
12V0_P
Wire Wire Line
	3600 6450 3600 6550
Text Label 3000 5650 0    60   ~ 0
COIL1_P
Wire Wire Line
	3000 5650 2900 5650
Text Label 3000 5750 0    60   ~ 0
COIL1_N
Wire Wire Line
	3000 5750 2900 5750
Text Notes 3000 5500 0    60   ~ 0
TODO: snubber diode etc
NoConn ~ 2900 6350
Wire Wire Line
	1550 6350 1650 6350
Text HLabel 1550 6250 0    60   Input ~ 0
HBRIDGE_MODE
Wire Wire Line
	1550 6250 1650 6250
$Comp
L R R?
U 1 1 5A379710
P 3050 6600
F 0 "R?" H 3120 6646 50  0000 L CNN
F 1 "2" H 3120 6555 50  0000 L CNN
F 2 "" V 2980 6600 50  0000 C CNN
F 3 "" H 3050 6600 50  0000 C CNN
	1    3050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6450 2900 6450
Text Label 2900 6750 2    60   ~ 0
GND
Wire Wire Line
	2900 6750 3050 6750
Text Notes 2900 6850 0    60   ~ 0
2R = overcurrent @ 250 mA
Wire Wire Line
	1550 7700 1650 7700
Wire Wire Line
	1650 8000 1550 8000
Text Label 1550 7900 2    60   ~ 0
3V3
$Comp
L DRV8800_WQFN U?
U 1 1 5A37A03C
P 1850 8050
F 0 "U?" H 2275 9147 60  0000 C CNN
F 1 "DRV8800_WQFN" H 2275 9041 60  0000 C CNN
F 2 "" H 1850 8050 60  0001 C CNN
F 3 "" H 1850 8050 60  0001 C CNN
	1    1850 8050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A37A042
P 3600 7450
F 0 "C?" H 3715 7496 50  0000 L CNN
F 1 "0.1 uF 25V" H 3715 7405 50  0000 L CNN
F 2 "" H 3638 7300 50  0000 C CNN
F 3 "" H 3600 7450 50  0000 C CNN
	1    3600 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7500 3450 7500
Wire Wire Line
	2900 7600 3600 7600
Wire Wire Line
	1650 7300 1550 7300
Wire Wire Line
	1550 7300 1550 7400
Wire Wire Line
	1550 7400 1650 7400
Text Label 1550 7300 2    60   ~ 0
GND
Wire Wire Line
	1300 7200 1650 7200
NoConn ~ 1650 7500
Wire Wire Line
	3450 7500 3450 7300
Wire Wire Line
	3450 7300 3600 7300
$Comp
L C C?
U 1 1 5A37A052
P 3600 7850
F 0 "C?" H 3715 7896 50  0000 L CNN
F 1 "0.1 uF 25V" H 3715 7805 50  0000 L CNN
F 2 "" H 3638 7700 50  0000 C CNN
F 3 "" H 3600 7850 50  0000 C CNN
	1    3600 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7700 3600 7700
Text Label 3600 8100 0    60   ~ 0
12V0_P
Wire Wire Line
	3600 8000 3600 8100
Text Label 3000 7200 0    60   ~ 0
COIL1_P
Wire Wire Line
	3000 7200 2900 7200
Text Label 3000 7300 0    60   ~ 0
COIL1_N
Wire Wire Line
	3000 7300 2900 7300
Text Notes 3000 7050 0    60   ~ 0
TODO: snubber diode etc
NoConn ~ 2900 7900
Wire Wire Line
	1550 7900 1650 7900
Wire Wire Line
	1550 7800 1650 7800
$Comp
L R R?
U 1 1 5A37A064
P 3050 8150
F 0 "R?" H 3120 8196 50  0000 L CNN
F 1 "2" H 3120 8105 50  0000 L CNN
F 2 "" V 2980 8150 50  0000 C CNN
F 3 "" H 3050 8150 50  0000 C CNN
	1    3050 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 8000 2900 8000
Text Label 2900 8300 2    60   ~ 0
GND
Wire Wire Line
	2900 8300 3050 8300
Text Notes 2900 8400 0    60   ~ 0
2R = overcurrent @ 250 mA
Text Label 1300 7200 2    60   ~ 0
12V0_P
Text Label 1550 7800 2    60   ~ 0
HBRIDGE_MODE
$EndSCHEMATC
