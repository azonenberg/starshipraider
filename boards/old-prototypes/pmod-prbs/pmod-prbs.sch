EESchema Schematic File Version 2
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
LIBS:device
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PMOD_DEVICE_DIFF J?
U 1 1 58BE08BE
P 2400 11100
F 0 "J?" H 2778 11933 60  0000 L CNN
F 1 "PMOD_DEVICE_DIFF" H 2778 11827 60  0000 L CNN
F 2 "" H 2400 11100 60  0001 C CNN
F 3 "" H 2400 11100 60  0001 C CNN
	1    2400 11100
	1    0    0    -1  
$EndComp
$Comp
L PMOD_DEVICE_DIFF_PWRIN J?
U 1 1 58BE0905
P 4000 11100
F 0 "J?" H 4378 11933 60  0000 L CNN
F 1 "PMOD_DEVICE_DIFF_PWRIN" H 4378 11827 60  0000 L CNN
F 2 "" H 4000 11100 60  0001 C CNN
F 3 "" H 4000 11100 60  0001 C CNN
	1    4000 11100
	1    0    0    -1  
$EndComp
Text Notes 9950 5700 0    60   ~ 0
Decoupling TODO
Wire Wire Line
	2500 1200 2700 1200
Text Label 2700 1200 0    60   ~ 0
CLK100_N
Wire Wire Line
	2700 1100 2500 1100
Text Label 2700 1100 0    60   ~ 0
CLK100_P
Text Label 10150 4650 2    60   ~ 0
GND
Text Label 10150 4550 2    60   ~ 0
3V3
$Comp
L OSC_LVDS_VCXO U?
U 1 1 58BE10B0
P 10600 5100
F 0 "U?" H 10650 5050 60  0000 C CNN
F 1 "ASG-D-V-A-100.000MHZ" H 10600 4950 60  0000 L CNN
F 2 "" H 10600 5100 60  0000 C CNN
F 3 "" H 10600 5100 60  0000 C CNN
	1    10600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4550 10300 4550
Wire Wire Line
	10150 4650 10300 4650
Wire Wire Line
	10300 4750 10200 4750
Wire Wire Line
	10200 4750 10200 4650
Connection ~ 10200 4650
Text Label 10150 5050 2    60   ~ 0
3V3
Wire Wire Line
	10150 5050 10300 5050
$Comp
L LMK04806 U?
U 1 1 58BE2F54
P 6900 5100
F 0 "U?" H 6150 5050 60  0000 L CNN
F 1 "LMK04806" H 6150 4950 60  0000 L CNN
F 2 "" H 6900 5100 60  0001 C CNN
F 3 "" H 6900 5100 60  0001 C CNN
	1    6900 5100
	1    0    0    -1  
$EndComp
Text Notes 9750 8850 0    60   ~ 0
Need external power supply since pmods\nrail can't supply that much
Text Notes 9900 7300 0    60   ~ 0
VCO tuning range = 2.370 - 2.600 GHz for LMK04806\nInput clock = 100 MHz\n\nMultiply CLKIN by 25 to get 2.5 GHz VCO freq (400 ps per cycle, 200 ps per half-cycle)
Text Notes 9950 7750 0    60   ~ 0
Microwire = 20 MHz Fmax
Text Notes 10800 6100 0    60   ~ 0
Do we need a second reference clock? VCXO is just for VCO?
$Comp
L OSC_LVDS U?
U 1 1 58BE3775
P 1600 1350
F 0 "U?" H 1600 1300 60  0000 L CNN
F 1 "DSC1123CI5-100.0000" H 1600 1200 60  0000 L CNN
F 2 "" H 1600 1350 60  0000 C CNN
F 3 "" H 1600 1350 60  0000 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
Text Label 1100 1000 2    60   ~ 0
3V3
Wire Wire Line
	1100 1000 1300 1000
Wire Wire Line
	1200 1000 1200 1100
Wire Wire Line
	1200 1100 1300 1100
Connection ~ 1200 1000
Text Label 1100 1200 2    60   ~ 0
GND
Wire Wire Line
	1100 1200 1300 1200
Wire Wire Line
	1200 1200 1200 1300
Wire Wire Line
	1200 1300 1300 1300
Connection ~ 1200 1200
$EndSCHEMATC
