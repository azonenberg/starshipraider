EESchema Schematic File Version 4
LIBS:iob-characterization-v02-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "STARSHIPRAIDER I/O Characterization"
Date "2018-08-22"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L iob-characterization-v02-rescue:LMH7322 U?
U 1 1 5B7F6368
P 5500 2000
AR Path="/5B7F6368" Ref="U?"  Part="1" 
AR Path="/5B7E4C7E/5B7F6368" Ref="U2"  Part="1" 
F 0 "U2" H 5425 3147 60  0000 C CNN
F 1 "LMH7322" H 5425 3041 60  0000 C CNN
F 2 "azonenberg_pcb:QFN_24_0.5MM_4x4MM" H 5000 1950 60  0001 C CNN
F 3 "" H 5000 1950 60  0000 C CNN
	1    5500 2000
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:LMH7322 U?
U 2 1 5B7F636F
P 5500 3550
AR Path="/5B7F636F" Ref="U?"  Part="2" 
AR Path="/5B7E4C7E/5B7F636F" Ref="U2"  Part="2" 
F 0 "U2" H 5425 4697 60  0000 C CNN
F 1 "LMH7322" H 5425 4591 60  0000 C CNN
F 2 "azonenberg_pcb:QFN_24_0.5MM_4x4MM" H 5000 3500 60  0001 C CNN
F 3 "" H 5000 3500 60  0000 C CNN
	2    5500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1100 6150 1100
Text Notes 5000 3700 0    60   ~ 0
Input comparators
Wire Wire Line
	6150 1100 6150 1200
Wire Wire Line
	6150 1200 6050 1200
Connection ~ 6150 1100
Wire Wire Line
	6050 2650 6150 2650
Wire Wire Line
	6150 2650 6150 2750
Wire Wire Line
	6150 2750 6050 2750
Connection ~ 6150 2650
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F6385
P 6400 1900
AR Path="/5B7F6385" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F6385" Ref="R5"  Part="1" 
F 0 "R5" V 6450 2050 50  0000 C CNN
F 1 "10K" V 6400 1900 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" V 6330 1900 50  0001 C CNN
F 3 "" H 6400 1900 50  0000 C CNN
	1    6400 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 1900 6050 1900
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F638D
P 6400 2000
AR Path="/5B7F638D" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F638D" Ref="R6"  Part="1" 
F 0 "R6" V 6450 2150 50  0000 C CNN
F 1 "10K" V 6400 2000 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" V 6330 2000 50  0001 C CNN
F 3 "" H 6400 2000 50  0000 C CNN
	1    6400 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 2000 6050 2000
Text Label 6550 2000 0    60   ~ 0
2V5
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F6397
P 6400 3450
AR Path="/5B7F6397" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F6397" Ref="R7"  Part="1" 
F 0 "R7" V 6450 3600 50  0000 C CNN
F 1 "10K" V 6400 3450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" V 6330 3450 50  0001 C CNN
F 3 "" H 6400 3450 50  0000 C CNN
	1    6400 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3450 6050 3450
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F639F
P 6400 3550
AR Path="/5B7F639F" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F639F" Ref="R8"  Part="1" 
F 0 "R8" V 6450 3700 50  0000 C CNN
F 1 "10K" V 6400 3550 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" V 6330 3550 50  0001 C CNN
F 3 "" H 6400 3550 50  0000 C CNN
	1    6400 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3550 6050 3550
Text Label 6550 3550 0    60   ~ 0
2V5
Wire Wire Line
	4600 1700 4800 1700
Text Label 4600 3250 2    60   ~ 0
VREF
Wire Wire Line
	4600 3250 4800 3250
Wire Wire Line
	4600 3150 4800 3150
Wire Wire Line
	4600 1600 4800 1600
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63B1
P 4550 1900
AR Path="/5B7F63B1" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63B1" Ref="R3"  Part="1" 
F 0 "R3" V 4500 1700 50  0000 C CNN
F 1 "20K" V 4550 1900 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" V 4480 1900 50  0001 C CNN
F 3 "" H 4550 1900 50  0000 C CNN
	1    4550 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1900 4800 1900
