EESchema Schematic File Version 4
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "STARSHIPRAIDER I/O Characterization"
Date "2018-08-17"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 "Output Level Shifters"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1250 2650 1350 2650
Wire Wire Line
	1250 3350 1350 3350
Wire Wire Line
	1250 1050 1350 1050
Wire Wire Line
	1250 1750 1350 1750
Wire Wire Line
	1350 1050 1350 1150
Wire Wire Line
	1350 1150 1450 1150
Connection ~ 1350 1050
Wire Wire Line
	1350 1750 1350 1850
Wire Wire Line
	1350 1850 1450 1850
Connection ~ 1350 1750
Wire Wire Line
	1450 2750 1350 2750
Wire Wire Line
	1350 2750 1350 2650
Connection ~ 1350 2650
Wire Wire Line
	1450 3450 1350 3450
Wire Wire Line
	1350 3450 1350 3350
Connection ~ 1350 3350
Wire Wire Line
	1250 1350 1450 1350
Wire Wire Line
	1250 2050 1450 2050
Text Notes 1650 2200 0    60   ~ 0
Low voltage output buffers
Text Notes 1650 3800 0    60   ~ 0
High voltage output buffers
Text Label 1250 2950 2    60   ~ 0
TXD0_3V3
Wire Wire Line
	1250 2950 1450 2950
Text Label 1250 3650 2    60   ~ 0
TXD1_3V3
Wire Wire Line
	1250 3650 1450 3650
Text Label 2600 1350 0    60   ~ 0
TXD0_LO
Wire Wire Line
	2600 1350 2400 1350
Text Label 2600 2050 0    60   ~ 0
TXD1_LO
Wire Wire Line
	2600 2050 2400 2050
Text Label 2600 1850 0    60   ~ 0
GND
Wire Wire Line
	2600 1850 2400 1850
Wire Wire Line
	2600 1150 2400 1150
Text Label 1250 1750 2    60   ~ 0
3V3
Text Label 1250 2650 2    60   ~ 0
3V3
Text Label 1250 3350 2    60   ~ 0
3V3
Wire Wire Line
	2600 1050 2400 1050
Text Label 2600 1750 0    60   ~ 0
VCCO_LO
Wire Wire Line
	2600 1750 2400 1750
Wire Wire Line
	2500 2650 2400 2650
Text Label 2500 2750 0    60   ~ 0
GND
Text Label 2500 2950 0    60   ~ 0
TXD0_HI
Wire Wire Line
	2500 2950 2400 2950
Wire Wire Line
	2500 2750 2400 2750
Text Label 2500 3350 0    60   ~ 0
VCCO_HI
Text Label 2500 3450 0    60   ~ 0
GND
Text Label 2500 3650 0    60   ~ 0
TXD1_HI
Wire Wire Line
	2500 3650 2400 3650
Wire Wire Line
	2400 3450 2500 3450
Wire Wire Line
	2500 3350 2400 3350
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B7E3DA7
P 3600 1150
AR Path="/5B7E3DA7" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5B7E3DA7" Ref="C1"  Part="1" 
F 0 "C1" H 3715 1196 50  0000 L CNN
F 1 "0.1 uF" H 3715 1105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0201_CAP_NOSILK" H 3638 1000 50  0001 C CNN
F 3 "" H 3600 1150 50  0000 C CNN
	1    3600 1150
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B7E3DAE
P 4150 1150
AR Path="/5B7E3DAE" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5B7E3DAE" Ref="C5"  Part="1" 
F 0 "C5" H 4265 1196 50  0000 L CNN
F 1 "0.1 uF" H 4265 1105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0201_CAP_NOSILK" H 4188 1000 50  0001 C CNN
F 3 "" H 4150 1150 50  0000 C CNN
	1    4150 1150
	1    0    0    -1  
$EndComp
Text Label 4300 1000 0    60   ~ 0
VCCO_LO
Text Label 3600 1000 2    60   ~ 0
3V3
Text Label 3450 1300 2    60   ~ 0
GND
Wire Wire Line
	3450 1300 3600 1300
