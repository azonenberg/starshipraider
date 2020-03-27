EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-27"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5E73BA4F
P 1100 1550
AR Path="/5E73BA4F" Ref="J?"  Part="1" 
AR Path="/5E7383DD/5E73BA4F" Ref="J1"  Part="1" 
F 0 "J1" H 1053 1788 50  0000 C CNN
F 1 "SMA" H 1053 1697 50  0000 C CNN
F 2 "" H 1100 1550 50  0001 C CNN
F 3 "" H 1100 1550 50  0001 C CNN
	1    1100 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1100 1750 1100 1850
Text Notes 1100 1950 0    50   ~ 0
± 5V range
Text Label 1250 1550 0    50   ~ 0
VIN
Text Label 4400 1550 0    50   ~ 0
VIN_DIV2
Text Notes 1900 950  0    79   ~ 0
Input protection\nand attenuator
Text Notes 7400 950  0    79   ~ 0
6th order 100 MHz Bessel-Thomson\nantialiasing filter
$Comp
L device:R R?
U 1 1 5E73BA63
P 3650 1700
AR Path="/5E73BA63" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA63" Ref="R1"  Part="1" 
F 0 "R1" H 3720 1746 50  0000 L CNN
F 1 "CRCW1206150RFKEAHP" H 3450 1450 50  0000 L CNN
F 2 "" V 3580 1700 50  0001 C CNN
F 3 "" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E73BA69
P 4300 1700
AR Path="/5E73BA69" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA69" Ref="R3"  Part="1" 
F 0 "R3" H 4370 1746 50  0000 L CNN
F 1 "CRCW1206150RFKEAHP" H 3450 1350 50  0000 L CNN
F 2 "" V 4230 1700 50  0001 C CNN
F 3 "" H 4300 1700 50  0001 C CNN
	1    4300 1700
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E73BA6F
P 4050 1550
AR Path="/5E73BA6F" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA6F" Ref="R2"  Part="1" 
F 0 "R2" V 3843 1550 50  0000 C CNN
F 1 "CRCW120637R4FKEAHP" V 3934 1550 50  0000 C CNN
F 2 "" V 3980 1550 50  0001 C CNN
F 3 "" H 4050 1550 50  0001 C CNN
	1    4050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 1550 3650 1550
Wire Wire Line
	3650 1850 4300 1850
Wire Wire Line
	4200 1550 4300 1550
Connection ~ 4300 1550
Text Label 6750 1850 2    50   ~ 0
GND
Text HLabel 1100 1850 0    50   Input ~ 0
GND
Text HLabel 9200 1550 2    50   Output ~ 0
VIN_FILTERED
Text Notes 5600 1500 0    50   ~ 0
± 2.5V range\nNet gain = 0.5 (-6 dB)
Text HLabel 5000 1650 0    50   Input ~ 0
5V0_P
Text HLabel 5600 1650 2    50   Input ~ 0
5V0_N
$Comp
L special-azonenberg:RELAY_COTO_9202_COAX K1
U 1 1 5E76754D
P 2150 1700
F 0 "K1" H 2525 2375 50  0000 C CNN
F 1 "9202-12-00" H 2525 2284 50  0000 C CNN
F 2 "" H 2150 1700 50  0001 C CNN
F 3 "" H 2150 1700 50  0001 C CNN
	1    2150 1700
	1    0    0    -1  
$EndComp
Text Label 3550 1850 2    50   ~ 0
GND
Wire Wire Line
	3550 1850 3650 1850
Connection ~ 3650 1850
Wire Wire Line
	1250 1550 1950 1550
Text Label 3150 1550 0    50   ~ 0
VIN_SWITCHED
Wire Wire Line
	3100 1550 3650 1550
Connection ~ 3650 1550
Text Label 3100 1650 0    50   ~ 0
GND
Text Label 1950 1650 2    50   ~ 0
GND
Text Notes 3450 2650 0    50   ~ 0
50V input overload gives ~~1A\nESD diode can handle 1A for 1 ms\nR2 can handle 30W for 1ms, 100W for 100µs\nRelay turn-off time is 100 µs\nGoal: <50 µs response from overload to relay\nstarting to shut off
$Comp
L special-azonenberg:SSM6N58NU_DUAL_NMOS Q1
U 1 1 5E76AA9F
P 2200 6850
F 0 "Q1" H 2344 6903 60  0000 L CNN
F 1 "SSM6N58NU" H 2344 6797 60  0000 L CNN
F 2 "" H 2200 6850 60  0000 C CNN
F 3 "transistors/mos/*.*" H 2344 6744 60  0001 L CNN
	1    2200 6850
	1    0    0    -1  