Wire Wire Line
	4400 1900 4250 1900
Wire Wire Line
	4250 1900 4250 2000
Wire Wire Line
	4250 2000 4800 2000
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63BC
P 4550 3450
AR Path="/5B7F63BC" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63BC" Ref="R4"  Part="1" 
F 0 "R4" V 4500 3250 50  0000 C CNN
F 1 "20K" V 4550 3450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" V 4480 3450 50  0001 C CNN
F 3 "" H 4550 3450 50  0000 C CNN
	1    4550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3450 4800 3450
Wire Wire Line
	4400 3450 4250 3450
Wire Wire Line
	4250 3450 4250 3550
Wire Wire Line
	4250 3550 4800 3550
Wire Wire Line
	4800 1200 4700 1200
Wire Wire Line
	4700 1200 4700 1300
Wire Wire Line
	4700 1300 4800 1300
Wire Wire Line
	4600 1100 4800 1100
Text Label 4600 2650 2    60   ~ 0
12V0
Wire Wire Line
	4600 2650 4800 2650
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63CE
P 7200 1450
AR Path="/5B7F63CE" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63CE" Ref="R9"  Part="1" 
F 0 "R9" H 7270 1496 50  0000 L CNN
F 1 "62" V 7200 1400 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7130 1450 50  0001 C CNN
F 3 "" H 7200 1450 50  0000 C CNN
	1    7200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1600 6850 1600
Connection ~ 7200 1600
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63D7
P 7200 1850
AR Path="/5B7F63D7" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63D7" Ref="R10"  Part="1" 
F 0 "R10" H 7270 1896 50  0000 L CNN
F 1 "62" V 7200 1800 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7130 1850 50  0001 C CNN
F 3 "" H 7200 1850 50  0000 C CNN
	1    7200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1700 6850 1700
Connection ~ 7200 1700
Text Notes 7000 3950 0    60   ~ 0
Safe input range:\n* [TBD] Vss - 200 mV\n* 12.2V
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63E2
P 7200 3000
AR Path="/5B7F63E2" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63E2" Ref="R11"  Part="1" 
F 0 "R11" H 7270 3046 50  0000 L CNN
F 1 "62" V 7200 2900 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7130 3000 50  0001 C CNN
F 3 "" H 7200 3000 50  0000 C CNN
	1    7200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3150 6850 3150
Connection ~ 7200 3150
Wire Wire Line
	6150 1100 6300 1100
Wire Wire Line
	6150 2650 6300 2650
Wire Wire Line
	7200 1600 7350 1600
Wire Wire Line
	7200 1700 7350 1700
Wire Wire Line
	7200 3150 7350 3150
Text HLabel 4600 3150 0    60   Input ~ 0
RXD0
Text HLabel 4600 1200 0    60   Input ~ 0
GND
Wire Wire Line
	4600 1200 4700 1200
Connection ~ 4700 1200
Text HLabel 4600 1100 0    60   Input ~ 0
12V0
Text HLabel 4600 1700 0    60   Input ~ 0
VREF
Text Label 4600 2750 2    60   ~ 0
GND
Wire Wire Line
	4600 2750 4800 2750
Text HLabel 4600 1600 0    60   Input ~ 0
RXD1
Text HLabel 7350 3150 2    60   Output ~ 0
RXD0_P
Text HLabel 7350 3250 2    60   Output ~ 0
RXD0_N
Text HLabel 7350 1600 2    60   Output ~ 0
RXD1_P
Text HLabel 7350 1700 2    60   Output ~ 0
RXD1_N
Text Label 6300 2650 0    60   ~ 0
2V5
Text HLabel 6300 1100 2    60   Input ~ 0
2V5
Text Label 6550 1900 0    60   ~ 0
GND
Text Label 6550 3450 0    60   ~ 0
GND
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5BA3F095
P 6850 3000
AR Path="/5BA3F095" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5BA3F095" Ref="R25"  Part="1" 
F 0 "R25" H 6920 3046 50  0000 L CNN
F 1 "240" V 6850 2900 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6780 3000 50  0001 C CNN
F 3 "" H 6850 3000 50  0000 C CNN
	1    6850 3000
	1    0    0    -1  
