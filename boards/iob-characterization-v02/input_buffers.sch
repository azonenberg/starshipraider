EESchema Schematic File Version 4
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "STARSHIPRAIDER I/O Characterization"
Date "2018-08-10"
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
P 4900 3550
AR Path="/5B7F6368" Ref="U?"  Part="1" 
AR Path="/5B7E4C7E/5B7F6368" Ref="U2"  Part="1" 
F 0 "U2" H 4825 4697 60  0000 C CNN
F 1 "LMH7322" H 4825 4591 60  0000 C CNN
F 2 "" H 4400 3500 60  0001 C CNN
F 3 "" H 4400 3500 60  0000 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:LMH7322 U?
U 2 1 5B7F636F
P 4900 5100
AR Path="/5B7F636F" Ref="U?"  Part="2" 
AR Path="/5B7E4C7E/5B7F636F" Ref="U2"  Part="2" 
F 0 "U2" H 4825 6247 60  0000 C CNN
F 1 "LMH7322" H 4825 6141 60  0000 C CNN
F 2 "" H 4400 5050 60  0001 C CNN
F 3 "" H 4400 5050 60  0000 C CNN
	2    4900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2650 5550 2650
Text Notes 4400 5250 0    60   ~ 0
Input comparators
Wire Wire Line
	5550 2650 5550 2750
Wire Wire Line
	5550 2750 5450 2750
Connection ~ 5550 2650
Wire Wire Line
	5450 4200 5550 4200
Wire Wire Line
	5550 4200 5550 4300
Wire Wire Line
	5550 4300 5450 4300
Connection ~ 5550 4200
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F6385
P 5800 3450
AR Path="/5B7F6385" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F6385" Ref="R5"  Part="1" 
F 0 "R5" V 5850 3600 50  0000 C CNN
F 1 "10K" V 5800 3450 50  0000 C CNN
F 2 "" V 5730 3450 50  0001 C CNN
F 3 "" H 5800 3450 50  0000 C CNN
	1    5800 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3450 5450 3450
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F638D
P 5800 3550
AR Path="/5B7F638D" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F638D" Ref="R6"  Part="1" 
F 0 "R6" V 5850 3700 50  0000 C CNN
F 1 "10K" V 5800 3550 50  0000 C CNN
F 2 "" V 5730 3550 50  0001 C CNN
F 3 "" H 5800 3550 50  0000 C CNN
	1    5800 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3550 5450 3550
Text Label 6050 3550 0    60   ~ 0
2V5
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F6397
P 5800 5000
AR Path="/5B7F6397" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F6397" Ref="R7"  Part="1" 
F 0 "R7" V 5850 5150 50  0000 C CNN
F 1 "10K" V 5800 5000 50  0000 C CNN
F 2 "" V 5730 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0000 C CNN
	1    5800 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 5000 5450 5000
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F639F
P 5800 5100
AR Path="/5B7F639F" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F639F" Ref="R8"  Part="1" 
F 0 "R8" V 5850 5250 50  0000 C CNN
F 1 "10K" V 5800 5100 50  0000 C CNN
F 2 "" V 5730 5100 50  0001 C CNN
F 3 "" H 5800 5100 50  0000 C CNN
	1    5800 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 5100 5450 5100
Text Label 6050 5100 0    60   ~ 0
2V5
Wire Wire Line
	4000 3250 4200 3250
Text Label 4000 4800 2    60   ~ 0
VREF
Wire Wire Line
	4000 4800 4200 4800
Wire Wire Line
	4000 4700 4200 4700
Wire Wire Line
	4000 3150 4200 3150
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63B1
P 3950 3450
AR Path="/5B7F63B1" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63B1" Ref="R3"  Part="1" 
F 0 "R3" V 3900 3250 50  0000 C CNN
F 1 "20K" V 3950 3450 50  0000 C CNN
F 2 "" V 3880 3450 50  0001 C CNN
F 3 "" H 3950 3450 50  0000 C CNN
	1    3950 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3450 4200 3450
Wire Wire Line
	3800 3450 3650 3450
Wire Wire Line
	3650 3450 3650 3550
Wire Wire Line
	3650 3550 4200 3550
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63BC
P 3950 5000
AR Path="/5B7F63BC" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63BC" Ref="R4"  Part="1" 
F 0 "R4" V 3900 4800 50  0000 C CNN
F 1 "20K" V 3950 5000 50  0000 C CNN
F 2 "" V 3880 5000 50  0001 C CNN
F 3 "" H 3950 5000 50  0000 C CNN
	1    3950 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 5000 4200 5000
