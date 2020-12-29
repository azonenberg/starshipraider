EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L xilinx7:xc7s6cpga196 U?
U 1 1 5FFCB096
P 9200 2400
AR Path="/5FFCB096" Ref="U?"  Part="1" 
AR Path="/5FFBE8F7/5FFCB096" Ref="U?"  Part="1" 
F 0 "U?" H 10131 1753 60  0000 L CNN
F 1 "xc7s6cpga196" H 10131 1647 60  0000 L CNN
F 2 "" H 9400 2450 60  0001 L CNN
F 3 "" H 9400 2250 60  0001 L CNN
F 4 "xc7s6cpga196" H 9400 2150 60  0001 L CNN "desc"
F 5 "122-2240-ND" H 9200 2400 50  0001 C CNN "DPN"
	1    9200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3800 8600 3800
$Comp
L power:+3V3 #PWR?
U 1 1 5FFCB09D
P 8600 3800
AR Path="/5FFCB09D" Ref="#PWR?"  Part="1" 
AR Path="/5FFBE8F7/5FFCB09D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8600 3650 50  0001 C CNN
F 1 "+3V3" V 8615 3928 50  0000 L CNN
F 2 "" H 8600 3800 50  0001 C CNN
F 3 "" H 8600 3800 50  0001 C CNN
	1    8600 3800
	0    -1   -1   0   
$EndComp
$Comp
L Memory_Flash:W25Q32JVSS U?
U 1 1 5FFCB0A3
P 1900 1750
AR Path="/5FFCB0A3" Ref="U?"  Part="1" 
AR Path="/5FFBE8F7/5FFCB0A3" Ref="U?"  Part="1" 
F 0 "U?" H 2250 1400 50  0000 C CNN
F 1 "W25Q32JVSS" H 1500 2100 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 1900 1750 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 1900 1750 50  0001 C CNN
F 4 "W25Q32JVSSIQCT-ND" H 1900 1750 50  0001 C CNN "DPN"
	1    1900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2150 1900 2200
$Comp
L power:GND #PWR?
U 1 1 5FFCB0AA
P 1900 2200
AR Path="/5FFCB0AA" Ref="#PWR?"  Part="1" 
AR Path="/5FFBE8F7/5FFCB0AA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1900 1950 50  0001 C CNN
F 1 "GND" H 1905 2027 50  0000 C CNN
F 2 "" H 1900 2200 50  0001 C CNN
F 3 "" H 1900 2200 50  0001 C CNN
	1    1900 2200
	1    0    0    -1  
$EndComp
Text Label 9000 2400 2    50   ~ 0
CCLK
$Comp
L Device:R_Small R?
U 1 1 5FFCB0B4
P 8000 2900
AR Path="/5FFCB0B4" Ref="R?"  Part="1" 
AR Path="/5FFBE8F7/5FFCB0B4" Ref="R?"  Part="1" 
F 0 "R?" V 8200 2900 50  0000 C CNN
F 1 "10k" V 8100 2900 50  0000 C CNN
F 2 "" H 8000 2900 50  0001 C CNN
F 3 "~" H 8000 2900 50  0001 C CNN
	1    8000 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFCB0BA
P 7700 2900
AR Path="/5FFCB0BA" Ref="R?"  Part="1" 
AR Path="/5FFBE8F7/5FFCB0BA" Ref="R?"  Part="1" 
F 0 "R?" V 7900 2900 50  0000 C CNN
F 1 "10k" V 7800 2900 50  0000 C CNN
F 2 "" H 7700 2900 50  0001 C CNN
F 3 "~" H 7700 2900 50  0001 C CNN
	1    7700 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 2900 9200 2900
Wire Wire Line
	8900 3300 9200 3300
Text Label 8900 2900 2    50   ~ 0
INIT_B
Text Label 8900 3300 2    50   ~ 0
PROGRAM_B
$Comp
L xilinx7:xc7s6cpga196 U?
U 2 1 5FFCF626
P 3650 1250
AR Path="/5FFCF626" Ref="U?"  Part="2" 
AR Path="/5FFBE8F7/5FFCF626" Ref="U?"  Part="2" 
F 0 "U?" H 5381 -1197 60  0000 L CNN
F 1 "xc7s6cpga196" H 5381 -1303 60  0000 L CNN
F 2 "" H 3850 1300 60  0001 L CNN
F 3 "" H 3850 1100 60  0001 L CNN
F 4 "xc7s6cpga196" H 3850 1000 60  0001 L CNN "desc"
F 5 "122-2240-ND" H 3650 1250 50  0001 C CNN "DPN"
	2    3650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2400 9000 2400
Wire Wire Line
	1400 1850 1050 1850
Text Label 1050 1850 2    50   ~ 0
EMCCLK
Wire Wire Line
	2750 1450 3650 1450