$EndComp
Connection ~ 6850 3150
Wire Wire Line
	6850 3150 7200 3150
Text Label 6850 2850 2    60   ~ 0
2V5
Wire Wire Line
	6050 3250 6850 3250
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5BA3F2B6
P 7200 3400
AR Path="/5BA3F2B6" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5BA3F2B6" Ref="R27"  Part="1" 
F 0 "R27" H 7270 3446 50  0000 L CNN
F 1 "62" V 7200 3300 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7130 3400 50  0001 C CNN
F 3 "" H 7200 3400 50  0000 C CNN
	1    7200 3400
	1    0    0    -1  
$EndComp
Connection ~ 7200 3250
Wire Wire Line
	7200 3250 7350 3250
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5BA3F2F0
P 6850 3400
AR Path="/5BA3F2F0" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5BA3F2F0" Ref="R26"  Part="1" 
F 0 "R26" H 6920 3446 50  0000 L CNN
F 1 "240" V 6850 3300 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6780 3400 50  0001 C CNN
F 3 "" H 6850 3400 50  0000 C CNN
	1    6850 3400
	1    0    0    -1  
$EndComp
Connection ~ 6850 3250
Wire Wire Line
	6850 3250 7200 3250
Text Label 7300 3550 0    60   ~ 0
GND
Wire Wire Line
	7300 3550 7200 3550
Text Label 7300 2850 0    60   ~ 0
GND
Wire Wire Line
	7300 2850 7200 2850
Wire Wire Line
	6550 3550 6850 3550
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5BA4264B
P 6850 1850
AR Path="/5BA4264B" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5BA4264B" Ref="R24"  Part="1" 
F 0 "R24" H 6920 1896 50  0000 L CNN
F 1 "240" V 6850 1750 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6780 1850 50  0001 C CNN
F 3 "" H 6850 1850 50  0000 C CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
Connection ~ 6850 1700
Wire Wire Line
	6850 1700 7200 1700
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5BA426D1
P 6850 1450
AR Path="/5BA426D1" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5BA426D1" Ref="R12"  Part="1" 
F 0 "R12" H 6920 1496 50  0000 L CNN
F 1 "240" V 6850 1350 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6780 1450 50  0001 C CNN
F 3 "" H 6850 1450 50  0000 C CNN
	1    6850 1450
	1    0    0    -1  
$EndComp
Connection ~ 6850 1600
Wire Wire Line
	6850 1600 7200 1600
Text Label 7200 1300 0    60   ~ 0
GND
Text Label 7300 2000 0    60   ~ 0
GND
Wire Wire Line
	7300 2000 7200 2000
Text Label 6850 1300 2    60   ~ 0
2V5
Wire Wire Line
	6550 2000 6850 2000
$Comp
L device:C C25
U 1 1 5BA69631
P 8850 1900
F 0 "C25" H 8965 1946 50  0000 L CNN
F 1 "0.47 uF" H 8965 1855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8888 1750 50  0001 C CNN
F 3 "" H 8850 1900 50  0001 C CNN
	1    8850 1900
	1    0    0    -1  
$EndComp
Text Label 8750 1750 2    60   ~ 0
12V0
Text Label 8750 2050 2    60   ~ 0
GND
Wire Wire Line
	8750 2050 8850 2050
Wire Wire Line
	8750 1750 8850 1750
$Comp
L device:C C27
U 1 1 5BA6B6E5
P 9400 1900
F 0 "C27" H 9515 1946 50  0000 L CNN
F 1 "0.47 uF" H 9515 1855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 9438 1750 50  0001 C CNN
F 3 "" H 9400 1900 50  0001 C CNN
	1    9400 1900
	1    0    0    -1  
$EndComp
$Comp
L device:C C26
U 1 1 5BA6B737
P 8850 2450
F 0 "C26" H 8965 2496 50  0000 L CNN
F 1 "0.47 uF" H 8965 2405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8888 2300 50  0001 C CNN
F 3 "" H 8850 2450 50  0001 C CNN
	1    8850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2050 9400 2050
