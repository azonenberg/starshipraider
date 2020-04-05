EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "STARSHIPRAIDER Pin Header Probe Adapter"
Date "2018-08-07"
Rev "0.1"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L special-azonenberg:STARSHIPRAIDER_PROBE_MODULE J1
U 1 1 5B6C0787
P 1200 4150
F 0 "J1" H 1750 7587 60  0000 C CNN
F 1 "STARSHIPRAIDER_PROBE_MODULE" H 1750 7481 60  0000 C CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QSH-030-01-L-D-A" H 1850 4350 60  0001 C CNN
F 3 "" H 1850 4350 60  0000 C CNN
	1    1200 4150
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:STARSHIPRAIDER_PINHDR J2
U 1 1 5B6C8AB9
P 5450 1900
F 0 "J2" H 5450 3075 50  0000 C CNN
F 1 "STARSHIPRAIDER_PINHDR" H 5450 2984 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_SMH_110_02_L_D" H 5500 1850 50  0001 C CNN
F 3 "" H 5500 1850 50  0001 C CNN
	1    5450 1900
	1    0    0    -1  
$EndComp
$Comp
L memory-azonenberg:24Cxx-DFN8 U1
U 1 1 5B6C8B2A
P 5100 4150
F 0 "U1" H 5500 4947 60  0000 C CNN
F 1 "24C04-DFN8" H 5500 4841 60  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_2x3MM" H 5500 4450 60  0001 C CNN
F 3 "" H 5500 4450 60  0000 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
Text Label 4700 3600 2    50   ~ 0
3V3
Text Label 4700 3700 2    50   ~ 0
GND
Wire Wire Line
	4700 3700 4900 3700
Wire Wire Line
	4900 3600 4700 3600
$Comp
L device:C C1
U 1 1 5B6C8C9D
P 3950 5150
F 0 "C1" H 4065 5196 50  0000 L CNN
F 1 "4.7 uF" H 4065 5105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 3988 5000 50  0001 C CNN
F 3 "" H 3950 5150 50  0001 C CNN
	1    3950 5150
	1    0    0    -1  
$EndComp
$Comp
L device:C C2
U 1 1 5B6C8D3F
P 4500 5150
F 0 "C2" H 4615 5196 50  0000 L CNN
F 1 "0.47 uF" H 4615 5105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4538 5000 50  0001 C CNN
F 3 "" H 4500 5150 50  0001 C CNN
	1    4500 5150
	1    0    0    -1  
$EndComp
Text Label 3800 5000 2    50   ~ 0
3V3
Text Label 3800 5300 2    50   ~ 0
GND
Wire Wire Line
	3800 5000 3950 5000
Wire Wire Line
	4500 5000 3950 5000
Connection ~ 3950 5000
Wire Wire Line
	3800 5300 3950 5300
Wire Wire Line
	4500 5300 3950 5300
Connection ~ 3950 5300
Text Notes 5100 4250 0    50   ~ 0
Address = 8'hA4
Text Label 4700 3900 2    50   ~ 0
GND
Text Label 4700 4000 2    50   ~ 0
3V3
Text Label 4700 4100 2    50   ~ 0
GND
Wire Wire Line
	4700 4100 4900 4100
Wire Wire Line
	4900 4000 4700 4000
Wire Wire Line
	4700 3900 4900 3900
Text Label 6350 3800 2    50   ~ 0
3V3
$Comp
L special-azonenberg:JUMPER_0402_SPDT J3
U 1 1 5B6C92AF
P 6950 4100
F 0 "J3" H 6573 4353 60  0000 R CNN
F 1 "JUMPER_0402_SPDT" H 6573 4247 60  0000 R CNN
F 2 "azonenberg_pcb:EIA_0402_JUMPER" H 6950 4100 60  0001 C CNN
F 3 "" H 6950 4100 60  0000 C CNN
	1    6950 4100
	-1   0    0    -1  
