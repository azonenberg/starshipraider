EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 15
Title "MAXWELL Main Board"
Date "2020-06-17"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L xilinx-azonenberg:XC7KxT-FFG676 U?
U 12 1 5F02CCC7
P 2400 6000
AR Path="/5EDD71F2/5F02CCC7" Ref="U?"  Part="9" 
AR Path="/5EDDB439/5F02CCC7" Ref="U2"  Part="12" 
F 0 "U2" H 2400 5950 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 2400 5850 50  0000 L CNN
F 2 "" H 2400 6000 50  0001 C CNN
F 3 "" H 2400 6000 50  0001 C CNN
	12   2400 6000
	1    0    0    -1  
$EndComp
Text HLabel 1400 1800 0    50   Input ~ 0
XG_REFCLK_P
Text HLabel 1400 1900 0    50   Input ~ 0
XG_REFCLK_N
Text Notes 7950 2250 0    50   ~ 0
TODO: actual QSFP cage
$EndSCHEMATC
