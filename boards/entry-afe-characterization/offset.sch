EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-26"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3200 3400 0    50   Input ~ 0
VIN_FILTERED
Text Notes 5450 4450 0    50   ~ 0
± 2.5V input\n0-5V output, 2.5V common mode\nNet gain = -0.5 (-6 db)\nVoffset is +/- 2.5V range
Text Notes 5650 2500 0    79   ~ 0
Offset stage
$Comp
L analog-azonenberg:LMH6552 U?
U 1 1 5E73FCE0
P 5450 3650
AR Path="/5E73FCE0" Ref="U?"  Part="1" 
AR Path="/5E73DF00/5E73FCE0" Ref="U1"  Part="1" 
F 0 "U1" H 5875 4647 60  0000 C CNN
F 1 "LMH6552" H 5875 4541 60  0000 C CNN
F 2 "" H 4950 3600 60  0000 C CNN
F 3 "" H 4950 3600 60  0000 C CNN
	1    5450 3650
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E73FCEA
P 4650 3400
AR Path="/5E73FCEA" Ref="R?"  Part="1" 
AR Path="/5E73DF00/5E73FCEA" Ref="R5"  Part="1" 
F 0 "R5" V 4550 3350 50  0000 C CNN
F 1 "200 0.1%" V 4550 3650 50  0000 C CNN
F 2 "" V 4580 3400 50  0001 C CNN
F 3 "" H 4650 3400 50  0001 C CNN
	1    4650 3400
	0    1    1    0   
$EndComp
$Comp
L device:R R?
U 1 1 5E73FCF2
P 4650 3500
AR Path="/5E73FCF2" Ref="R?"  Part="1" 
AR Path="/5E73DF00/5E73FCF2" Ref="R6"  Part="1" 
F 0 "R6" V 4750 3450 50  0000 C CNN
F 1 "200 0.1%" V 4750 3750 50  0000 C CNN
F 2 "" V 4580 3500 50  0001 C CNN
F 3 "" H 4650 3500 50  0001 C CNN
	1    4650 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 3500 4500 3500
Wire Wire Line
	4800 3400 5100 3400
$Comp
L device:R R?
U 1 1 5E73FCFA
P 5450 3750
AR Path="/5E73FCFA" Ref="R?"  Part="1" 
AR Path="/5E73DF00/5E73FCFA" Ref="R7"  Part="1" 
F 0 "R7" V 5550 3700 50  0000 C CNN
F 1 "200 0.1%" V 5550 4000 50  0000 C CNN
F 2 "" V 5380 3750 50  0001 C CNN
F 3 "" H 5450 3750 50  0001 C CNN
	1    5450 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3500 5200 3500
Wire Wire Line
	5200 3500 5200 3750
Wire Wire Line
	5200 3750 5300 3750
Connection ~ 5200 3500
Wire Wire Line
	5200 3500 4800 3500
Wire Wire Line
	5600 3750 6500 3750
Wire Wire Line
	6500 3750 6500 3500
$Comp
L device:R R?
U 1 1 5E73FD07
P 5450 3950
AR Path="/5E73FD07" Ref="R?"  Part="1" 
AR Path="/5E73DF00/5E73FD07" Ref="R8"  Part="1" 
F 0 "R8" V 5550 3900 50  0000 C CNN
F 1 "200 0.1%" V 5550 4200 50  0000 C CNN
F 2 "" V 5380 3950 50  0001 C CNN
F 3 "" H 5450 3950 50  0001 C CNN
	1    5450 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3400 5100 3950
Wire Wire Line
	5100 3950 5300 3950
Connection ~ 5100 3400
Wire Wire Line
	5100 3400 5250 3400
Wire Wire Line
	6950 3400 6500 3400
Wire Wire Line
	5600 3950 6950 3950
Text HLabel 4450 3500 0    50   Input ~ 0
VIN_OFFSET
Text HLabel 7700 3400 2    50   Output ~ 0
VSHIFTED_P
Text HLabel 7700 3500 2    50   Output ~ 0
VSHIFTED_N
Text HLabel 6500 2900 2    50   Input ~ 0
GND
Text HLabel 6500 3000 2    50   Input ~ 0
2V5_REF
$Comp
L device:R R4
U 1 1 5E75EDF9
P 3200 3550
F 0 "R4" H 3270 3596 50  0000 L CNN
F 1 "50" H 3270 3505 50  0000 L CNN
F 2 "" V 3130 3550 50  0001 C CNN
F 3 "" H 3200 3550 50  0001 C CNN
	1    3200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3400 4500 3400