$EndComp
Text Label 6350 4000 2    50   ~ 0
GND
Text Label 6100 3900 0    50   ~ 0
EEPROM_WP_N
Wire Wire Line
	6350 4000 6650 4000
Wire Wire Line
	6100 3900 6650 3900
Wire Wire Line
	6350 3800 6650 3800
Text Label 6200 3600 0    50   ~ 0
I2C_SCL
Text Label 6200 3700 0    50   ~ 0
I2C_SDA
Wire Wire Line
	6200 3700 6100 3700
Wire Wire Line
	6100 3600 6200 3600
Text Label 2650 1200 0    50   ~ 0
I2C_SCL
Text Label 850  1200 2    50   ~ 0
I2C_SDA
Wire Wire Line
	850  1200 1000 1200
Wire Wire Line
	2650 1200 2500 1200
Text Label 850  1100 2    50   ~ 0
3V3
Wire Wire Line
	850  1100 1000 1100
Text Label 2650 1100 0    50   ~ 0
VCCO_REF
Wire Wire Line
	2650 1100 2500 1100
Text Label 4750 950  2    50   ~ 0
VCCO_REF
Wire Wire Line
	4750 950  4900 950 
Text Label 6150 950  0    50   ~ 0
GND
Wire Wire Line
	6150 950  6000 950 
Wire Wire Line
	6150 950  6150 1150
Wire Wire Line
	6150 1850 6000 1850
Wire Wire Line
	6000 1750 6150 1750
Connection ~ 6150 1750
Wire Wire Line
	6150 1750 6150 1850
Wire Wire Line
	6000 1650 6150 1650
Connection ~ 6150 1650
Wire Wire Line
	6150 1650 6150 1750
Wire Wire Line
	6000 1550 6150 1550
Connection ~ 6150 1550
Wire Wire Line
	6150 1550 6150 1650
Wire Wire Line
	6000 1450 6150 1450
Connection ~ 6150 1450
Wire Wire Line
	6150 1450 6150 1550
Wire Wire Line
	6000 1350 6150 1350
Connection ~ 6150 1350
Wire Wire Line
	6150 1350 6150 1450
Wire Wire Line
	6000 1250 6150 1250
Connection ~ 6150 1250
Wire Wire Line
	6150 1250 6150 1350
Wire Wire Line
	6000 1150 6150 1150
Connection ~ 6150 1150
Wire Wire Line
	6150 1150 6150 1250
Text Label 4750 1150 2    50   ~ 0
DQ0
Text Label 4750 1250 2    50   ~ 0
DQ1
Text Label 4750 1350 2    50   ~ 0
DQ2
Text Label 4750 1450 2    50   ~ 0
DQ3
Text Label 4750 1550 2    50   ~ 0
DQ4
Text Label 4750 1650 2    50   ~ 0
DQ5
Text Label 4750 1750 2    50   ~ 0
DQ6
Text Label 4750 1850 2    50   ~ 0
DQ7
Wire Wire Line
	4750 1850 4900 1850
Wire Wire Line
	4900 1750 4750 1750
Wire Wire Line
	4750 1650 4900 1650
Wire Wire Line
	4900 1550 4750 1550
Wire Wire Line
	4750 1450 4900 1450
Wire Wire Line
	4900 1350 4750 1350
Wire Wire Line
	4750 1250 4900 1250
Wire Wire Line
	4900 1150 4750 1150
Text Label 850  1400 2    50   ~ 0
DQ0
Text Label 850  1700 2    50   ~ 0
DQ1
Text Label 850  2000 2    50   ~ 0
DQ2
Text Label 850  2300 2    50   ~ 0
DQ3
Text Label 850  2600 2    50   ~ 0
DQ4
Text Label 850  2900 2    50   ~ 0
DQ5
Text Label 850  3200 2    50   ~ 0
DQ6
Text Label 850  3500 2    50   ~ 0
DQ7
Text Label 850  1300 2    50   ~ 0
GND
Wire Wire Line
	850  1300 1000 1300
