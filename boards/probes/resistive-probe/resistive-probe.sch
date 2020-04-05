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
LIBS:conn
LIBS:device
LIBS:resistive-probe-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "STARSHIPRAIDER Resistive Probe"
Date "2017-05-27"
Rev "0.1"
Comp "Andrew Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X01 P2
U 1 1 5929E172
P 7750 2750
F 0 "P2" H 7828 2791 50  0000 L CNN
F 1 "SOLDERPAD" H 7828 2700 50  0000 L CNN
F 2 "azonenberg_pcb:FLEX_SOLDERPAD" H 7750 2750 50  0001 C CNN
F 3 "" H 7750 2750 50  0000 C CNN
	1    7750 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 5929E1F3
P 7750 3100
F 0 "P3" H 7828 3141 50  0000 L CNN
F 1 "SOLDERPAD" H 7828 3050 50  0000 L CNN
F 2 "azonenberg_pcb:FLEX_SOLDERPAD" H 7750 3100 50  0001 C CNN
F 3 "" H 7750 3100 50  0000 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
Text Label 7200 3100 2    60   ~ 0
GND
Wire Wire Line
	6250 3100 7550 3100
$Comp
L R R1
U 1 1 5929E268
P 7200 2750
F 0 "R1" V 7100 2750 50  0000 C CNN
F 1 "R" V 7200 2750 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7130 2750 50  0001 C CNN
F 3 "" H 7200 2750 50  0000 C CNN
	1    7200 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 2750 7550 2750
Text Notes 7100 2550 0    60   ~ 0
R = 953 ohm + 49 in host provides 20.45x attenuation\nR= 0 ohm provides no attenuation
$Comp
L BNC P1
U 1 1 5929E35B
P 6250 2750
F 0 "P1" H 6351 2726 50  0000 L CNN
F 1 "MMCX" H 6351 2635 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_MMCX_LINX_CONNMMCX002SMD" H 6250 2750 50  0001 C CNN
F 3 "" H 6250 2750 50  0000 C CNN
	1    6250 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 2750 7050 2750
Wire Wire Line
	6250 3100 6250 2950
$EndSCHEMATC
