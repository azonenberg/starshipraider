EESchema Schematic File Version 4
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "STARSHIPRAIDER I/O Characterization"
Date "2018-08-15"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L iob-characterization-v02-rescue:24Cxx-DFN8 U?
U 1 1 5B932A67
P 3350 2700
AR Path="/5B932A67" Ref="U?"  Part="1" 
AR Path="/5B92BCA2/5B932A67" Ref="U13"  Part="1" 
F 0 "U13" H 3750 3497 60  0000 C CNN
F 1 "AT24C04" H 3750 3391 60  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_2x3MM" H 3750 3000 60  0001 C CNN
F 3 "" H 3750 3000 60  0000 C CNN
	1    3350 2700
	1    0    0    -1  
$EndComp
Text Notes 3350 2900 0    60   ~ 0
Descriptor EEPROM\nAddress = 8'ha0
Wire Wire Line
	3150 2450 3050 2450
Wire Wire Line
	3050 2250 3050 2450
Wire Wire Line
	3050 2550 3150 2550
Wire Wire Line
	2500 2650 3050 2650
Connection ~ 3050 2550
Wire Wire Line
	2900 2250 3050 2250
Connection ~ 3050 2450
Text Label 2900 2250 2    60   ~ 0
GND
Connection ~ 3050 2250
Wire Wire Line
	2500 2150 3150 2150
Wire Wire Line
	4500 2150 4350 2150
Wire Wire Line
	4500 2250 4350 2250
Text Label 4500 2450 0    60   ~ 0
3V3
Wire Wire Line
	4500 2450 4350 2450
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B932A80
P 2500 2500
AR Path="/5B932A80" Ref="C?"  Part="1" 
AR Path="/5B92BCA2/5B932A80" Ref="C9"  Part="1" 
F 0 "C9" H 2615 2546 50  0000 L CNN
F 1 "0.47 uF" H 2615 2455 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2538 2350 50  0001 C CNN
F 3 "" H 2500 2500 50  0000 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
Connection ~ 3050 2650
Wire Wire Line
	2500 2150 2500 2350
$Comp
L iob-characterization-v02-rescue:PCA9306 U?
U 1 1 5B932A89
P 3350 3850
AR Path="/5B932A89" Ref="U?"  Part="1" 
AR Path="/5B92BCA2/5B932A89" Ref="U14"  Part="1" 
F 0 "U14" H 3725 4647 60  0000 C CNN
F 1 "PCA9306" H 3725 4541 60  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.35MM_1x1.4MM" H 3600 3850 60  0001 C CNN
F 3 "" H 3600 3850 60  0001 C CNN
	1    3350 3850
	1    0    0    -1  
$EndComp
Text Notes 3350 4050 0    60   ~ 0
I2C level shifter\nfor 5V analog devices
Text Label 2500 3300 2    60   ~ 0
3V3
Wire Wire Line
	2500 3300 3150 3300
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B932A93
P 4750 3350
AR Path="/5B932A93" Ref="C?"  Part="1" 
AR Path="/5B92BCA2/5B932A93" Ref="C11"  Part="1" 
F 0 "C11" H 4865 3396 50  0000 L CNN
F 1 "0.47 uF" H 4865 3305 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4788 3200 50  0001 C CNN
F 3 "" H 4750 3350 50  0000 C CNN
	1    4750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3600 2950 3600
Wire Wire Line
	2950 3600 2950 3400
Wire Wire Line
	2950 3400 3150 3400
Text Label 3050 3700 2    60   ~ 0
I2C_SCL
Text Label 3050 3800 2    60   ~ 0
I2C_SDA
Wire Wire Line
	3050 3700 3150 3700
Wire Wire Line
	3050 3800 3150 3800
Wire Wire Line
	4300 3300 4400 3300
Wire Wire Line
	4400 3300 4400 3500
Wire Wire Line
	4300 3500 4400 3500
Text Label 4400 3300 0    60   ~ 0
5V0
Connection ~ 4400 3500
Text Label 4750 3200 0    60   ~ 0
GND
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B932AA7
P 2500 3450
AR Path="/5B932AA7" Ref="C?"  Part="1" 
AR Path="/5B92BCA2/5B932AA7" Ref="C10"  Part="1" 
F 0 "C10" H 2615 3496 50  0000 L CNN
F 1 "0.47 uF" H 2615 3405 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2538 3300 50  0001 C CNN
F 3 "" H 2500 3450 50  0000 C CNN
	1    2500 3450
	1    0    0    -1  
$EndComp
Text Label 4400 3700 0    60   ~ 0
I2C_SCL_5V0
Wire Wire Line
	4300 3700 5400 3700
