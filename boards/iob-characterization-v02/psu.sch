EESchema Schematic File Version 4
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "STARSHIPRAIDER I/O Characterization"
Date "2018-08-09"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1600 850  0    60   Input ~ 0
12V0
Text HLabel 5300 5350 0    60   Input ~ 0
5V0
Text HLabel 5300 5450 0    60   Input ~ 0
GND
Text Notes 1400 6650 0    60   ~ 0
I2C to host is 3.3V, shift it to 5V
Text HLabel 9900 850  2    60   Output ~ 0
VCCO_HI
Text HLabel 5050 1350 0    60   Output ~ 0
2V5
Text HLabel 9900 1900 2    60   Output ~ 0
VCCO_LO
$Comp
L iob-characterization-v02-rescue:SIP32408 U11
U 1 1 591F646E
P 8850 1400
F 0 "U11" H 9150 2197 60  0000 C CNN
F 1 "SIP32409" H 9150 2091 60  0000 C CNN
F 2 "" H 8850 1400 60  0000 C CNN
F 3 "" H 8850 1400 60  0000 C CNN
	1    8850 1400
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:SIP32408 U12
U 1 1 591F64B0
P 8850 2450
F 0 "U12" H 9150 3247 60  0000 C CNN
F 1 "SIP32409" H 9150 3141 60  0000 C CNN
F 2 "" H 8850 2450 60  0000 C CNN
F 3 "" H 8850 2450 60  0000 C CNN
	1    8850 2450
	1    0    0    -1  
$EndComp
Text HLabel 5300 5650 0    50   Input ~ 0
VCCO_REF
$Comp
L iob-characterization-v02-rescue:GREENPAK_DEVKIT_HDR J?
U 1 1 5B7FF35E
P 8950 6100
AR Path="/5B7FF35E" Ref="J?"  Part="1" 
AR Path="/591D3AB5/5B7FF35E" Ref="J2"  Part="1" 
F 0 "J2" H 8950 8250 60  0000 L CNN
F 1 "GREENPAK_DEVKIT_HDR" H 8950 6050 60  0000 L CNN
F 2 "" H 8950 6050 60  0001 C CNN
F 3 "" H 8950 6050 60  0001 C CNN
	1    8950 6100
	1    0    0    -1  
$EndComp
NoConn ~ 8750 4050
Text Label 8550 4150 2    60   ~ 0
GND
Wire Wire Line
	8550 4150 8750 4150
NoConn ~ 8750 5450
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7FF369
P 9450 3200
AR Path="/5B7FF369" Ref="R?"  Part="1" 
AR Path="/591D3AB5/5B7FF369" Ref="R1"  Part="1" 
F 0 "R1" V 9350 3200 50  0000 C CNN
F 1 "R" V 9450 3200 50  0000 C CNN
F 2 "" V 9380 3200 50  0000 C CNN
F 3 "" H 9450 3200 50  0000 C CNN
	1    9450 3200
	-1   0    0    1   
$EndComp
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B7FF370
P 9450 3700
AR Path="/5B7FF370" Ref="R?"  Part="1" 
AR Path="/591D3AB5/5B7FF370" Ref="R2"  Part="1" 
F 0 "R2" V 9350 3700 50  0000 C CNN
F 1 "R" V 9450 3700 50  0000 C CNN
F 2 "" V 9380 3700 50  0000 C CNN
F 3 "" H 9450 3700 50  0000 C CNN
	1    9450 3700
	-1   0    0    1   
$EndComp
Text Label 8550 4750 2    60   ~ 0
VCCO_ATTEN
Wire Wire Line
	8550 4750 8750 4750
Text Label 9450 3450 2    60   ~ 0
VCCO_ATTEN
Wire Wire Line
	9450 3350 9450 3550
Text Label 9300 3850 2    60   ~ 0
GND
Wire Wire Line
	9450 3850 9300 3850
Text Label 9300 3050 2    60   ~ 0
VCCO
Wire Wire Line
	9300 3050 9450 3050
Text Label 8550 850  2    60   ~ 0
VCCO
Wire Wire Line
	9900 850  9650 850 
Wire Wire Line
	9900 1900 9650 1900
Text Label 8550 1900 2    60   ~ 0
VCCO
Text Label 8550 1050 2    60   ~ 0
GND
Text Label 8550 2100 2    60   ~ 0
GND
Wire Wire Line
	8650 2200 8550 2200
Wire Wire Line
	8550 2200 8550 2100
Wire Wire Line
	8650 2100 8550 2100
Wire Wire Line
	8650 1150 8550 1150
Wire Wire Line
	8550 1150 8550 1050
Wire Wire Line
	8650 1050 8550 1050
Wire Wire Line
	8650 850  8550 850 
Wire Wire Line
	8550 1350 8650 1350
Wire Wire Line
	8550 2400 8650 2400
Text Notes 8850 2550 0    60   ~ 0
Load switches for output power rails
Wire Wire Line
	8650 1900 8550 1900
Text Notes 8950 6300 0    50   ~ 0
Greenpak runs at 5V Vdd
$Comp
L analog-azonenberg:ISL24021IRT065Z-T7A‎ U1
U 1 1 5B8022FF
P 5550 5850
F 0 "U1" H 5900 6575 50  0000 C CNN
F 1 "ISL24021IRT065Z-T7A‎" H 5900 6484 50  0000 C CNN
F 2 "" H 5550 5850 50  0001 C CNN
F 3 "" H 5550 5850 50  0001 C CNN
	1    5550 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5450 5450 5450
Wire Wire Line
	5450 5350 5300 5350
Text Label 6650 5650 0    50   ~ 0
VCCO
Wire Wire Line
	6650 5650 6500 5650
Wire Wire Line
	5450 5750 5300 5750
Wire Wire Line
	5300 5750 5300 5950
Wire Wire Line
	5300 5950 6500 5950
Wire Wire Line
	6500 5950 6500 5650
Connection ~ 6500 5650
Wire Wire Line
	6500 5650 6350 5650
Wire Wire Line
	5300 5650 5450 5650
Text Notes 5550 6050 0    50   ~ 0
Buffer DAC output to generate VCCO
Wire Wire Line
	8550 4650 8750 4650
Wire Wire Line
	8550 4550 8750 4550
Text HLabel 8550 4550 0    60   Output ~ 0
VCCO_IS_HI
Text Label 8550 1350 2    60   ~ 0
VCCO_IS_HI
Text Label 8550 2400 2    60   ~ 0
VCCO_IS_LO
Text Label 8550 4650 2    60   ~ 0
VCCO_IS_LO
$EndSCHEMATC
