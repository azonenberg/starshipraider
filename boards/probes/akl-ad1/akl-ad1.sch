EESchema Schematic File Version 4
LIBS:akl-ad1-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "AKL-AD1 Active Differential Probe Amplifier"
Date "2021-01-23"
Rev "0.2"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial_x2 J1
U 1 1 5FE90D04
P 4250 3950
F 0 "J1" H 4203 4288 50  0000 C CNN
F 1 "3211-60087" H 4203 4197 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMPM_DUAL_AMPHENOL_3211-60087" H 4250 3850 50  0001 C CNN
F 3 "" H 4250 3850 50  0001 C CNN
	1    4250 3950
	-1   0    0    -1  
$EndComp
Text Label 4250 4250 0    50   ~ 0
GND
Text Label 4650 3850 0    50   ~ 0
IN_P
Text Label 4650 4050 0    50   ~ 0
IN_N
Text Label 6800 3900 2    50   ~ 0
VOUT
Wire Wire Line
	7050 4100 7250 4100
Text Label 7050 4100 2    50   ~ 0
GND
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5FE908C0
P 7250 3900
F 0 "J2" H 7350 3875 50  0000 L CNN
F 1 "901-10511-3" H 7350 3784 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_AMPHENOL_901_10511_3" H 7250 3900 50  0001 C CNN
F 3 "" H 7250 3900 50  0001 C CNN
	1    7250 3900
	1    0    0    -1  
$EndComp
Text Notes 2900 3400 0    50   ~ 0
AKL-PD1 is about -20 dB S21\nfrom DUT to amplifier input
Wire Wire Line
	5050 3850 5050 3900
Wire Wire Line
	5050 4050 5050 4000
$Comp
L analog-azonenberg:LMH6401 U1
U 1 1 600C2136
P 5150 4150
F 0 "U1" H 5575 5825 50  0000 C CNN
F 1 "LMH6401" H 5575 5734 50  0000 C CNN
F 2 "azonenberg_pcb:QFN_16_0.5MM_3x3MM_TI_RMZ" H 5150 4150 50  0001 C CNN
F 3 "" H 5150 4150 50  0001 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3900 7100 3900
Text Label 6100 4500 0    50   ~ 0
GND
$Comp
L device:R R1
U 1 1 600C45C5
P 6100 4150
F 0 "R1" H 6170 4196 50  0000 L CNN
F 1 "49.9" H 6170 4105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6030 4150 50  0001 C CNN
F 3 "" H 6100 4150 50  0001 C CNN
	1    6100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4500 6100 4300
Text Label 5050 3400 2    50   ~ 0
SPI_SDIO
Text Label 5050 3600 2    50   ~ 0
SPI_SCK
Text Label 5050 3700 2    50   ~ 0
AMP_CS_N
Text Label 5050 3200 2    50   ~ 0
GND
Text Label 5050 3100 2    50   ~ 0
GND
Text Label 6100 3400 0    50   ~ 0
AMP_PD
Text Label 6100 3700 0    50   ~ 0
VOCM
Text Notes 5150 2350 0    50   ~ 0
26 dB differential gain to amplifier output at max gain\nThis is +6 dB vs the input\nBut we lose 6 dB since we're doing single ended output\nThis should give us unity gain end to end.\nDefaults to minimum gain at power-up, so we need to configure it
$Sheet
S 700  700  700  500 
U 600CAC30
F0 "Power Supply" 50
F1 "psu.sch" 50
F2 "GND" O R 1400 1000 50 
F3 "2V5_P" O R 1400 900 50 
F4 "2V5_N" O R 1400 1100 50 
F5 "2V5_D" O R 1400 800 50 
$EndSheet
Wire Wire Line
	2050 1000 1400 1000
Text Label 1650 1000 0    50   ~ 0
GND
Text Label 1400 900  0    50   ~ 0
2V5_P
Text Label 1400 1100 0    50   ~ 0
2V5_N
NoConn ~ 5050 3500
Text Label 2050 1300 2    50   ~ 0
SPI_SDIO
Text Label 2050 1400 2    50   ~ 0
SPI_SCK
Text Label 2050 1600 2    50   ~ 0
AMP_CS_N
Text Label 5050 2700 2    50   ~ 0
2V5_P
Text Label 5050 2900 2    50   ~ 0
2V5_N
Wire Wire Line
	5050 2900 5050 3000
Wire Wire Line
	5050 2800 5050 2700