Text Label 4400 3800 0    60   ~ 0
I2C_SDA_5V0
Wire Wire Line
	4300 3800 5700 3800
Wire Wire Line
	7350 2050 7800 2050
Wire Wire Line
	7800 2050 7800 2250
Wire Wire Line
	7800 2250 7950 2250
Text Label 7350 2050 2    60   ~ 0
5V0
Connection ~ 7800 2050
Wire Wire Line
	7950 2350 7800 2350
Wire Wire Line
	7800 2350 7800 2450
Wire Wire Line
	7800 2450 7350 2450
Text Label 7350 2450 2    60   ~ 0
GND
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B932ABB
P 7350 2300
AR Path="/5B932ABB" Ref="C?"  Part="1" 
AR Path="/5B92BCA2/5B932ABB" Ref="C13"  Part="1" 
F 0 "C13" H 7465 2346 50  0000 L CNN
F 1 "0.47 uF" H 7465 2255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7388 2150 50  0001 C CNN
F 3 "" H 7350 2300 50  0000 C CNN
	1    7350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2050 7350 2150
Text Label 7800 2650 2    60   ~ 0
I2C_SDA_5V0
Text Label 7800 2750 2    60   ~ 0
I2C_SCL_5V0
Wire Wire Line
	7800 2750 7950 2750
Wire Wire Line
	7800 2650 7950 2650
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B932AC7
P 5400 3550
AR Path="/5B932AC7" Ref="R?"  Part="1" 
AR Path="/5B92BCA2/5B932AC7" Ref="R13"  Part="1" 
F 0 "R13" H 5470 3596 50  0000 L CNN
F 1 "4.7K" V 5400 3450 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5330 3550 50  0001 C CNN
F 3 "" H 5400 3550 50  0000 C CNN
	1    5400 3550
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:R R?
U 1 1 5B932ACF
P 5700 3650
AR Path="/5B932ACF" Ref="R?"  Part="1" 
AR Path="/5B92BCA2/5B932ACF" Ref="R14"  Part="1" 
F 0 "R14" H 5770 3696 50  0000 L CNN
F 1 "4.7K" V 5700 3550 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5630 3650 50  0001 C CNN
F 3 "" H 5700 3650 50  0000 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3400 5700 3400
Wire Wire Line
	5700 3400 5700 3500
Wire Wire Line
	9400 2250 9200 2250
Text Notes 8250 3100 0    60   ~ 0
Reference voltage\nfor input thresholds\nAddress = 8'hC0
$Comp
L iob-characterization-v02-rescue:LTC2451 U?
U 1 1 5B932ADB
P 8250 5700
AR Path="/5B932ADB" Ref="U?"  Part="1" 
AR Path="/5B92BCA2/5B932ADB" Ref="U17"  Part="1" 
F 0 "U17" H 8650 6597 60  0000 C CNN
F 1 "LTC2451" H 8650 6491 60  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_2x3MM" H 8250 5700 60  0001 C CNN
F 3 "" H 8250 5700 60  0001 C CNN
	1    8250 5700
	1    0    0    -1  
$EndComp
Text Notes 8250 6000 0    60   ~ 0
ADC for tracking\nexternal reference supply\nAddress = 8'h28
Text Label 9400 5050 0    60   ~ 0
I2C_SDA_5V0
Wire Wire Line
	9400 5050 9250 5050
Text Label 9400 5150 0    60   ~ 0
I2C_SCL_5V0
Wire Wire Line
	9400 5150 9250 5150
Text Label 6700 5050 2    60   ~ 0
5V0
Wire Wire Line
	6700 5050 6850 5050
Text Label 6700 5350 2    60   ~ 0
GND
Wire Wire Line
	6700 5350 6850 5350
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B932AEB
P 7350 5200
AR Path="/5B932AEB" Ref="C?"  Part="1" 
AR Path="/5B92BCA2/5B932AEB" Ref="C15"  Part="1" 
F 0 "C15" H 7465 5246 50  0000 L CNN
F 1 "0.1 uF" H 7465 5155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7388 5050 50  0001 C CNN
F 3 "" H 7350 5200 50  0000 C CNN
	1    7350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5150 7950 5150
Wire Wire Line
	7950 5150 7950 5250
Connection ~ 7950 5350
Wire Wire Line
	8050 5250 7950 5250
Connection ~ 7950 5250
Text Label 7950 5550 2    60   ~ 0
5V0
Wire Wire Line
	7950 5550 8050 5550
