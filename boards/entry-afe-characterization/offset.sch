EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-16"
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
Text Notes 4750 2650 0    50   ~ 0
TODO: decoupling
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
	6950 3950 6950 3400
Wire Wire Line
	6950 3400 6500 3400
Wire Wire Line
	5600 3950 6950 3950
Text Label 5250 3200 2    50   ~ 0
OFFSET_EN
Text HLabel 4450 3500 0    50   Input ~ 0
VIN_OFFSET
Text HLabel 6950 3400 2    50   Output ~ 0
VSHIFTED_P
Text HLabel 6500 3500 2    50   Output ~ 0
VSHIFTED_N
Text HLabel 5250 2900 0    50   Input ~ 0
5V0_P
Text HLabel 5250 3000 0    50   Input ~ 0
5V0_N
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
$EndSCHEMATC