Wire Wire Line
	2400 1550 3650 1550
Wire Wire Line
	2400 1650 2750 1650
Wire Wire Line
	2750 1650 2750 1450
Wire Wire Line
	2400 1850 3150 1850
Wire Wire Line
	2400 1950 3050 1950
Wire Wire Line
	3050 1950 3050 1650
Wire Wire Line
	3050 1650 3650 1650
Text Label 2400 1550 0    50   ~ 0
FLASH_D0
Text Label 2400 1650 0    50   ~ 0
FLASH_D1
Text Label 2400 1850 0    50   ~ 0
FLASH_D2
Text Label 2400 1950 0    50   ~ 0
FLASH_D3
Wire Wire Line
	1900 1350 1900 1100
$Comp
L power:+3V3 #PWR?
U 1 1 6003B72E
P 1900 1100
F 0 "#PWR?" H 1900 950 50  0001 C CNN
F 1 "+3V3" H 1915 1273 50  0000 C CNN
F 2 "" H 1900 1100 50  0001 C CNN
F 3 "" H 1900 1100 50  0001 C CNN
	1    1900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1650 1050 1650
Text Label 1050 1650 2    50   ~ 0
FLASH_CS
Wire Wire Line
	3650 2550 3300 2550
Text Label 3300 2550 2    50   ~ 0
FLASH_CS
Wire Wire Line
	3150 1850 3150 1750
Wire Wire Line
	3150 1750 3650 1750
Wire Wire Line
	3650 1850 3550 1850
Text Label 3550 1850 2    50   ~ 0
EMCCLK
Wire Wire Line
	9200 2500 8650 2500
$Comp
L power:+3V3 #PWR?
U 1 1 60048A60
P 8650 2500
AR Path="/60048A60" Ref="#PWR?"  Part="1" 
AR Path="/5FFBE8F7/60048A60" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8650 2350 50  0001 C CNN
F 1 "+3V3" V 8665 2628 50  0000 L CNN
F 2 "" H 8650 2500 50  0001 C CNN
F 3 "" H 8650 2500 50  0001 C CNN
	1    8650 2500
	0    -1   -1   0   
$EndComp
$Comp
L project:DSC61xx U?
U 1 1 600A8A3E
P 9900 5500
F 0 "U?" H 9900 5841 79  0000 C CNN
F 1 "DSC61xx" H 9900 5706 79  0000 C CNN
F 2 "" H 9900 5500 79  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/20005624B.pdf" H 9900 5500 79  0001 C CNN
F 4 "DSC6102JI2A-100.0000-ND" H 9900 5500 50  0001 C CNN "DPN"
	1    9900 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5450 9150 5450
Wire Wire Line
	9150 5450 9150 5300
$Comp
L power:+3V3 #PWR?
U 1 1 600AEDE7
P 9150 5300
F 0 "#PWR?" H 9150 5150 50  0001 C CNN
F 1 "+3V3" H 9165 5473 50  0000 C CNN
F 2 "" H 9150 5300 50  0001 C CNN
F 3 "" H 9150 5300 50  0001 C CNN
	1    9150 5300
	1    0    0    -1  
$EndComp
NoConn ~ 9400 5550
Text Notes 8600 5600 0    50   ~ 0
Has internal pullup
Wire Wire Line
	9900 6050 9900 6200
$Comp
L power:GND #PWR?
U 1 1 600B3B11
P 9900 6200
F 0 "#PWR?" H 9900 5950 50  0001 C CNN
F 1 "GND" H 9905 6027 50  0000 C CNN
F 2 "" H 9900 6200 50  0001 C CNN
F 3 "" H 9900 6200 50  0001 C CNN
	1    9900 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5450 10650 5450
Text Label 10650 5450 0    50   ~ 0
EMCCLK
Text Notes 8550 5000 0    79   ~ 0
100MHz Main Clock\n
Wire Notes Line
	8550 5000 11150 5000
Wire Notes Line
	11150 5000 11150 6450
Wire Notes Line
	11150 6450 8550 6450
Wire Notes Line
	8550 6450 8550 5000
Text Notes 7400 2200 0    79   ~ 0
Configuration Interface
Wire Wire Line
	3650 6250 2650 6250
Wire Wire Line
	2650 6250 2650 6000
$Comp
L power:+3V3 #PWR?
U 1 1 600F08FB
P 2650 6000
F 0 "#PWR?" H 2650 5850 50  0001 C CNN
F 1 "+3V3" H 2665 6173 50  0000 C CNN
F 2 "" H 2650 6000 50  0001 C CNN
F 3 "" H 2650 6000 50  0001 C CNN
	1    2650 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6011119E