Text Label 3050 3700 2    50   ~ 0
GND
Wire Wire Line
	3050 3700 3200 3700
Text HLabel 5250 2900 0    50   Input ~ 0
6V0_P
Text HLabel 5250 3000 0    50   Input ~ 0
6V0_N
$Comp
L device:C C13
U 1 1 5E74C8A0
P 4000 2500
F 0 "C13" H 4115 2546 50  0000 L CNN
F 1 "0.1 uF" H 4115 2455 50  0000 L CNN
F 2 "" H 4038 2350 50  0001 C CNN
F 3 "" H 4000 2500 50  0001 C CNN
	1    4000 2500
	1    0    0    -1  
$EndComp
$Comp
L device:C C14
U 1 1 5E74D7C6
P 4000 2950
F 0 "C14" H 4115 2996 50  0000 L CNN
F 1 "0.1 uF" H 4115 2905 50  0000 L CNN
F 2 "" H 4038 2800 50  0001 C CNN
F 3 "" H 4000 2950 50  0001 C CNN
	1    4000 2950
	1    0    0    -1  
$EndComp
$Comp
L device:C C11
U 1 1 5E74DE4E
P 3500 2500
F 0 "C11" H 3615 2546 50  0000 L CNN
F 1 "4.7 uF" H 3615 2455 50  0000 L CNN
F 2 "" H 3538 2350 50  0001 C CNN
F 3 "" H 3500 2500 50  0001 C CNN
	1    3500 2500
	1    0    0    -1  
$EndComp
$Comp
L device:C C12
U 1 1 5E74E22C
P 3500 2950
F 0 "C12" H 3615 2996 50  0000 L CNN
F 1 "4.7 uF" H 3615 2905 50  0000 L CNN
F 2 "" H 3538 2800 50  0001 C CNN
F 3 "" H 3500 2950 50  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2800 4000 2800
Wire Wire Line
	4000 3100 3500 3100
Wire Wire Line
	3500 2650 4000 2650
Wire Wire Line
	4000 2350 3500 2350
Text Label 3500 2350 2    50   ~ 0
6V0_P
Text Label 3500 2650 2    50   ~ 0
GND
Text Label 3500 2800 2    50   ~ 0
GND
Text Label 3500 3100 2    50   ~ 0
6V0_N
$Comp
L device:C C15
U 1 1 5E74F9B0
P 7350 3000
F 0 "C15" H 7465 3046 50  0000 L CNN
F 1 "0.47 uF" H 7465 2955 50  0000 L CNN
F 2 "" H 7388 2850 50  0001 C CNN
F 3 "" H 7350 3000 50  0001 C CNN
	1    7350 3000
	1    0    0    -1  
$EndComp
Text Label 7350 2850 0    50   ~ 0
2V5_REF
Text Label 7350 3150 0    50   ~ 0
GND
$Comp
L device:R R?
U 1 1 5E7B7673
P 4650 3200
AR Path="/5E7B7673" Ref="R?"  Part="1" 
AR Path="/5E73DF00/5E7B7673" Ref="R12"  Part="1" 
F 0 "R12" V 4550 3150 50  0000 C CNN
F 1 "10K" V 4550 3450 50  0000 C CNN
F 2 "" V 4580 3200 50  0001 C CNN
F 3 "" H 4650 3200 50  0001 C CNN
	1    4650 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3200 5250 3200
Text Label 4500 3200 2    50   ~ 0
6V0_P
$Comp
L device:R R30
U 1 1 5E7CB912
P 7150 3400
F 0 "R30" V 7100 3150 50  0000 C CNN
F 1 "100" V 7150 3400 50  0000 C CNN
F 2 "" V 7080 3400 50  0001 C CNN
F 3 "" H 7150 3400 50  0001 C CNN
	1    7150 3400
	0    1    1    0   
$EndComp
Connection ~ 6950 3400
$Comp
L device:R R31
U 1 1 5E7CBF22
P 7150 3500
F 0 "R31" V 7100 3250 50  0000 C CNN
F 1 "100" V 7150 3500 50  0000 C CNN
F 2 "" V 7080 3500 50  0001 C CNN
F 3 "" H 7150 3500 50  0001 C CNN
	1    7150 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3400 6950 3950
Wire Wire Line
	7000 3400 6950 3400
Wire Wire Line
	7000 3500 6500 3500
Connection ~ 6500 3500
Wire Wire Line
	7300 3400 7700 3400
Wire Wire Line
	7700 3500 7300 3500
$EndSCHEMATC