$EndComp
Text HLabel 1950 1250 0    50   Input ~ 0
12V0
Text Label 1950 1350 2    50   ~ 0
COIL_N
Text Label 2300 6650 2    50   ~ 0
COIL_N
Text Label 2300 7150 2    50   ~ 0
GND
Wire Wire Line
	2300 7150 2300 7050
Text HLabel 1100 4500 0    50   Input ~ 0
INPUT_RST
$Comp
L device:D_Zener D1
U 1 1 5E76F92B
P 2550 6200
F 0 "D1" V 2596 6121 50  0000 R CNN
F 1 "PDZ10BGWX" V 2505 6121 50  0000 R CNN
F 2 "" H 2550 6200 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Zener_diode" H 2550 6200 50  0001 C CNN
	1    2550 6200
	0    -1   -1   0   
$EndComp
$Comp
L device:D D2
U 1 1 5E770769
P 2550 6500
F 0 "D2" V 2504 6579 50  0000 L CNN
F 1 "BAS21GWJ" V 2595 6579 50  0000 L CNN
F 2 "" H 2550 6500 50  0001 C CNN
F 3 "" H 2550 6500 50  0001 C CNN
	1    2550 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 6650 2550 6650
Text Label 2550 6050 2    50   ~ 0
12V0
$Comp
L analog-azonenberg:LM393-DSBGA8 U3
U 1 1 5E774FB3
P 4450 7000
F 0 "U3" H 4875 8197 60  0000 C CNN
F 1 "LM393-DSBGA8" H 4875 8091 60  0000 C CNN
F 2 "" H 4450 7050 60  0000 C CNN
F 3 "" H 4450 7050 60  0000 C CNN
	1    4450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6350 5500 6750
Text Label 1250 2350 2    50   ~ 0
VIN
$Comp
L device:R R10
U 1 1 5E7797EC
P 1250 2900
F 0 "R10" H 1320 2946 50  0000 L CNN
F 1 "1K 1%" H 1320 2855 50  0000 L CNN
F 2 "" V 1180 2900 50  0001 C CNN
F 3 "" H 1250 2900 50  0001 C CNN
	1    1250 2900
	1    0    0    -1  
$EndComp
Text Label 1250 3050 2    50   ~ 0
GND
Wire Wire Line
	1250 2650 1250 2700
Text Label 1500 2700 0    50   ~ 0
VIN_DIV10
Wire Wire Line
	1500 2700 1250 2700
Connection ~ 1250 2700
Wire Wire Line
	1250 2700 1250 2750
Text Label 4250 6450 2    50   ~ 0
VIN_DIV10
Text Label 4250 6750 2    50   ~ 0
VIN_DIV10
Text Label 4250 6050 2    50   ~ 0
5V0_P
Text Label 4250 6150 2    50   ~ 0
5V0_N
$Comp
L device:R R9
U 1 1 5E77906B
P 1250 2500
F 0 "R9" H 1320 2546 50  0000 L CNN
F 1 "9.1K 1%" H 1320 2455 50  0000 L CNN
F 2 "" V 1180 2500 50  0001 C CNN
F 3 "" H 1250 2500 50  0001 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
Text Notes 4450 5650 0    79   ~ 0
Overvoltage shutdown
Text Notes 1600 5650 0    79   ~ 0
Relay driver
$Comp
L device:C C?
U 1 1 5E78B1A4
P 6200 6200
AR Path="/5E78B1A4" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E78B1A4" Ref="C9"  Part="1" 
F 0 "C9" H 6315 6246 50  0000 L CNN
F 1 "0.1 uF" H 6315 6155 50  0000 L CNN
F 2 "" H 6238 6050 50  0001 C CNN
F 3 "" H 6200 6200 50  0001 C CNN
	1    6200 6200
	1    0    0    -1  
$EndComp
Text Label 6200 6050 2    50   ~ 0
5V0_P
Text Label 6200 6350 2    50   ~ 0
5V0_N
$Comp
L device:C C?
U 1 1 5E72790C
P 6750 6200
AR Path="/5E72790C" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E72790C" Ref="C10"  Part="1" 
F 0 "C10" H 6865 6246 50  0000 L CNN
F 1 "4.7 uF" H 6865 6155 50  0000 L CNN
F 2 "" H 6788 6050 50  0001 C CNN
F 3 "" H 6750 6200 50  0001 C CNN
	1    6750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6050 6200 6050