P 8000 2650
AR Path="/6011119E" Ref="#PWR?"  Part="1" 
AR Path="/5FFBE8F7/6011119E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8000 2500 50  0001 C CNN
F 1 "+3V3" V 8015 2778 50  0000 L CNN
F 2 "" H 8000 2650 50  0001 C CNN
F 3 "" H 8000 2650 50  0001 C CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2650 8000 2800
Text Label 8000 3100 3    50   ~ 0
INIT_B
Wire Wire Line
	8000 3000 8000 3100
Text Label 7700 3100 3    50   ~ 0
PROGRAM_B
Wire Wire Line
	7700 3100 7700 3000
Wire Wire Line
	7700 2800 7700 2650
$Comp
L power:+3V3 #PWR?
U 1 1 6011DB5D
P 7700 2650
AR Path="/6011DB5D" Ref="#PWR?"  Part="1" 
AR Path="/5FFBE8F7/6011DB5D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7700 2500 50  0001 C CNN
F 1 "+3V3" V 7715 2778 50  0000 L CNN
F 2 "" H 7700 2650 50  0001 C CNN
F 3 "" H 7700 2650 50  0001 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6011EA84
P 8800 3000
AR Path="/6011EA84" Ref="#PWR?"  Part="1" 
AR Path="/5FFBE8F7/6011EA84" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8800 2850 50  0001 C CNN
F 1 "+3V3" V 8815 3128 50  0000 L CNN
F 2 "" H 8800 3000 50  0001 C CNN
F 3 "" H 8800 3000 50  0001 C CNN
	1    8800 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 3000 8800 3000
$Comp
L power:GND #PWR?
U 1 1 60122127
P 8750 3100
AR Path="/60122127" Ref="#PWR?"  Part="1" 
AR Path="/5FFBE8F7/60122127" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8750 2850 50  0001 C CNN
F 1 "GND" V 8755 2972 50  0000 R CNN
F 2 "" H 8750 3100 50  0001 C CNN
F 3 "" H 8750 3100 50  0001 C CNN
	1    8750 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3100 9000 3100
Wire Wire Line
	9200 3200 9000 3200
Wire Wire Line
	9000 3200 9000 3100
Connection ~ 9000 3100
Wire Wire Line
	9000 3100 8750 3100
NoConn ~ 9200 2700
NoConn ~ 9200 2800
Wire Wire Line
	9200 2600 8900 2600
Text Label 8900 2600 2    50   ~ 0
DONE
Text HLabel 8950 3400 0    50   Input ~ 0
JTAG_TCK
Text HLabel 8950 3500 0    50   Input ~ 0
JTAG_TDI
Text HLabel 8950 3600 0    50   Input ~ 0
JTAG_TDO
Text HLabel 8950 3700 0    50   Input ~ 0
JTAG_TMS
Wire Wire Line
	9200 3400 8950 3400
Wire Wire Line
	9200 3500 8950 3500
Wire Wire Line
	9200 3600 8950 3600
Wire Wire Line
	9200 3700 8950 3700
Wire Notes Line
	7400 2200 10850 2200
Text GLabel 3450 3750 0    50   Input ~ 0
I2C_SDA
Text GLabel 3450 4250 0    50   Input ~ 0
I2C_SCL
Text GLabel 3450 4350 0    50   Input ~ 0
I2C_INT_B
Text GLabel 3450 4650 0    50   Input ~ 0
PROBE_PWR_EN
Text GLabel 3450 4750 0    50   Input ~ 0
PROBE_VBUS_EN_B
Wire Wire Line
	3450 3750 3650 3750
Wire Wire Line
	3450 4250 3650 4250
Wire Wire Line
	3450 4350 3650 4350
Wire Wire Line
	3450 4650 3650 4650
Wire Wire Line
	3450 4750 3650 4750
Text Notes 2300 3600 0    50   ~ 0
Pins simply chosen to be on\nthe edge of the package.\nMove around if routing is weird.
Text Notes 8800 4100 0    50   ~ 0
M[2:0] = 0b001 for SPI master configuration.
Wire Notes Line
	7400 4100 10850 4100
Wire Notes Line
	10850 2200 10850 4100
Wire Notes Line
	7400 2200 7400 4100
Text GLabel 3350 5250 0    50   Input ~ 0
SPI_COPI
Text GLabel 3350 5350 0    50   Input ~ 0
SPI_CIPO
Text GLabel 3350 5450 0    50   Input ~ 0
SPI_CS
Wire Wire Line
	3350 5250 3650 5250
Wire Wire Line
	3350 5350 3650 5350
Wire Wire Line
	3350 5450 3650 5450
Text GLabel 3450 4950 0    50   Input ~ 0
SBU1
Text GLabel 3450 5150 0    50   Input ~ 0
SBU2
Wire Wire Line
	3450 5150 3650 5150
Wire Wire Line
	3450 4950 3650 4950
$EndSCHEMATC
