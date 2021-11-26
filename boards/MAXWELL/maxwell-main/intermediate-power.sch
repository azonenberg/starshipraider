EESchema Schematic File Version 4
LIBS:maxwell-main-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 18
Title "MAXWELL Main Board"
Date "2021-10-31"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1200 1100 0    50   ~ 0
Input is 24V @ 4A or 48V @ 2A.\nUse 10A fuse to provide some headroom\nSupply recommends more like 20 for inrush though?
$Comp
L power-azonenberg:VES180_MINIFITJR J?
U 1 1 611CD68D
P 1550 2250
AR Path="/5EDD7150/611CD68D" Ref="J?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD68D" Ref="J24"  Part="1" 
F 0 "J24" H 1667 3325 50  0000 C CNN
F 1 "VES180_MINIFITJR" H 1667 3234 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_MOLEX_MINIFITJR_39-30-1080" H 1550 2250 50  0001 C CNN
F 3 "" H 1550 2250 50  0001 C CNN
	1    1550 2250
	-1   0    0    -1  
$EndComp
Text Label 1650 1600 0    50   ~ 0
VIN
Wire Wire Line
	1650 1400 1650 1500
Connection ~ 1650 1500
Wire Wire Line
	1650 1500 1650 1600
Connection ~ 1650 1600
Wire Wire Line
	1650 1600 1650 1700
$Comp
L power-azonenberg:FUSE_PWROUT F?
U 1 1 611CD699
P 2350 1600
AR Path="/5EDD7150/611CD699" Ref="F?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD699" Ref="F13"  Part="1" 
F 0 "F13" H 2350 1840 50  0000 C CNN
F 1 "10A" H 2350 1749 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_1206_FUSE_NOSILK" H 2350 1600 60  0001 C CNN
F 3 "" H 2350 1600 60  0000 C CNN
	1    2350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1600 2100 1600
Text Label 2600 1600 0    50   ~ 0
VIN_FUSED
$Comp
L passive-azonenberg:BNX003-11 FL?
U 1 1 611CD6A1
P 3200 1950
AR Path="/5EDD7150/611CD6A1" Ref="FL?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/611CD6A1" Ref="FL1"  Part="1" 
F 0 "FL1" H 3650 2525 50  0000 C CNN
F 1 "BNX003-11" H 3650 2434 50  0000 C CNN
F 2 "azonenberg_pcb:BNX003-11" H 3200 1950 50  0001 C CNN
F 3 "" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1600 2600 1600
Text Label 1650 1900 0    50   ~ 0
GND_IN
Wire Wire Line
	1650 2200 1650 2100
Connection ~ 1650 2000
Wire Wire Line
	1650 2000 1650 1900
Connection ~ 1650 2100
Wire Wire Line
	1650 2100 1650 2000
Wire Wire Line
	1650 1900 3100 1900
Connection ~ 1650 1900
Text Label 4200 1600 0    50   ~ 0
VIN_FILT
Text HLabel 4200 1900 2    50   Output ~ 0
GND
Text HLabel 7500 1600 2    50   Output ~ 0
12V0
$Comp
L power-azonenberg:E36SC12009NRFA U52
U 1 1 611D31C4
P 5350 2050
F 0 "U52" H 5825 2725 50  0000 C CNN
F 1 "E36SC12009NRFA" H 5825 2634 50  0000 C CNN
F 2 "azonenberg_pcb:MODULE_DCDC_DOSA_EIGHTHBRICK" H 5350 2050 50  0001 C CNN
F 3 "" H 5350 2050 50  0001 C CNN
	1    5350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1600 4550 1600
Text Label 5250 1700 2    50   ~ 0
GND
Text Label 6400 2000 0    50   ~ 0
GND
Wire Wire Line
	6400 1900 6400 2000
Text Notes 5350 950  0    50   ~ 0
Expected efficiency @ 48V in is ~~93%.\nAssuming 7.3A load, we'll dissipate a bit under 7W in this module.\nOvercurrent shutdown at around 11A\nConverter is isolated, but in/out ground are connected\nsince we don't actually need isolation.
Text Label 4550 2000 0    50   ~ 0
GND
NoConn ~ 5250 1900
$Comp
L device:CP1 C106
U 1 1 611F0163
P 4550 1750
F 0 "C106" H 4665 1796 50  0000 L CNN
F 1 "100 uF 63V" H 4665 1705 50  0000 L CNN
F 2 "azonenberg_pcb:CAP_AL_10MM_SMT" H 4550 1750 50  0001 C CNN
F 3 "" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
Connection ~ 4550 1600
Wire Wire Line
	4550 1600 5250 1600
Wire Wire Line
	4550 1900 4550 2000