Text Label 7400 2700 2    50   ~ 0
2V5_P
$Comp
L device:C C3
U 1 1 600EC664
P 7400 2850
F 0 "C3" H 7515 2896 50  0000 L CNN
F 1 "4.7 uF" H 7515 2805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 7438 2700 50  0001 C CNN
F 3 "" H 7400 2850 50  0001 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
$Comp
L device:C C5
U 1 1 600ECABB
P 7950 2850
F 0 "C5" H 8065 2896 50  0000 L CNN
F 1 "0.47 uF" H 8065 2805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7988 2700 50  0001 C CNN
F 3 "" H 7950 2850 50  0001 C CNN
	1    7950 2850
	1    0    0    -1  
$EndComp
$Comp
L device:C C7
U 1 1 600ECEC6
P 8500 2850
F 0 "C7" H 8615 2896 50  0000 L CNN
F 1 "0.47 uF" H 8615 2805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8538 2700 50  0001 C CNN
F 3 "" H 8500 2850 50  0001 C CNN
	1    8500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2700 7950 2700
Connection ~ 7950 2700
Wire Wire Line
	7950 2700 7400 2700
$Comp
L device:C C4
U 1 1 600ED325
P 7400 3150
F 0 "C4" H 7515 3196 50  0000 L CNN
F 1 "4.7 uF" H 7515 3105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 7438 3000 50  0001 C CNN
F 3 "" H 7400 3150 50  0001 C CNN
	1    7400 3150
	1    0    0    -1  
$EndComp
$Comp
L device:C C6
U 1 1 600ED5E1
P 7950 3150
F 0 "C6" H 8065 3196 50  0000 L CNN
F 1 "0.47 uF" H 8065 3105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7988 3000 50  0001 C CNN
F 3 "" H 7950 3150 50  0001 C CNN
	1    7950 3150
	1    0    0    -1  
$EndComp
$Comp
L device:C C8
U 1 1 600ED9FB
P 8500 3150
F 0 "C8" H 8615 3196 50  0000 L CNN
F 1 "0.47 uF" H 8615 3105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8538 3000 50  0001 C CNN
F 3 "" H 8500 3150 50  0001 C CNN
	1    8500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3000 7950 3000
Connection ~ 8500 3000
Connection ~ 7400 3000
Connection ~ 7950 3000
Wire Wire Line
	7950 3000 7400 3000
Text Label 7400 3000 2    50   ~ 0
GND
Text Label 7400 3300 2    50   ~ 0
2V5_N
Wire Wire Line
	7400 3300 7950 3300
Connection ~ 7950 3300
Wire Wire Line
	7950 3300 8500 3300
Text Label 2050 1700 2    50   ~ 0
AMP_PD
Text Label 6250 4950 0    50   ~ 0
VOCM
$Sheet
S 2050 700  600  1300
U 600CC7FD
F0 "MCU" 50
F1 "mcu.sch" 50
F2 "SPI_SDIO" B L 2050 1300 50 
F3 "SPI_SCK" O L 2050 1400 50 
F4 "GND" I L 2050 1000 50 
F5 "AMP_CS_N" O L 2050 1600 50 
F6 "AMP_PD" O L 2050 1700 50 
F7 "2V5" I L 2050 800 50 
$EndSheet
$Comp
L device:POT RV1
U 1 1 600FB0C2
P 6100 4950
F 0 "RV1" H 6030 4996 50  0000 R CNN
F 1 "SM-43TW103" H 6030 4905 50  0000 R CNN
F 2 "azonenberg_pcb:TRIMPOT_NIDEC_SM4xW" H 6100 4950 50  0001 C CNN
F 3 "" H 6100 4950 50  0001 C CNN
	1    6100 4950
	1    0    0    -1  
$EndComp
Text Label 5800 5100 2    50   ~ 0
2V5_N
Text Label 5800 4800 2    50   ~ 0
2V5_P
Wire Wire Line
	6100 5100 5800 5100
Wire Wire Line
	5800 4800 6100 4800
$Comp
L Connector:Conn_01x01 J3
U 1 1 600FCE38
P 6700 4950
F 0 "J3" H 6780 4992 50  0000 L CNN
F 1 "TESTPOINT" H 6780 4901 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 6700 4950 50  0001 C CNN
F 3 "~" H 6700 4950 50  0001 C CNN
	1    6700 4950
	1    0    0    -1  
$EndComp
Text Notes 6500 5100 0    50   ~ 0
Adjust to zero VOUT when inputs are terminated
Text Label 1400 800  0    50   ~ 0
2V5_D
Wire Wire Line
	2050 800  1400 800 
Wire Wire Line
	4400 3850 5050 3850
Wire Wire Line
	4400 4050 5050 4050
Wire Wire Line
	6500 4950 6250 4950
$EndSCHEMATC