Text Label 850  1500 2    50   ~ 0
GND
Wire Wire Line
	850  1400 1000 1400
Wire Wire Line
	850  1500 900  1500
Wire Wire Line
	900  1500 900  1600
Wire Wire Line
	900  1600 1000 1600
Connection ~ 900  1500
Wire Wire Line
	900  1500 1000 1500
Text Label 850  1800 2    50   ~ 0
GND
Wire Wire Line
	850  1800 900  1800
Wire Wire Line
	900  1800 900  1900
Wire Wire Line
	900  1900 1000 1900
Connection ~ 900  1800
Wire Wire Line
	900  1800 1000 1800
Wire Wire Line
	850  1700 1000 1700
Text Label 2650 1300 0    50   ~ 0
GND
Wire Wire Line
	2650 1300 2500 1300
Text Label 2650 1600 0    50   ~ 0
GND
Wire Wire Line
	2500 1600 2650 1600
Text Label 2650 1900 0    50   ~ 0
GND
Wire Wire Line
	2500 1900 2650 1900
Text Label 2650 2200 0    50   ~ 0
GND
Wire Wire Line
	2500 2200 2650 2200
Text Label 2650 2500 0    50   ~ 0
GND
Wire Wire Line
	2500 2500 2650 2500
Text Label 2650 2800 0    50   ~ 0
GND
Wire Wire Line
	2500 2800 2650 2800
Text Label 2650 3100 0    50   ~ 0
GND
Wire Wire Line
	2500 3100 2650 3100
Text Label 2650 3400 0    50   ~ 0
GND
Wire Wire Line
	2500 3400 2650 3400
Text Label 2650 3700 0    50   ~ 0
GND
Wire Wire Line
	2500 3700 2650 3700
Text Label 850  3600 2    50   ~ 0
GND
Wire Wire Line
	850  3600 900  3600
Wire Wire Line
	900  3600 900  3700
Wire Wire Line
	900  3700 1000 3700
Connection ~ 900  3600
Wire Wire Line
	900  3600 1000 3600
Text Label 850  3300 2    50   ~ 0
GND
Wire Wire Line
	850  3300 900  3300
Wire Wire Line
	900  3300 900  3400
Wire Wire Line
	900  3400 1000 3400
Connection ~ 900  3300
Wire Wire Line
	900  3300 1000 3300
Text Label 850  3000 2    50   ~ 0
GND
Wire Wire Line
	850  3000 900  3000
Wire Wire Line
	900  3000 900  3100
Wire Wire Line
	900  3100 1000 3100
Connection ~ 900  3000
Wire Wire Line
	900  3000 1000 3000
Text Label 850  2700 2    50   ~ 0
GND
Wire Wire Line
	850  2700 900  2700
Wire Wire Line
	900  2700 900  2800
Wire Wire Line
	900  2800 1000 2800
Connection ~ 900  2700
Wire Wire Line
	900  2700 1000 2700
Wire Wire Line
	850  3500 1000 3500
Wire Wire Line
	850  3200 1000 3200
Wire Wire Line
	850  2900 1000 2900
Wire Wire Line
	850  2600 1000 2600
Text Label 850  2400 2    50   ~ 0
GND
Wire Wire Line
	850  2400 900  2400
Wire Wire Line
	900  2400 900  2500
Wire Wire Line
	900  2500 1000 2500
Connection ~ 900  2400
Wire Wire Line
	900  2400 1000 2400
Wire Wire Line
	850  2300 1000 2300
Text Label 850  2100 2    50   ~ 0
GND
Wire Wire Line
	850  2100 900  2100
Wire Wire Line
	900  2100 900  2200
Wire Wire Line
	900  2200 1000 2200
Connection ~ 900  2100
Wire Wire Line
	900  2100 1000 2100
Wire Wire Line
	850  2000 1000 2000
Text Label 850  4100 2    50   ~ 0
GND
Wire Wire Line
	850  4100 1000 4100
$EndSCHEMATC