Wire Wire Line
	3800 5000 3650 5000
Wire Wire Line
	3650 5000 3650 5100
Wire Wire Line
	3650 5100 4200 5100
Wire Wire Line
	4200 2750 4100 2750
Wire Wire Line
	4100 2750 4100 2850
Wire Wire Line
	4100 2850 4200 2850
Wire Wire Line
	4000 2650 4200 2650
Text Label 4000 4200 2    60   ~ 0
12V0
Wire Wire Line
	4000 4200 4200 4200
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63CE
P 6600 3000
AR Path="/5B7F63CE" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63CE" Ref="R9"  Part="1" 
F 0 "R9" H 6670 3046 50  0000 L CNN
F 1 "R" V 6600 2950 50  0000 L CNN
F 2 "" V 6530 3000 50  0001 C CNN
F 3 "" H 6600 3000 50  0000 C CNN
	1    6600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3150 6600 3150
Connection ~ 6600 3150
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63D7
P 6600 3400
AR Path="/5B7F63D7" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63D7" Ref="R10"  Part="1" 
F 0 "R10" H 6670 3446 50  0000 L CNN
F 1 "R" V 6600 3350 50  0000 L CNN
F 2 "" V 6530 3400 50  0001 C CNN
F 3 "" H 6600 3400 50  0000 C CNN
	1    6600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3250 6600 3250
Connection ~ 6600 3250
Text Notes 6250 4050 0    60   ~ 0
TODO: Calculate termination resistors\nNeeds to have midpoint of +0.5V\nParallel resistance must equal 50R
Text Notes 6400 5500 0    60   ~ 0
Safe input range:\n* [TBD] Vss - 200 mV\n* 12.2V
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63E2
P 6600 4550
AR Path="/5B7F63E2" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63E2" Ref="R11"  Part="1" 
F 0 "R11" H 6670 4596 50  0000 L CNN
F 1 "R" V 6600 4500 50  0000 L CNN
F 2 "" V 6530 4550 50  0001 C CNN
F 3 "" H 6600 4550 50  0000 C CNN
	1    6600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4700 6600 4700
Connection ~ 6600 4700
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7F63EB
P 6600 4950
AR Path="/5B7F63EB" Ref="R?"  Part="1" 
AR Path="/5B7E4C7E/5B7F63EB" Ref="R12"  Part="1" 
F 0 "R12" H 6670 4996 50  0000 L CNN
F 1 "R" V 6600 4900 50  0000 L CNN
F 2 "" V 6530 4950 50  0001 C CNN
F 3 "" H 6600 4950 50  0000 C CNN
	1    6600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4800 6600 4800
Connection ~ 6600 4800
Text Label 6400 2850 2    60   ~ 0
2V5
Wire Wire Line
	6400 2850 6600 2850
Text Label 6400 4400 2    60   ~ 0
2V5
Wire Wire Line
	6400 4400 6600 4400
Wire Wire Line
	5550 2650 5700 2650
Wire Wire Line
	5550 4200 5700 4200
Wire Wire Line
	6600 3150 6750 3150
Wire Wire Line
	6600 3250 6750 3250
Wire Wire Line
	6600 4700 6750 4700
Wire Wire Line
	6600 4800 6750 4800
Text HLabel 4000 3150 0    60   Input ~ 0
RXD0
Text HLabel 4000 2750 0    60   Input ~ 0
GND
Wire Wire Line
	4000 2750 4100 2750
Connection ~ 4100 2750
Text HLabel 4000 2650 0    60   Input ~ 0
12V0
Text HLabel 4000 3250 0    60   Input ~ 0
VREF
Text Label 4000 4300 2    60   ~ 0
GND
Wire Wire Line
	4000 4300 4200 4300
Text HLabel 4000 4700 0    60   Input ~ 0
RXD1
Text HLabel 6750 3150 2    60   Output ~ 0
RXD0_P
Text HLabel 6750 3250 2    60   Output ~ 0
RXD0_N
Text HLabel 6750 4700 2    60   Output ~ 0
RXD1_P
Text HLabel 6750 4800 2    60   Output ~ 0
RXD1_N
Text Label 5700 4200 0    60   ~ 0
2V5
Text HLabel 5700 2650 2    60   Input ~ 0
2V5
Wire Wire Line
	5950 3550 6600 3550
Wire Wire Line
	5950 5100 6600 5100
Text Label 5950 3450 0    60   ~ 0
GND
Text Label 5950 5000 0    60   ~ 0
GND
$EndSCHEMATC
