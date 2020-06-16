EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 15
Title "MAXWELL Main Board"
Date "2020-06-15"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L special-azonenberg:KSZ9031RN U35
U 1 1 5F02EB8B
P 4350 5050
F 0 "U35" H 5175 8387 60  0000 C CNN
F 1 "KSZ9031RN" H 5175 8281 60  0000 C CNN
F 2 "" H 4350 5050 60  0000 C CNN
F 3 "" H 4350 5050 60  0000 C CNN
	1    4350 5050
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:BEL_FUSE_0826-1G1T-23-F J11
U 1 1 5F03017D
P 8800 4400
F 0 "J11" H 9278 5428 60  0000 L CNN
F 1 "BEL_FUSE_0826-1G1T-23-F" H 9278 5322 60  0000 L CNN
F 2 "" H 8800 4400 60  0000 C CNN
F 3 "" H 8800 4400 60  0000 C CNN
	1    8800 4400
	1    0    0    -1  
$EndComp
$Comp
L xilinx-azonenberg:XC7KxT-FFG676 U?
U 6 1 5F47F363
P 1450 6000
AR Path="/5EDD71F2/5F47F363" Ref="U?"  Part="9" 
AR Path="/5EF1FA37/5F47F363" Ref="U?"  Part="7" 
AR Path="/5EE2921B/5F47F363" Ref="U2"  Part="6" 
F 0 "U2" H 1450 5950 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 1450 5850 50  0000 L CNN
F 2 "" H 1450 6000 50  0001 C CNN
F 3 "" H 1450 6000 50  0001 C CNN
	6    1450 6000
	1    0    0    -1  
$EndComp
Text HLabel 1250 1150 0    50   BiDi ~ 0
K7_QSPI_DQ0
Text HLabel 1250 1250 0    50   BiDi ~ 0
K7_QSPI_DQ1
Text HLabel 1250 1350 0    50   BiDi ~ 0
K7_QSPI_DQ2
Text HLabel 1250 1450 0    50   BiDi ~ 0
K7_QSPI_DQ3
Text HLabel 1250 2150 0    50   BiDi ~ 0
K7_QSPI_CS_N
Text HLabel 1250 5550 0    50   Input ~ 0
EXT_TRIG_2_P
Text HLabel 1250 5650 0    50   Input ~ 0
EXT_TRIG_2_N
Text HLabel 1250 5750 0    50   Input ~ 0
SYNC_CLK_2_P
Text HLabel 1250 5850 0    50   Input ~ 0
SYNC_CLK_2_N
$Comp
L device:R R?
U 1 1 5F6E3E94
P 3450 6550
AR Path="/5EDD723A/5F6E3E94" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5F6E3E94" Ref="R33"  Part="1" 
F 0 "R33" V 3350 6550 50  0000 C CNN
F 1 "100" V 3450 6550 50  0000 C CNN
F 2 "" V 3380 6550 50  0001 C CNN
F 3 "" H 3450 6550 50  0001 C CNN
	1    3450 6550
	0    1    1    0   
$EndComp
Text Label 3300 6550 2    50   ~ 0
EXT_TRIG_2_P
Text Label 3600 6550 0    50   ~ 0
EXT_TRIG_2_N
$Comp
L device:R R?
U 1 1 5F6E3E9C
P 3450 6750
AR Path="/5EDD723A/5F6E3E9C" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5F6E3E9C" Ref="R34"  Part="1" 
F 0 "R34" V 3350 6750 50  0000 C CNN
F 1 "100" V 3450 6750 50  0000 C CNN
F 2 "" V 3380 6750 50  0001 C CNN
F 3 "" H 3450 6750 50  0001 C CNN
	1    3450 6750
	0    1    1    0   
$EndComp
Text Label 3300 6750 2    50   ~ 0
SYNC_CLK_2_P
Text Label 3600 6750 0    50   ~ 0
SYNC_CLK_2_N
Text Notes 3300 7000 0    50   ~ 0
Need external terminators\nsince these go to a VCCO=3.3V bank
Text HLabel 1400 6600 0    50   Input ~ 0
ETH_REFCLK
Text HLabel 4800 5950 0    50   Input ~ 0
3V3
Text HLabel 4800 6050 0    50   Input ~ 0
1V2
Text HLabel 4750 6150 0    50   Input ~ 0
GND
Text HLabel 1250 2250 0    50   Input ~ 0
K7_SPI_CS_N
Text HLabel 1250 2350 0    50   Input ~ 0
K7_SPI_MOSI
Text HLabel 1250 2450 0    50   Output ~ 0
K7_SPI_MISO
Text HLabel 1250 3350 0    50   Input ~ 0
K7_SPI_SCK
$EndSCHEMATC
