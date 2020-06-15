EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 14
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
L xilinx-azonenberg:XC7Sx-FTGB196 U?
U 1 1 5F071369
P 1600 6100
AR Path="/5F049B6D/5F071369" Ref="U?"  Part="1" 
AR Path="/5EDD723A/5F297DD1/5F071369" Ref="U?"  Part="1" 
F 0 "U?" H 2350 11475 50  0000 C CNN
F 1 "XC7S6-1FTGB196C" H 2350 11384 50  0000 C CNN
F 2 "" H 1600 6100 50  0001 C CNN
F 3 "" H 1600 6100 50  0001 C CNN
	1    1600 6100
	1    0    0    -1  
$EndComp
$Comp
L xilinx-azonenberg:XC7Sx-FTGB196 U?
U 2 1 5F074FFE
P 4000 6100
AR Path="/5F049B6D/5F074FFE" Ref="U?"  Part="2" 
AR Path="/5EDD723A/5F297DD1/5F074FFE" Ref="U?"  Part="2" 
F 0 "U?" H 4475 8275 50  0000 C CNN
F 1 "XC7S6-1FTGB196C" H 4475 8184 50  0000 C CNN
F 2 "" H 4000 6100 50  0001 C CNN
F 3 "" H 4000 6100 50  0001 C CNN
	2    4000 6100
	1    0    0    -1  
$EndComp
$Comp
L memory-azonenberg:W25Q80BV U?
U 1 1 5F07A610
P 6850 4750
AR Path="/5F049B6D/5F07A610" Ref="U?"  Part="1" 
AR Path="/5EDD723A/5F297DD1/5F07A610" Ref="U?"  Part="1" 
F 0 "U?" H 6850 5437 60  0000 C CNN
F 1 "S25FL128LAGNFV010" H 6850 5331 60  0000 C CNN
F 2 "" H 6850 4750 60  0000 C CNN
F 3 "" H 6850 4750 60  0000 C CNN
	1    6850 4750
	1    0    0    -1  
$EndComp
Text HLabel 9250 3900 0    50   BiDi ~ 0
S7_QSPI_DQ0
Text HLabel 9250 4000 0    50   BiDi ~ 0
S7_QSPI_DQ1
Text HLabel 9250 4100 0    50   BiDi ~ 0
S7_QSPI_DQ2
Text HLabel 9250 4200 0    50   BiDi ~ 0
S7_QSPI_DQ3
Text HLabel 9250 4300 0    50   Input ~ 0
S7_QSPI_CS_N
$EndSCHEMATC