Connection ~ 8850 2050
Wire Wire Line
	9400 1750 8850 1750
Connection ~ 8850 1750
Text Label 8750 2300 2    60   ~ 0
2V5
Wire Wire Line
	8750 2300 8850 2300
$Comp
L device:C C28
U 1 1 5BA6E984
P 9400 2450
F 0 "C28" H 9515 2496 50  0000 L CNN
F 1 "0.47 uF" H 9515 2405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 9438 2300 50  0001 C CNN
F 3 "" H 9400 2450 50  0001 C CNN
	1    9400 2450
	1    0    0    -1  
$EndComp
$Comp
L device:C C29
U 1 1 5BA6E9D4
P 9950 2450
F 0 "C29" H 10065 2496 50  0000 L CNN
F 1 "0.47 uF" H 10065 2405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 9988 2300 50  0001 C CNN
F 3 "" H 9950 2450 50  0001 C CNN
	1    9950 2450
	1    0    0    -1  
$EndComp
$Comp
L device:C C30
U 1 1 5BA6EA24
P 10500 2450
F 0 "C30" H 10615 2496 50  0000 L CNN
F 1 "0.47 uF" H 10615 2405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 10538 2300 50  0001 C CNN
F 3 "" H 10500 2450 50  0001 C CNN
	1    10500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2600 9950 2600
Connection ~ 9400 2600
Wire Wire Line
	9400 2600 8850 2600
Connection ~ 9950 2600
Wire Wire Line
	9950 2600 9400 2600
Wire Wire Line
	10500 2300 9950 2300
Connection ~ 8850 2300
Connection ~ 9400 2300
Wire Wire Line
	9400 2300 8850 2300
Connection ~ 9950 2300
Wire Wire Line
	9950 2300 9400 2300
Text Label 8750 2600 2    60   ~ 0
GND
Wire Wire Line
	8750 2600 8850 2600
Connection ~ 8850 2600
$Comp
L special-azonenberg:SSM6N58NU_DUAL_NMOS Q1
U 1 1 5BA72D0A
P 1500 5550
F 0 "Q1" H 1641 5656 60  0000 L CNN
F 1 "SSM6N58NU_DUAL_NMOS" H 1641 5550 60  0000 L CNN
F 2 "azonenberg_pcb:DFN_6_0.65MM_2x2MM_GDS" H 1500 5550 60  0001 C CNN
F 3 "transistors/mos/*.*" H 1641 5444 60  0000 L CNN
	1    1500 5550
	1    0    0    -1  
$EndComp
Text Label 2850 5050 0    60   ~ 0
RXD1
Wire Wire Line
	1600 5200 1600 5350
Text Label 1600 5900 2    60   ~ 0
GND
Wire Wire Line
	1600 5900 1600 5750
$Comp
L device:R R28
U 1 1 5BA75B8D
P 1600 5050
F 0 "R28" H 1670 5096 50  0000 L CNN
F 1 "50" H 1670 5005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 1530 5050 50  0001 C CNN
F 3 "" H 1600 5050 50  0001 C CNN
	1    1600 5050
	1    0    0    -1  
$EndComp
Text HLabel 1300 5550 0    60   Input ~ 0
CH1_TERM_EN
$Comp
L special-azonenberg:SSM6N58NU_DUAL_NMOS Q1
U 2 1 5BA75E80
P 1500 6900
F 0 "Q1" H 1641 7006 60  0000 L CNN
F 1 "SSM6N58NU_DUAL_NMOS" H 1641 6900 60  0000 L CNN
F 2 "azonenberg_pcb:DFN_6_0.65MM_2x2MM_GDS" H 1500 6900 60  0001 C CNN
F 3 "transistors/mos/*.*" H 1641 6794 60  0000 L CNN
	2    1500 6900
	1    0    0    -1  
$EndComp
Text Label 2950 6400 0    60   ~ 0
RXD0
Wire Wire Line
	1600 6550 1600 6700
Text Label 1600 7250 2    60   ~ 0
GND
Wire Wire Line
	1600 7250 1600 7100
