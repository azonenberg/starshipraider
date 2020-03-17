EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-16"
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
P 2650 3450
AR Path="/5E73BA4F" Ref="J?"  Part="1" 
AR Path="/5E7383DD/5E73BA4F" Ref="J1"  Part="1" 
F 0 "J1" H 2603 3688 50  0000 C CNN
F 1 "SMA" H 2603 3597 50  0000 C CNN
F 2 "" H 2650 3450 50  0001 C CNN
F 3 "" H 2650 3450 50  0001 C CNN
	1    2650 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 3650 2650 3750
$Comp
L device:D_TVS D?
U 1 1 5E73BA57
P 4750 3600
AR Path="/5E73BA57" Ref="D?"  Part="1" 
AR Path="/5E7383DD/5E73BA57" Ref="D1"  Part="1" 
F 0 "D1" V 4704 3679 50  0000 L CNN
F 1 "TPD1E05U06DPYR" V 4795 3679 50  0000 L CNN
F 2 "" H 4750 3600 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Transient-voltage-suppression_diode" H 4750 3600 50  0001 C CNN
	1    4750 3600
	0    1    1    0   
$EndComp
Text Notes 2650 3850 0    50   ~ 0
± 5V range
Text Label 2800 3450 0    50   ~ 0
VIN
Text Label 4200 3450 0    50   ~ 0
VIN_DIV2
Text Notes 2650 2850 0    79   ~ 0
Input protection\nand attenuator
Text Notes 7200 2850 0    79   ~ 0
100 MHz Butterworth\nantialiasing filter
$Comp
L device:R R?
U 1 1 5E73BA63
P 3450 3600
AR Path="/5E73BA63" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA63" Ref="R1"  Part="1" 
F 0 "R1" H 3520 3646 50  0000 L CNN
F 1 "FIXME" H 3520 3555 50  0000 L CNN
F 2 "" V 3380 3600 50  0001 C CNN
F 3 "" H 3450 3600 50  0001 C CNN
	1    3450 3600
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E73BA69
P 4100 3600
AR Path="/5E73BA69" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA69" Ref="R3"  Part="1" 
F 0 "R3" H 4170 3646 50  0000 L CNN
F 1 "FIXME" H 4170 3555 50  0000 L CNN
F 2 "" V 4030 3600 50  0001 C CNN
F 3 "" H 4100 3600 50  0001 C CNN
	1    4100 3600
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5E73BA6F
P 3850 3450
AR Path="/5E73BA6F" Ref="R?"  Part="1" 
AR Path="/5E7383DD/5E73BA6F" Ref="R2"  Part="1" 
F 0 "R2" V 3643 3450 50  0000 C CNN
F 1 "FIXME" V 3734 3450 50  0000 C CNN
F 2 "" V 3780 3450 50  0001 C CNN
F 3 "" H 3850 3450 50  0001 C CNN
	1    3850 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3450 3450 3450
Wire Wire Line
	3450 3750 4100 3750
Wire Wire Line
	4000 3450 4100 3450
Connection ~ 4100 3450
$Comp
L device:C C?
U 1 1 5E73BA79
P 7200 3600
AR Path="/5E73BA79" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E73BA79" Ref="C1"  Part="1" 
F 0 "C1" H 7315 3646 50  0000 L CNN
F 1 "31.83 pF" H 7315 3555 50  0000 L CNN
F 2 "" H 7238 3450 50  0001 C CNN
F 3 "" H 7200 3600 50  0001 C CNN
	1    7200 3600
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5E73BA7F
P 8150 3600
AR Path="/5E73BA7F" Ref="C?"  Part="1" 
AR Path="/5E7383DD/5E73BA7F" Ref="C2"  Part="1" 
F 0 "C2" H 8265 3646 50  0000 L CNN
F 1 "31.83 pF" H 8265 3555 50  0000 L CNN
F 2 "" H 8188 3450 50  0001 C CNN
F 3 "" H 8150 3600 50  0001 C CNN
	1    8150 3600
	1    0    0    -1  
$EndComp
$Comp
L device:L L?
U 1 1 5E73BA85
P 7700 3450
AR Path="/5E73BA85" Ref="L?"  Part="1" 
AR Path="/5E7383DD/5E73BA85" Ref="L1"  Part="1" 
F 0 "L1" V 7519 3450 50  0000 C CNN
F 1 "159 nH" V 7610 3450 50  0000 C CNN
F 2 "" H 7700 3450 50  0001 C CNN
F 3 "" H 7700 3450 50  0001 C CNN
	1    7700 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 3450 7550 3450
Wire Wire Line
	7850 3450 8150 3450
Wire Wire Line
	8150 3750 7200 3750
Text Label 7200 3750 2    50   ~ 0
GND
Wire Wire Line
	4100 3450 4750 3450
Wire Wire Line
	4100 3750 4750 3750
Connection ~ 4100 3750
Wire Wire Line
	2800 3450 3450 3450
Connection ~ 3450 3450
Wire Wire Line
	4750 3450 7200 3450
Connection ~ 4750 3450
Connection ~ 7200 3450
Wire Wire Line
	3450 3750 2650 3750
Connection ~ 3450 3750
Text HLabel 2650 3750 0    50   Input ~ 0
GND
Text HLabel 8150 3450 2    50   Output ~ 0
VIN_FILTERED
Text Notes 5400 3400 0    50   ~ 0
± 2.5V range\nNet gain = 0.5 (-6 dB)
$EndSCHEMATC