Wire Wire Line
	6200 6350 6750 6350
Text HLabel 4250 6350 0    50   Input ~ 0
0V5_REF
Text HLabel 4250 6850 0    50   Input ~ 0
N0V5_REF
$Comp
L special-azonenberg:NUP1301U D3
U 1 1 5E748BDB
P 5300 1650
F 0 "D3" H 5300 1517 50  0000 C CNN
F 1 "NUP1301U" H 5300 1426 50  0000 C CNN
F 2 "" H 5450 1650 50  0001 C CNN
F 3 "" H 5450 1650 50  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1550 5300 1550
$Comp
L device:C C1
U 1 1 5E772E89
P 7100 1700
F 0 "C1" H 7215 1746 50  0000 L CNN
F 1 "13 pF" H 7215 1655 50  0000 L CNN
F 2 "" H 7138 1550 50  0001 C CNN
F 3 "" H 7100 1700 50  0001 C CNN
	1    7100 1700
	1    0    0    -1  
$EndComp
$Comp
L device:L L1
U 1 1 5E7736DA
P 6900 1550
F 0 "L1" V 6719 1550 50  0000 C CNN
F 1 "11 nH" V 6810 1550 50  0000 C CNN
F 2 "" H 6900 1550 50  0001 C CNN
F 3 "" H 6900 1550 50  0001 C CNN
	1    6900 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 1850 7100 1850
Wire Wire Line
	7100 1550 7050 1550
Wire Wire Line
	6750 1550 5300 1550
Connection ~ 5300 1550
$Comp
L device:L L2
U 1 1 5E776523
P 7550 1550
F 0 "L2" V 7369 1550 50  0000 C CNN
F 1 "51 nH" V 7460 1550 50  0000 C CNN
F 2 "" H 7550 1550 50  0001 C CNN
F 3 "" H 7550 1550 50  0001 C CNN
	1    7550 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1550 7100 1550
Connection ~ 7100 1550
$Comp
L device:C C2
U 1 1 5E776FA3
P 7800 1700
F 0 "C2" H 7915 1746 50  0000 L CNN
F 1 "27 pF" H 7915 1655 50  0000 L CNN
F 2 "" H 7838 1550 50  0001 C CNN
F 3 "" H 7800 1700 50  0001 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1850 7100 1850
Connection ~ 7100 1850
Wire Wire Line
	7700 1550 7800 1550
$Comp
L device:L L3
U 1 1 5E777F78
P 8350 1550
F 0 "L3" V 8169 1550 50  0000 C CNN
F 1 "91 nH" V 8260 1550 50  0000 C CNN
F 2 "" H 8350 1550 50  0001 C CNN
F 3 "" H 8350 1550 50  0001 C CNN
	1    8350 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 1550 7800 1550
Connection ~ 7800 1550
$Comp
L device:C C16
U 1 1 5E7789DB
P 8700 1700
F 0 "C16" H 8815 1746 50  0000 L CNN
F 1 "75 pF" H 8815 1655 50  0000 L CNN
F 2 "" H 8738 1550 50  0001 C CNN
F 3 "" H 8700 1700 50  0001 C CNN
	1    8700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1550 8500 1550
Wire Wire Line
	7800 1850 8700 1850
Connection ~ 7800 1850
Wire Wire Line
	8700 1550 9200 1550
Connection ~ 8700 1550
$Comp
L special-azonenberg:74LVC1G74-XSON8 U7
U 1 1 5E7FABB6
P 2150 4350
F 0 "U7" H 2400 5325 50  0000 C CNN
F 1 "74LVC1G74-XSON8" H 2400 5234 50  0000 C CNN
F 2 "" H 2150 4350 50  0001 C CNN
F 3 "" H 2150 4350 50  0001 C CNN
	1    2150 4350
	1    0    0    -1  
$EndComp
Text HLabel 2750 3900 2    50   Output ~ 0
RELAY_EN
Text Label 1600 6850 2    50   ~ 0
RELAY_EN
Text Label 2050 3900 2    50   ~ 0
GND
Text Label 2050 4000 2    50   ~ 0
GND
Text Label 2050 3700 2    50   ~ 0
GND
Text Label 2050 3600 2    50   ~ 0
5V0_P
NoConn ~ 2750 4000
Text Notes 2150 4700 0    50   ~ 0
When VIN_OK goes low, relay turns off\nPulling INPUT_RST_N low turns it back on\nNeed Q1B because Vih of 74LVC1G74 @ Vcc=5V is\n0.7*Vcc which is 3.5V and INPUT_RST is a 3.3V signal
$Comp
L device:R R36
U 1 1 5E7FD459
P 4700 4000
F 0 "R36" V 4800 3900 50  0000 L CNN
F 1 "10K" V 4700 3900 50  0000 L CNN
F 2 "" V 4630 4000 50  0001 C CNN
F 3 "" H 4700 4000 50  0001 C CNN
	1    4700 4000
	0    1    -1   0   