Connection ~ 3600 1300
Wire Wire Line
	4150 1000 4300 1000
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B7E3DBB
P 3600 1900
AR Path="/5B7E3DBB" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5B7E3DBB" Ref="C2"  Part="1" 
F 0 "C2" H 3715 1946 50  0000 L CNN
F 1 "0.1 uF" H 3715 1855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0201_CAP_NOSILK" H 3638 1750 50  0001 C CNN
F 3 "" H 3600 1900 50  0000 C CNN
	1    3600 1900
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B7E3DC2
P 4150 1900
AR Path="/5B7E3DC2" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5B7E3DC2" Ref="C6"  Part="1" 
F 0 "C6" H 4265 1946 50  0000 L CNN
F 1 "0.1 uF" H 4265 1855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0201_CAP_NOSILK" H 4188 1750 50  0001 C CNN
F 3 "" H 4150 1900 50  0000 C CNN
	1    4150 1900
	1    0    0    -1  
$EndComp
Text Label 4300 1750 0    60   ~ 0
VCCO_LO
Text Label 3600 1750 2    60   ~ 0
3V3
Text Label 3450 2050 2    60   ~ 0
GND
Wire Wire Line
	3450 2050 3600 2050
Connection ~ 3600 2050
Wire Wire Line
	4150 1750 4300 1750
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B7E3DCF
P 3600 2750
AR Path="/5B7E3DCF" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5B7E3DCF" Ref="C3"  Part="1" 
F 0 "C3" H 3715 2796 50  0000 L CNN
F 1 "0.1 uF" H 3715 2705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0201_CAP_NOSILK" H 3638 2600 50  0001 C CNN
F 3 "" H 3600 2750 50  0000 C CNN
	1    3600 2750
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B7E3DD6
P 4150 2750
AR Path="/5B7E3DD6" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5B7E3DD6" Ref="C7"  Part="1" 
F 0 "C7" H 4265 2796 50  0000 L CNN
F 1 "0.47 uF" H 4265 2705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4188 2600 50  0001 C CNN
F 3 "" H 4150 2750 50  0000 C CNN
	1    4150 2750
	1    0    0    -1  
$EndComp
Text Label 4300 2600 0    60   ~ 0
VCCO_HI
Text Label 3600 2600 2    60   ~ 0
3V3
Text Label 3450 2900 2    60   ~ 0
GND
Wire Wire Line
	3450 2900 3600 2900
Connection ~ 3600 2900
Wire Wire Line
	4150 2600 4300 2600
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B7E3DE3
P 3600 3500
AR Path="/5B7E3DE3" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5B7E3DE3" Ref="C4"  Part="1" 
F 0 "C4" H 3715 3546 50  0000 L CNN
F 1 "0.1 uF" H 3715 3455 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0201_CAP_NOSILK" H 3638 3350 50  0001 C CNN
F 3 "" H 3600 3500 50  0000 C CNN
	1    3600 3500
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B7E3DEA
P 4150 3500
AR Path="/5B7E3DEA" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5B7E3DEA" Ref="C8"  Part="1" 
F 0 "C8" H 4265 3546 50  0000 L CNN
F 1 "0.47 uF" H 4265 3455 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4188 3350 50  0001 C CNN
F 3 "" H 4150 3500 50  0000 C CNN
	1    4150 3500
	1    0    0    -1  
$EndComp
Text Label 4300 3350 0    60   ~ 0
VCCO_HI
Text Label 3600 3350 2    60   ~ 0
3V3
Text Label 3450 3650 2    60   ~ 0
GND
Wire Wire Line
	3450 3650 3600 3650
Connection ~ 3600 3650
Wire Wire Line
	4150 3350 4300 3350
Wire Wire Line
	1350 1050 1450 1050
Wire Wire Line
	1350 1750 1450 1750
Wire Wire Line
	1350 2650 1450 2650
Wire Wire Line
	1350 3350 1450 3350
Wire Wire Line
	3600 1300 4150 1300
Wire Wire Line
	3600 2050 4150 2050
Wire Wire Line
	3600 2900 4150 2900
Wire Wire Line
	3600 3650 4150 3650
Text HLabel 1250 1050 0    60   Input ~ 0
3V3
Text HLabel 1250 1350 0    60   Input ~ 0
TXD0_3V3
Text HLabel 1250 2050 0    60   Input ~ 0
TXD1_3V3
Text HLabel 2600 1150 2    60   Input ~ 0
GND
Text HLabel 2600 1050 2    60   Input ~ 0
VCCO_LO
Text HLabel 2500 2650 2    60   Input ~ 0
VCCO_HI
$Comp
L special-azonenberg:DG3257DN-T1-GE4 U7
U 1 1 5B85C870
P 5600 2200
F 0 "U7" H 5900 2925 50  0000 C CNN
F 1 "DG3257DN-T1-GE4" H 5900 2834 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_6_0.35MM_1x1MM" H 5600 2200 50  0001 C CNN
F 3 "" H 5600 2200 50  0001 C CNN
	1    5600 2200
	1    0    0    -1  