$Comp
L device:R R29
U 1 1 5BA75E8A
P 1600 6400
F 0 "R29" H 1670 6446 50  0000 L CNN
F 1 "50" H 1670 6355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0201_RES_NOSILK" V 1530 6400 50  0001 C CNN
F 3 "" H 1600 6400 50  0001 C CNN
	1    1600 6400
	1    0    0    -1  
$EndComp
Text HLabel 1300 6900 0    60   Input ~ 0
CH0_TERM_EN
$Comp
L special-azonenberg:DG3257DN-T1-GE4 U?
U 1 1 5BA93E8A
P 2150 5100
AR Path="/5B7C6983/5BA93E8A" Ref="U?"  Part="1" 
AR Path="/5B7E4C7E/5BA93E8A" Ref="U21"  Part="1" 
F 0 "U21" H 2450 5825 50  0000 C CNN
F 1 "DG3257DN-T1-GE4" H 2450 5734 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_6_0.35MM_1x1MM" H 2150 5100 50  0001 C CNN
F 3 "" H 2150 5100 50  0001 C CNN
	1    2150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4900 2050 4900
NoConn ~ 2050 5050
Text Label 2050 4700 2    60   ~ 0
GND
Text HLabel 2850 4600 2    60   Input ~ 0
CH1_OE
$Comp
L special-azonenberg:DG3257DN-T1-GE4 U?
U 1 1 5BA98F50
P 2250 6450
AR Path="/5B7C6983/5BA98F50" Ref="U?"  Part="1" 
AR Path="/5B7E4C7E/5BA98F50" Ref="U22"  Part="1" 
F 0 "U22" H 2550 7175 50  0000 C CNN
F 1 "DG3257DN-T1-GE4" H 2550 7084 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_6_0.35MM_1x1MM" H 2250 6450 50  0001 C CNN
F 3 "" H 2250 6450 50  0001 C CNN
	1    2250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6250 2150 6250
NoConn ~ 2150 6400
Text Label 2150 5950 2    60   ~ 0
5V0
Text Label 2150 6050 2    60   ~ 0
GND
Text HLabel 2950 5950 2    60   Input ~ 0
CH0_OE
Text HLabel 2050 4600 0    60   Input ~ 0
5V0
$Comp
L device:C C38
U 1 1 5B765805
P 3600 4750
F 0 "C38" H 3715 4796 50  0000 L CNN
F 1 "0.47 uF" H 3715 4705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 3638 4600 50  0001 C CNN
F 3 "" H 3600 4750 50  0001 C CNN
	1    3600 4750
	1    0    0    -1  
$EndComp
$Comp
L device:C C39
U 1 1 5B765929
P 4150 4750
F 0 "C39" H 4265 4796 50  0000 L CNN
F 1 "0.47 uF" H 4265 4705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4188 4600 50  0001 C CNN
F 3 "" H 4150 4750 50  0001 C CNN
	1    4150 4750
	1    0    0    -1  
$EndComp
Text Label 3600 4600 2    60   ~ 0
5V0
Wire Wire Line
	3600 4600 4150 4600
Text Label 3600 4900 2    60   ~ 0
GND
Wire Wire Line
	3600 4900 4150 4900
$Comp
L device:C C44
U 1 1 5B7B8DBD
P 8850 3050
F 0 "C44" H 8965 3096 50  0000 L CNN
F 1 "0.47 uF" H 8965 3005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8888 2900 50  0001 C CNN
F 3 "" H 8850 3050 50  0001 C CNN
	1    8850 3050
	1    0    0    -1  
$EndComp
Text Label 8850 2900 2    60   ~ 0
VREF
Text Label 8850 3200 2    60   ~ 0
GND
$Comp
L device:C C45
U 1 1 5B7BAB28
P 9450 3050
F 0 "C45" H 9565 3096 50  0000 L CNN
F 1 "0.47 uF" H 9565 3005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 9488 2900 50  0001 C CNN
F 3 "" H 9450 3050 50  0001 C CNN
	1    9450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3200 8850 3200
Wire Wire Line
	8850 2900 9450 2900
$EndSCHEMATC