Text Notes 4500 2650 0    50   ~ 0
Hard power switch (back side)
$Comp
L Switch:SW_SPST SW2
U 1 1 61205A23
P 4700 2500
F 0 "SW2" H 4700 2735 50  0000 C CNN
F 1 "SW_SPST" H 4700 2644 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x2" H 4700 2500 50  0001 C CNN
F 3 "" H 4700 2500 50  0001 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
Text Label 4500 2500 2    50   ~ 0
GND
Text Label 5250 2500 0    50   ~ 0
12V0_ON_N
Wire Wire Line
	5250 2500 4900 2500
Wire Wire Line
	5250 2500 5250 2000
$Comp
L device:CP1 C282
U 1 1 61210D30
P 6900 1750
F 0 "C282" H 7015 1796 50  0000 L CNN
F 1 "100 uF 25V" H 7015 1705 50  0000 L CNN
F 2 "azonenberg_pcb:CAP_AL_6.3MM_SMT" H 6900 1750 50  0001 C CNN
F 3 "" H 6900 1750 50  0001 C CNN
	1    6900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1600 6400 1600
Wire Wire Line
	6400 1900 6900 1900
Connection ~ 6400 1900
Text Notes 1600 3150 0    50   ~ 0
5V standby rail is just used to drive enable lines for DC-DC's\nDoesn't need high current
$Comp
L power-azonenberg:MCP1755S-DFN U?
U 1 1 61463D9C
P 2150 3700
AR Path="/5EDD7150/61463D9C" Ref="U?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61463D9C" Ref="U56"  Part="1" 
F 0 "U56" H 2425 4175 50  0000 C CNN
F 1 "MCP1755S-DFN" H 2425 4084 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_2x3MM_TALL" H 2150 3700 50  0001 C CNN
F 3 "" H 2150 3700 50  0001 C CNN
	1    2150 3700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 61463DA2
P 1300 3600
AR Path="/5EDD7150/61463DA2" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61463DA2" Ref="C323"  Part="1" 
F 0 "C323" H 1415 3646 50  0000 L CNN
F 1 "4.7 uF 25V" H 1415 3555 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 1338 3450 50  0001 C CNN
F 3 "" H 1300 3600 50  0001 C CNN
	1    1300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3750 1950 3650
Connection ~ 1950 3650
Wire Wire Line
	1950 3650 1950 3550
Wire Wire Line
	1300 3450 1950 3450
Wire Wire Line
	1300 3750 1950 3750
$Comp
L device:C C?
U 1 1 61463DAD
P 2900 3600
AR Path="/5EDD7150/61463DAD" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61463DAD" Ref="C324"  Part="1" 
F 0 "C324" H 3015 3646 50  0000 L CNN
F 1 "1 uF" H 3015 3555 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 2938 3450 50  0001 C CNN
F 3 "" H 2900 3600 50  0001 C CNN
	1    2900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3450 2900 3450
Connection ~ 2900 3450
Text Label 1300 3750 2    50   ~ 0
GND
Connection ~ 1950 3750
Wire Wire Line
	2900 3750 1950 3750
Text Label 1300 3450 2    50   ~ 0
12V0
Text HLabel 3250 3450 2    50   Output ~ 0
5V0_SB
Text HLabel 5350 4650 2    50   Output ~ 0
3V3_SB
$Comp
L power-azonenberg:OKL-T_3-W12P-C U?
U 1 1 6160E9F5
P 2150 5100
AR Path="/5EDD7150/61296AEB/6160E9F5" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6160E9F5" Ref="U?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/6160E9F5" Ref="U60"  Part="1" 
F 0 "U60" H 2525 5997 60  0000 C CNN
F 1 "OKL-T/3-W12P-C" H 2525 5891 60  0000 C CNN
F 2 "azonenberg_pcb:MODULE_MURATA_OKL-T3-W12" H 2150 5000 60  0001 C CNN
F 3 "" H 2150 5000 60  0001 C CNN
	1    2150 5100
	1    0    0    -1  
$EndComp
Text Label 1950 4650 2    50   ~ 0
GND
Wire Wire Line
	1950 4650 1950 4750
$Comp
L device:R R?
U 1 1 6160E9FE
P 1650 5050
AR Path="/5EDD7150/61296AEB/6160E9FE" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6160E9FE" Ref="R?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/6160E9FE" Ref="R171"  Part="1" 
F 0 "R171" V 1600 4800 50  0000 C CNN
F 1 "2.2K 1%" V 1750 5050 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 1580 5050 50  0001 C CNN
F 3 "" H 1650 5050 50  0001 C CNN
	1    1650 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 5050 1950 5050
Text Label 1200 5050 2    50   ~ 0
GND
Wire Wire Line
	1200 5050 1500 5050