Text Label 7950 5650 2    60   ~ 0
GND
Wire Wire Line
	7950 5650 8050 5650
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B932AFB
P 6850 5200
AR Path="/5B932AFB" Ref="C?"  Part="1" 
AR Path="/5B92BCA2/5B932AFB" Ref="C12"  Part="1" 
F 0 "C12" H 6965 5246 50  0000 L CNN
F 1 "10 uF" H 6965 5155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 6888 5050 50  0001 C CNN
F 3 "" H 6850 5200 50  0000 C CNN
	1    6850 5200
	1    0    0    -1  
$EndComp
Connection ~ 7350 5050
Connection ~ 7350 5350
Connection ~ 6850 5350
Connection ~ 6850 5050
$Comp
L iob-characterization-v02-rescue:MCP4726_SOT23 U?
U 1 1 5B932B06
P 8250 2800
AR Path="/5B932B06" Ref="U?"  Part="1" 
AR Path="/5B92BCA2/5B932B06" Ref="U15"  Part="1" 
F 0 "U15" H 8575 3797 60  0000 C CNN
F 1 "MCP4726A0" H 8575 3691 60  0000 C CNN
F 2 "azonenberg_pcb:SOT23_6" H 8200 2550 60  0001 C CNN
F 3 "" H 8200 2550 60  0001 C CNN
	1    8250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3500 7800 3500
Wire Wire Line
	7800 3500 7800 3700
Wire Wire Line
	7800 3700 7950 3700
Text Label 7350 3500 2    60   ~ 0
5V0
Connection ~ 7800 3500
Wire Wire Line
	7950 3800 7800 3800
Wire Wire Line
	7800 3800 7800 3900
Wire Wire Line
	7800 3900 7350 3900
Text Label 7350 3900 2    60   ~ 0
GND
$Comp
L iob-characterization-v02-rescue:C C?
U 1 1 5B932B16
P 7350 3750
AR Path="/5B932B16" Ref="C?"  Part="1" 
AR Path="/5B92BCA2/5B932B16" Ref="C14"  Part="1" 
F 0 "C14" H 7465 3796 50  0000 L CNN
F 1 "0.47 uF" H 7465 3705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7388 3600 50  0001 C CNN
F 3 "" H 7350 3750 50  0000 C CNN
	1    7350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3500 7350 3600
Text Label 7800 4100 2    60   ~ 0
I2C_SDA_5V0
Text Label 7800 4200 2    60   ~ 0
I2C_SCL_5V0
Wire Wire Line
	7800 4200 7950 4200
Wire Wire Line
	7800 4100 7950 4100
Wire Wire Line
	9400 3700 9200 3700
Text Notes 8250 4550 0    60   ~ 0
Reference voltage\nfor output drivers\nAddress = 8'hC2
$Comp
L iob-characterization-v02-rescue:MCP4726_SOT23 U?
U 1 1 5B932B25
P 8250 4250
AR Path="/5B932B25" Ref="U?"  Part="1" 
AR Path="/5B92BCA2/5B932B25" Ref="U16"  Part="1" 
F 0 "U16" H 8575 5247 60  0000 C CNN
F 1 "MCP4726A1" H 8575 5141 60  0000 C CNN
F 2 "azonenberg_pcb:SOT23_6" H 8200 4000 60  0001 C CNN
F 3 "" H 8200 4000 60  0001 C CNN
	1    8250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2550 3050 2650
Wire Wire Line
	3050 2450 3050 2550
Wire Wire Line
	3050 2250 3150 2250
Wire Wire Line
	3050 2650 3150 2650
Wire Wire Line
	4400 3500 4750 3500
Wire Wire Line
	7800 2050 7950 2050
Wire Wire Line
	7950 5350 8050 5350
Wire Wire Line
	7950 5250 7950 5350
Wire Wire Line
	7350 5050 8050 5050
Wire Wire Line
	7350 5350 7950 5350
Wire Wire Line
	6850 5350 7350 5350
Wire Wire Line
	6850 5050 7350 5050
Wire Wire Line
	7800 3500 7950 3500
Wire Wire Line
	9400 5350 9250 5350
Text HLabel 2500 2150 0    60   Input ~ 0
3V3
Text HLabel 4500 2150 2    60   Input ~ 0
I2C_SCL
Text HLabel 4500 2250 2    60   BiDi ~ 0
I2C_SDA
Text HLabel 2400 3600 0    60   Input ~ 0
GND
Wire Wire Line
	2400 3600 2500 3600
Connection ~ 2500 3600
Text HLabel 5700 3400 2    60   Input ~ 0
5V0
Text HLabel 9400 2250 2    60   Output ~ 0
VREF
Text HLabel 9400 3700 2    60   Output ~ 0
VCCO_REF
Text HLabel 9400 5350 2    60   Input ~ 0
VCCO_EXT_REF
$EndSCHEMATC
