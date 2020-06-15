EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 14
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
L xilinx-azonenberg:XILINX_JTAG J?
U 1 1 5EFC9A56
P 1050 2150
F 0 "J?" H 1769 2858 60  0000 L CNN
F 1 "XILINX_JTAG" H 1769 2752 60  0000 L CNN
F 2 "" H 1050 2150 60  0000 C CNN
F 3 "" H 1050 2150 60  0000 C CNN
	1    1050 2150
	1    0    0    -1  
$EndComp
$Comp
L xilinx-azonenberg:XC7KxT-FFG676 U?
U 7 1 5EFD244D
P 2550 7450
AR Path="/5EDD71F2/5EFD244D" Ref="U?"  Part="9" 
AR Path="/5EF1FA37/5EFD244D" Ref="U?"  Part="7" 
F 0 "U?" H 2550 7400 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 2550 7300 50  0000 L CNN
F 2 "" H 2550 7450 50  0001 C CNN
F 3 "" H 2550 7450 50  0001 C CNN
	7    2550 7450
	1    0    0    -1  
$EndComp
$Comp
L memory-azonenberg:W25Q80BV U?
U 1 1 5EFDEE77
P 6200 3500
F 0 "U?" H 6200 4187 60  0000 C CNN
F 1 "S25FL128LAGNFV010" H 6200 4081 60  0000 C CNN
F 2 "" H 6200 3500 60  0000 C CNN
F 3 "" H 6200 3500 60  0000 C CNN
	1    6200 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