$Comp
L device:C C?
U 1 1 6160EA07
P 1200 4700
AR Path="/5EDD7150/6160EA07" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/6160EA07" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6160EA07" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/6160EA07" Ref="C339"  Part="1" 
F 0 "C339" H 1315 4746 50  0000 L CNN
F 1 "22 uF 25V" H 1315 4655 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_1210_CAP_NOSILK" H 1238 4550 50  0001 C CNN
F 3 "" H 1200 4700 50  0001 C CNN
	1    1200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4850 1200 5050
Wire Wire Line
	1950 4550 1200 4550
$Comp
L device:C C?
U 1 1 6160EA0F
P 3400 4800
AR Path="/5EDD7150/6160EA0F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/6160EA0F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6160EA0F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/6160EA0F" Ref="C340"  Part="1" 
F 0 "C340" H 3515 4846 50  0000 L CNN
F 1 "22 uF" H 3515 4755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 3438 4650 50  0001 C CNN
F 3 "" H 3400 4800 50  0001 C CNN
	1    3400 4800
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 6160EA15
P 3850 4800
AR Path="/5EDD7150/6160EA15" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/6160EA15" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6160EA15" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/6160EA15" Ref="C341"  Part="1" 
F 0 "C341" H 3965 4846 50  0000 L CNN
F 1 "DNP" H 3965 4755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_1206_CAP_NOSILK" H 3888 4650 50  0001 C CNN
F 3 "" H 3850 4800 50  0001 C CNN
	1    3850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4650 3400 4650
Connection ~ 3400 4650
Wire Wire Line
	3400 4650 3100 4650
Text Label 3200 4950 2    50   ~ 0
GND
Wire Wire Line
	3200 4950 3400 4950
Connection ~ 3400 4950
Wire Wire Line
	3400 4950 3850 4950
Text Label 1950 4950 2    50   ~ 0
12V0
Text Label 1200 4550 2    50   ~ 0
12V0
Text Label 1950 4450 2    50   ~ 0
12V0
$Comp
L Connector:Conn_01x01 TP2
U 1 1 6160F22C
P 4050 4450
F 0 "TP2" H 4130 4492 50  0000 L CNN
F 1 "TESTPAD" H 4130 4401 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 4050 4450 50  0001 C CNN
F 3 "~" H 4050 4450 50  0001 C CNN
	1    4050 4450
	1    0    0    -1  
$EndComp
Text Label 3100 4450 0    50   ~ 0
3V3_SB_GOOD
Wire Wire Line
	3100 4450 3750 4450
$Comp
L device:R R?
U 1 1 616109B8
P 3750 4300
AR Path="/5EDD7150/61296AEB/616109B8" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/616109B8" Ref="R?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/616109B8" Ref="R172"  Part="1" 
F 0 "R172" V 3700 4050 50  0000 C CNN
F 1 "10K" V 3750 4300 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3680 4300 50  0001 C CNN
F 3 "" H 3750 4300 50  0001 C CNN
	1    3750 4300
	-1   0    0    1   
$EndComp
Connection ~ 3750 4450
Wire Wire Line
	3750 4450 3850 4450
Text Label 3750 4150 2    50   ~ 0
5V0_SB
$Comp
L special-azonenberg:INA226 U?
U 1 1 61C7EC99
P 8650 4400
AR Path="/5EDD723A/5F0BA462/61C7EC99" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61C7EC99" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61C7EC99" Ref="U?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61C7EC99" Ref="U79"  Part="1" 
F 0 "U79" H 8550 4050 60  0000 C CNN
F 1 "INA233" H 8950 4050 60  0000 C CNN
F 2 "azonenberg_pcb:SOP_10_0.5MM_3MM" H 8650 4400 60  0001 C CNN
F 3 "" H 8650 4400 60  0000 C CNN
	1    8650 4400
	1    0    0    -1  
$EndComp
Text Label 9400 4500 0    50   ~ 0
GND
Text Label 9400 4600 0    50   ~ 0
3V3_SB
Text Label 7850 4200 2    50   ~ 0
I2C2_SDA
Text Label 7850 4300 2    50   ~ 0
I2C2_SDA
Text Notes 8150 4800 0    50   ~ 0
8'h94
Text Notes 6450 4300 0    50   ~ 0
12 mR = 18 mV @ 1.5A\n208.333 uA/LSB
Text Label 9400 4200 0    50   ~ 0
3V3_SB_SENSE_HI
Text Label 9400 4300 0    50   ~ 0
3V3_SB_SENSE_LO
Text Label 9400 4400 0    50   ~ 0
3V3_SB
$Comp
L passive-azonenberg:R-4TERM R?
U 1 1 61C8039F
P 5050 4600
AR Path="/5EDD7150/61580EA1/61C8039F" Ref="R?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61C8039F" Ref="R205"  Part="1" 
F 0 "R205" V 4764 4600 50  0000 C CNN
F 1 "LVK12R012FER" V 4855 4600 50  0000 C CNN
F 2 "azonenberg_pcb:OHMITE_LVK12" H 5050 4600 60  0001 C CNN
F 3 "" H 5050 4600 60  0000 C CNN
	1    5050 4600
	0    1    1    0   
