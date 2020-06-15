EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 15
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
L special-azonenberg:KSZ9031RN U?
U 1 1 5F02EB8B
P 4350 5050
F 0 "U?" H 5175 8387 60  0000 C CNN
F 1 "KSZ9031RN" H 5175 8281 60  0000 C CNN
F 2 "" H 4350 5050 60  0000 C CNN
F 3 "" H 4350 5050 60  0000 C CNN
	1    4350 5050
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:BEL_FUSE_0826-1G1T-23-F J?
U 1 1 5F03017D
P 8800 4400
F 0 "J?" H 9278 5428 60  0000 L CNN
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
AR Path="/5EE2921B/5F47F363" Ref="U?"  Part="6" 
F 0 "U?" H 1450 5950 50  0000 L CNN
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
$EndSCHEMATC