$EndComp
Text Label 5400 2000 2    60   ~ 0
TXD0_LO
Text Label 5400 2150 2    60   ~ 0
TXD0_HI
Text HLabel 9100 2150 2    60   Output ~ 0
TXD0
Wire Wire Line
	9000 2150 9100 2150
Wire Wire Line
	5500 2000 5400 2000
Wire Wire Line
	5400 2150 5500 2150
Text HLabel 5400 1700 0    60   Input ~ 0
5V0
Text HLabel 5400 1800 0    60   Input ~ 0
GND
Wire Wire Line
	5400 1800 5500 1800
Wire Wire Line
	5500 1700 5400 1700
$Comp
L special-azonenberg:DG3257DN-T1-GE4 U8
U 1 1 5B861AC9
P 5600 3150
F 0 "U8" H 5900 3875 50  0000 C CNN
F 1 "DG3257DN-T1-GE4" H 5900 3784 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_6_0.35MM_1x1MM" H 5600 3150 50  0001 C CNN
F 3 "" H 5600 3150 50  0001 C CNN
	1    5600 3150
	1    0    0    -1  
$EndComp
Text Label 5400 2950 2    60   ~ 0
TXD1_LO
Text Label 5400 3100 2    60   ~ 0
TXD1_HI
Text HLabel 9100 3100 2    60   Output ~ 0
TXD1
Wire Wire Line
	5500 2950 5400 2950
Wire Wire Line
	5400 3100 5500 3100
Wire Wire Line
	5400 2750 5500 2750
Wire Wire Line
	5500 2650 5400 2650
Text Label 5400 2650 2    60   ~ 0
5V0
Text Label 5400 2750 2    60   ~ 0
GND
Text HLabel 6400 1700 2    60   Input ~ 0
VCCO_IS_HI
Text Label 6400 2650 0    60   ~ 0
VCCO_IS_HI
Wire Wire Line
	6400 2650 6300 2650
Wire Wire Line
	6400 1700 6300 1700
Text Notes 5600 3250 0    60   ~ 0
Muxing for high vs low voltage
$Comp
L special-azonenberg:DG3257DN-T1-GE4 U9
U 1 1 5B96B555
P 8300 2200
F 0 "U9" H 8600 2925 50  0000 C CNN
F 1 "DG3257DN-T1-GE4" H 8600 2834 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_6_0.35MM_1x1MM" H 8300 2200 50  0001 C CNN
F 3 "" H 8300 2200 50  0001 C CNN
	1    8300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1800 8200 1800
Wire Wire Line
	8200 1700 8100 1700
Text Label 8100 1700 2    60   ~ 0
5V0
Text Label 8100 1800 2    60   ~ 0
GND
Wire Wire Line
	6300 2150 7400 2150
Wire Wire Line
	7400 2150 7400 2000
Wire Wire Line
	7400 2000 8200 2000
Text Label 6450 2150 0    60   ~ 0
TXD0_BEFORE_OE
$Comp
L special-azonenberg:DG3257DN-T1-GE4 U10
U 1 1 5B97064E
P 8300 3150
F 0 "U10" H 8600 3875 50  0000 C CNN
F 1 "DG3257DN-T1-GE4" H 8600 3784 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_6_0.35MM_1x1MM" H 8300 3150 50  0001 C CNN
F 3 "" H 8300 3150 50  0001 C CNN
	1    8300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2750 8200 2750
Wire Wire Line
	8200 2650 8100 2650
Text Label 8100 2650 2    60   ~ 0
5V0
Text Label 8100 2750 2    60   ~ 0
GND
Wire Wire Line
	7400 2950 8200 2950
Wire Wire Line
	6300 3100 7400 3100
Wire Wire Line
	7400 3100 7400 2950
Text Label 6450 3100 0    60   ~ 0
TXD1_BEFORE_OE
Text HLabel 9100 1700 2    60   Input ~ 0
OE0
Wire Wire Line
	9100 1700 9000 1700
Text HLabel 9100 2650 2    60   Input ~ 0
OE1
Wire Wire Line
	9100 2650 9000 2650