$EndComp
$Comp
L device:C C?
U 1 1 61C862C2
P 10600 4350
AR Path="/5EDD7150/61C862C2" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61C862C2" Ref="C403"  Part="1" 
F 0 "C403" H 10715 4396 50  0000 L CNN
F 1 "0.47 uF" H 10715 4305 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 10638 4200 50  0001 C CNN
F 3 "" H 10600 4350 50  0001 C CNN
	1    10600 4350
	1    0    0    -1  
$EndComp
Text Label 10600 4200 0    50   ~ 0
3V3_SB
Text Label 10600 4500 0    50   ~ 0
GND
Text Label 3100 4550 0    50   ~ 0
3V3_SB
Wire Wire Line
	4750 4650 3850 4650
Connection ~ 3850 4650
Text Label 4750 4250 0    50   ~ 0
3V3_SB_SENSE_HI
Wire Wire Line
	4750 4250 4750 4550
Text Label 5350 4550 0    50   ~ 0
3V3_SB_SENSE_LO
$Comp
L special-azonenberg:INA226 U?
U 1 1 61CB85B9
P 8650 3250
AR Path="/5EDD723A/5F0BA462/61CB85B9" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61CB85B9" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61CB85B9" Ref="U?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61CB85B9" Ref="U84"  Part="1" 
F 0 "U84" H 8550 2900 60  0000 C CNN
F 1 "INA233" H 8950 2900 60  0000 C CNN
F 2 "azonenberg_pcb:SOP_10_0.5MM_3MM" H 8650 3250 60  0001 C CNN
F 3 "" H 8650 3250 60  0000 C CNN
	1    8650 3250
	1    0    0    -1  
$EndComp
Text Label 9400 3350 0    50   ~ 0
GND
Text Label 9400 3450 0    50   ~ 0
3V3_SB
Text Label 7850 3050 2    50   ~ 0
I2C2_SDA
Text Label 7850 3150 2    50   ~ 0
I2C2_SCL
Text HLabel 7850 3350 0    50   BiDi ~ 0
I2C2_SDA
Text HLabel 7850 3450 0    50   Input ~ 0
I2C2_SCL
Text Notes 8150 3650 0    50   ~ 0
8'h96
Text Label 9400 3050 0    50   ~ 0
12V0_SENSE_HI
Text Label 9400 3150 0    50   ~ 0
12V0_SENSE_LO
Text Label 9400 3250 0    50   ~ 0
12V0
$Comp
L device:C C?
U 1 1 61CB85CF
P 10600 3200
AR Path="/5EDD7150/61CB85CF" Ref="C?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61CB85CF" Ref="C408"  Part="1" 
F 0 "C408" H 10715 3246 50  0000 L CNN
F 1 "0.47 uF" H 10715 3155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 10638 3050 50  0001 C CNN
F 3 "" H 10600 3200 50  0001 C CNN
	1    10600 3200
	1    0    0    -1  
$EndComp
Text Label 10600 3050 0    50   ~ 0
3V3_SB
Text Label 10600 3350 0    50   ~ 0
GND
Text Notes 6450 3150 0    50   ~ 0
2 mR = 16 mV @ 8A\n1.25 mA/LSB
$Comp
L passive-azonenberg:R-4TERM R?
U 1 1 61CBB686
P 7200 1550
AR Path="/5EDD7150/61580EA1/61CBB686" Ref="R?"  Part="1" 
AR Path="/5EDD7150/611CBEBF/61CBB686" Ref="R206"  Part="1" 
F 0 "R206" V 6914 1550 50  0000 C CNN
F 1 "LVK25R002FER" V 7005 1550 50  0000 C CNN
F 2 "azonenberg_pcb:OHMITE_LVK25" H 7200 1550 60  0001 C CNN
F 3 "" H 7200 1550 60  0000 C CNN
	1    7200 1550
	0    1    1    0   
$EndComp
Text Label 6400 1700 0    50   ~ 0
12V0
Connection ~ 6900 1600
Text Label 6900 1100 0    50   ~ 0
12V0_SENSE_HI
Wire Wire Line
	6900 1100 6900 1500
Text Label 7500 1500 0    50   ~ 0
12V0_SENSE_LO
NoConn ~ 7850 4400
NoConn ~ 7850 3250
Text Label 7850 4500 2    50   ~ 0
I2C2_SDA
Text Label 7850 4600 2    50   ~ 0
I2C2_SCL
$EndSCHEMATC