$EndComp
Text Label 4550 4000 2    50   ~ 0
INPUT_RST_N
Text Label 4850 4000 0    50   ~ 0
5V0_P
$Comp
L device:R R37
U 1 1 5E7FF1E4
P 4700 4250
F 0 "R37" V 4800 4150 50  0000 L CNN
F 1 "1K" V 4700 4150 50  0000 L CNN
F 2 "" V 4630 4250 50  0001 C CNN
F 3 "" H 4700 4250 50  0001 C CNN
	1    4700 4250
	0    1    -1   0   
$EndComp
Text Label 4850 4250 0    50   ~ 0
5V0_P
Text HLabel 5800 6750 2    50   Output ~ 0
OVERVOLTAGE_N
Text Label 4550 4250 2    50   ~ 0
OVERVOLTAGE_N
$Comp
L device:C C?
U 1 1 5E800BFE
P 3400 3500
AR Path="/5E800BFE" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E800BFE" Ref="C27"  Part="1" 
F 0 "C27" H 3515 3546 50  0000 L CNN
F 1 "4.7 uF" H 3515 3455 50  0000 L CNN
F 2 "" H 3438 3350 50  0001 C CNN
F 3 "" H 3400 3500 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5E8010DA
P 3900 3500
AR Path="/5E8010DA" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E8010DA" Ref="C28"  Part="1" 
F 0 "C28" H 4015 3546 50  0000 L CNN
F 1 "0.47 uF" H 4015 3455 50  0000 L CNN
F 2 "" H 3938 3350 50  0001 C CNN
F 3 "" H 3900 3500 50  0001 C CNN
	1    3900 3500
	1    0    0    -1  
$EndComp
Text Label 3400 3350 2    50   ~ 0
5V0_P
Wire Wire Line
	3400 3350 3900 3350
Text Label 3400 3650 2    50   ~ 0
GND
Wire Wire Line
	3400 3650 3900 3650
$Comp
L special-azonenberg:SSM6N58NU_DUAL_NMOS Q1
U 2 1 5E804A17
P 1300 4500
F 0 "Q1" H 1444 4553 60  0000 L CNN
F 1 "SSM6N58NU" H 1444 4447 60  0000 L CNN
F 2 "" H 1300 4500 60  0000 C CNN
F 3 "transistors/mos/*.*" H 1444 4394 60  0001 L CNN
	2    1300 4500
	1    0    0    -1  
$EndComp
Text Label 2050 4300 2    50   ~ 0
INPUT_RST_N
Wire Wire Line
	2050 4300 1400 4300
$Comp
L device:R R34
U 1 1 5E80BE07
P 4700 3750
F 0 "R34" V 4800 3650 50  0000 L CNN
F 1 "10K" V 4700 3650 50  0000 L CNN
F 2 "" V 4630 3750 50  0001 C CNN
F 3 "" H 4700 3750 50  0001 C CNN
	1    4700 3750
	0    1    -1   0   
$EndComp
Text Label 4550 3750 2    50   ~ 0
INPUT_RST
Text Label 4850 3750 0    50   ~ 0
GND
Text Label 1400 4700 0    50   ~ 0
GND
Wire Wire Line
	1600 6850 2000 6850
Text Notes 4450 7350 0    50   ~ 0
LM393 output is pulled to 5V0_N in fault state\nR53 + R37 form voltage divider\nMidpoint floats to 5V0_P in normal state\nand is pulled to ground in fault state
Text Label 2050 4200 2    50   ~ 0
OVERVOLTAGE_N
$Comp
L device:R R53
U 1 1 5E9EA740
P 5650 6750
F 0 "R53" V 5750 6650 50  0000 L CNN
F 1 "1K" V 5650 6650 50  0000 L CNN
F 2 "" V 5580 6750 50  0001 C CNN
F 3 "" H 5650 6750 50  0001 C CNN
	1    5650 6750
	0    1    -1   0   
$EndComp
Connection ~ 5500 6750
$EndSCHEMATC