Wire Wire Line
	9100 3100 9000 3100
$Comp
L special-azonenberg:74AVCH1T45_DSBGA U3
U 1 1 5BA5320A
P 1650 1400
F 0 "U3" H 1925 1997 60  0000 C CNN
F 1 "74AVCH1T45_DSBGA" H 1925 1891 60  0000 C CNN
F 2 "azonenberg_pcb:BGA_6_1.5x0.9_0.5MM_TI_YZP" H 1650 1400 60  0001 C CNN
F 3 "" H 1650 1400 60  0001 C CNN
	1    1650 1400
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:74AVCH1T45_DSBGA U4
U 1 1 5BA53389
P 1650 2100
F 0 "U4" H 1925 2697 60  0000 C CNN
F 1 "74AVCH1T45_DSBGA" H 1925 2591 60  0000 C CNN
F 2 "azonenberg_pcb:BGA_6_1.5x0.9_0.5MM_TI_YZP" H 1650 2100 60  0001 C CNN
F 3 "" H 1650 2100 60  0001 C CNN
	1    1650 2100
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:74AVCH1T45_DSBGA U5
U 1 1 5BA534C8
P 1650 3000
F 0 "U5" H 1925 3597 60  0000 C CNN
F 1 "74LVC1T45_DSBGA" H 1925 3491 60  0000 C CNN
F 2 "azonenberg_pcb:BGA_6_1.5x0.9_0.5MM_TI_YZP" H 1650 3000 60  0001 C CNN
F 3 "" H 1650 3000 60  0001 C CNN
	1    1650 3000
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:74AVCH1T45_DSBGA U6
U 1 1 5BA568C9
P 1650 3700
F 0 "U6" H 1925 4297 60  0000 C CNN
F 1 "74LVC1T45_DSBGA" H 1925 4191 60  0000 C CNN
F 2 "azonenberg_pcb:BGA_6_1.5x0.9_0.5MM_TI_YZP" H 1650 3700 60  0001 C CNN
F 3 "" H 1650 3700 60  0001 C CNN
	1    1650 3700
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5BA598E0
P 5600 1050
AR Path="/5BA598E0" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5BA598E0" Ref="C21"  Part="1" 
F 0 "C21" H 5715 1096 50  0000 L CNN
F 1 "0.47 uF" H 5715 1005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5638 900 50  0001 C CNN
F 3 "" H 5600 1050 50  0000 C CNN
	1    5600 1050
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5BA59A70
P 6200 1050
AR Path="/5BA59A70" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5BA59A70" Ref="C22"  Part="1" 
F 0 "C22" H 6315 1096 50  0000 L CNN
F 1 "0.47 uF" H 6315 1005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6238 900 50  0001 C CNN
F 3 "" H 6200 1050 50  0000 C CNN
	1    6200 1050
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5BA59ABA
P 6800 1050
AR Path="/5BA59ABA" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5BA59ABA" Ref="C23"  Part="1" 
F 0 "C23" H 6915 1096 50  0000 L CNN
F 1 "0.47 uF" H 6915 1005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6838 900 50  0001 C CNN
F 3 "" H 6800 1050 50  0000 C CNN
	1    6800 1050
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5BA59B0C
P 7400 1050
AR Path="/5BA59B0C" Ref="C?"  Part="1" 
AR Path="/5B7C6983/5BA59B0C" Ref="C24"  Part="1" 
F 0 "C24" H 7515 1096 50  0000 L CNN
F 1 "0.47 uF" H 7515 1005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7438 900 50  0001 C CNN
F 3 "" H 7400 1050 50  0000 C CNN
	1    7400 1050
	1    0    0    -1  
$EndComp
Text Label 5600 900  2    60   ~ 0
5V0
Text Label 5600 1200 2    60   ~ 0
GND
Wire Wire Line
	5600 1200 6200 1200
Connection ~ 6200 1200
Wire Wire Line
	6200 1200 6800 1200
Connection ~ 6800 1200
Wire Wire Line
	6800 1200 7400 1200
Wire Wire Line
	5600 900  6200 900 
Connection ~ 6200 900 
Wire Wire Line
	6200 900  6800 900 
Connection ~ 6800 900 
Wire Wire Line
	6800 900  7400 900 
NoConn ~ 8200 3100
NoConn ~ 8200 2150
$EndSCHEMATC
