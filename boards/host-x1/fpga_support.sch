EESchema Schematic File Version 2
LIBS:conn
LIBS:device
LIBS:analog-azonenberg
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:host-x1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "STARSHIPRAIDER Single-Lane Host"
Date "2017-05-06"
Rev "0.1"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L XILINX_JTAG J2
U 1 1 590BFC2E
P 8650 2150
F 0 "J2" H 9369 2858 60  0000 L CNN
F 1 "XILINX_JTAG" H 9369 2752 60  0000 L CNN
F 2 "" H 8650 2150 60  0000 C CNN
F 3 "" H 8650 2150 60  0000 C CNN
	1    8650 2150
	1    0    0    -1  
$EndComp
$Comp
L XC7AxT-xFTG256x U?
U 3 1 590C057F
P 1900 6700
AR Path="/590BFAB4/590C057F" Ref="U?"  Part="6" 
AR Path="/590BFAE6/590C057F" Ref="U2"  Part="3" 
F 0 "U2" H 3369 9208 60  0000 L CNN
F 1 "XC7A100T-1FTG256C" H 3369 9102 60  0000 L CNN
F 2 "" H 1900 6700 60  0000 C CNN
F 3 "" H 1900 6700 60  0000 C CNN
	3    1900 6700
	1    0    0    -1  
$EndComp
$Comp
L XC7AxT-xFTG256x U?
U 1 1 590C06F1
P 5300 6650
AR Path="/590BFAB4/590C06F1" Ref="U?"  Part="6" 
AR Path="/590BFAE6/590C06F1" Ref="U2"  Part="1" 
F 0 "U2" H 6678 9153 60  0000 L CNN
F 1 "XC7A100T-1FTG256C" H 6678 9047 60  0000 L CNN
F 2 "" H 5300 6650 60  0000 C CNN
F 3 "" H 5300 6650 60  0000 C CNN
	1    5300 6650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
