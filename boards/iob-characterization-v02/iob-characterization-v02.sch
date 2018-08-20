EESchema Schematic File Version 4
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "STARSHIPRAIDER I/O Characterization"
Date "2018-08-20"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L special-azonenberg:STARSHIPRAIDER_IOBOARD_MODULE J1
U 1 1 591D397B
P 1400 4050
F 0 "J1" H 1950 7487 60  0000 C CNN
F 1 "STARSHIPRAIDER_IOBOARD_MODULE" H 1950 7381 60  0000 C CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QSH-030-01-L-D-A" H 2050 4250 60  0001 C CNN
F 3 "" H 2050 4250 60  0000 C CNN
	1    1400 4050
	1    0    0    -1  
$EndComp
$Sheet
S 1350 4750 1100 1250
U 591D3AB5
F0 "Power Supply" 60
F1 "psu.sch" 60
F2 "5V0" I L 1350 4800 60 
F3 "GND" I L 1350 5100 60 
F4 "2V5" O L 1350 5000 60 
F5 "VCCO_HI" O R 2450 4800 60 
F6 "VCCO_LO" O R 2450 4900 60 
F7 "VCCO_REF" I L 1350 5300 60 
F8 "VCCO_IS_HI" O R 2450 5100 60 
F9 "I2C_SDA" B L 1350 5500 60 
F10 "I2C_SCL" I L 1350 5600 60 
F11 "3V3" I L 1350 4900 60 
F12 "CH0_TERM_EN" O L 1350 5800 60 
F13 "CH1_TERM_EN" O L 1350 5900 60 
F14 "VCCO" O R 2450 5000 60 
$EndSheet
Text Label 1050 900  2    60   ~ 0
5V0
Text Label 1050 1000 2    60   ~ 0
3V3
Wire Wire Line
	1050 900  1200 900 
Wire Wire Line
	1200 1000 1050 1000
Text Label 1050 1100 2    60   ~ 0
I2C_SDA
Wire Wire Line
	1050 1100 1200 1100
Text Label 1050 1200 2    60   ~ 0
GND
Wire Wire Line
	1050 1200 1200 1200
Text Label 1050 1500 2    60   ~ 0
GND
Wire Wire Line
	1050 1500 1200 1500
Text Label 1050 1800 2    60   ~ 0
GND
Wire Wire Line
	1050 1800 1200 1800
Text Label 1050 2100 2    60   ~ 0
GND
Wire Wire Line
	1050 2100 1200 2100
Text Label 1050 2400 2    60   ~ 0
GND
Wire Wire Line
	1050 2400 1200 2400
Text Label 1050 2700 2    60   ~ 0
GND
Wire Wire Line
	1050 2700 1200 2700
Text Label 1050 3000 2    60   ~ 0
GND
Wire Wire Line
	1050 3000 1200 3000
Text Label 1050 3300 2    60   ~ 0
GND
Wire Wire Line
	1050 3300 1200 3300
Text Label 1050 3600 2    60   ~ 0
GND
Wire Wire Line
	1050 3600 1200 3600
Text Label 1050 3700 2    60   ~ 0
3V3
Text Label 1050 3800 2    60   ~ 0
12V0
Text Label 1050 4000 2    60   ~ 0
GND
Wire Wire Line
	1050 4000 1200 4000
Wire Wire Line
	1050 3800 1200 3800
Wire Wire Line
	1050 3700 1200 3700
Text Label 2850 900  0    60   ~ 0
5V0
Wire Wire Line
	2850 900  2700 900 
Text Label 2850 1000 0    60   ~ 0
3V3
Wire Wire Line
	2850 1000 2700 1000
Text Label 2850 1100 0    60   ~ 0
I2C_SCL
Wire Wire Line
	2850 1100 2700 1100
Text Label 2850 1200 0    60   ~ 0
GND
Wire Wire Line
	2850 1200 2700 1200
Text Label 2850 1500 0    60   ~ 0
GND
Wire Wire Line
	2850 1500 2700 1500
Text Label 2850 1800 0    60   ~ 0
GND
Wire Wire Line
	2850 1800 2700 1800
Text Label 2850 2100 0    60   ~ 0
GND
Wire Wire Line
	2850 2100 2700 2100
Text Label 2850 2400 0    60   ~ 0
GND
Wire Wire Line
	2850 2400 2700 2400
Text Label 2850 2700 0    60   ~ 0
GND
Wire Wire Line
	2850 2700 2700 2700
Text Label 2850 3000 0    60   ~ 0
GND
Wire Wire Line
	2850 3000 2700 3000
Text Label 2850 3300 0    60   ~ 0
GND
Wire Wire Line
	2850 3300 2700 3300
Text Label 2850 3600 0    60   ~ 0
GND
Wire Wire Line
	2850 3600 2700 3600
Text Label 2850 3700 0    60   ~ 0
3V3
Text Label 2850 3800 0    60   ~ 0
12V0
Wire Wire Line
	2850 3800 2700 3800
Wire Wire Line
	2700 3700 2850 3700
Text Label 1200 4800 2    60   ~ 0
5V0
Wire Wire Line
	1200 4900 1350 4900
Text Label 1200 5100 2    60   ~ 0
GND
Wire Wire Line
	1200 5100 1350 5100
Text Label 2850 1400 0    60   ~ 0
RXD0_P
Text Label 2850 1300 0    60   ~ 0
RXD0_N
Wire Wire Line
	2700 1300 2850 1300
Wire Wire Line
	2850 1400 2700 1400
Text Label 2850 1600 0    60   ~ 0
RXD1_P
Text Label 2850 1700 0    60   ~ 0
RXD1_N
Wire Wire Line
	2700 1600 2850 1600
Wire Wire Line
	2850 1700 2700 1700
Text Label 2850 1900 0    60   ~ 0
GND
Wire Wire Line
	2850 1900 2700 1900
Text Label 2850 2000 0    60   ~ 0
GND
Wire Wire Line
	2850 2000 2700 2000
Text Label 2850 2200 0    60   ~ 0
GND
Wire Wire Line
	2850 2200 2700 2200
Text Label 2850 2300 0    60   ~ 0
GND
Wire Wire Line
	2850 2300 2700 2300
Text Label 2850 2500 0    60   ~ 0
GND
Wire Wire Line
	2850 2500 2700 2500
Text Label 2850 2600 0    60   ~ 0
GND
Wire Wire Line
	2850 2600 2700 2600
Text Label 2850 2800 0    60   ~ 0
GND
Wire Wire Line
	2850 2800 2700 2800
Text Label 2850 2900 0    60   ~ 0
GND
Wire Wire Line
	2850 2900 2700 2900
Text Label 2850 3100 0    60   ~ 0
GND
Wire Wire Line
	2850 3100 2700 3100
Text Label 2850 3200 0    60   ~ 0
GND
Wire Wire Line
	2850 3200 2700 3200
Text Label 2850 3400 0    60   ~ 0
GND
Wire Wire Line
	2850 3400 2700 3400
Text Label 2850 3500 0    60   ~ 0
GND
Wire Wire Line
	2850 3500 2700 3500
NoConn ~ 1200 1900
NoConn ~ 1200 2000
NoConn ~ 1200 2200
NoConn ~ 1200 2300
NoConn ~ 1200 2500
NoConn ~ 1200 2600
NoConn ~ 1200 2800
NoConn ~ 1200 2900
NoConn ~ 1200 3100
NoConn ~ 1200 3200
NoConn ~ 1200 3400
NoConn ~ 1200 3500
Text Notes 8950 9600 0    60   ~ 0
TODO: Input protection
Text Notes 8950 10000 0    60   ~ 0
TODO: Figure out Vss voltage for comparator\nOptions include 0, -0.5, -1V
Text Label 1050 1300 2    60   ~ 0
TXD0_3V3
Text Label 1050 1600 2    60   ~ 0
TXD1_3V3
Wire Wire Line
	1050 1600 1200 1600
Wire Wire Line
	1050 1300 1200 1300
Text Notes 1400 4150 0    60   ~ 0
Connector to host
$Comp
L special-azonenberg:STARSHIPRAIDER_PROBE_HOST J3
U 1 1 591F9EBB
P 4350 4050
F 0 "J3" H 4900 7487 60  0000 C CNN
F 1 "STARSHIPRAIDER_PROBE_HOST" H 4900 7381 60  0000 C CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QTH-030-01-L-D-A" H 5000 4250 60  0001 C CNN
F 3 "" H 5000 4250 60  0000 C CNN
	1    4350 4050
	1    0    0    -1  
$EndComp
NoConn ~ 4150 900 
NoConn ~ 5650 900 
NoConn ~ 5650 1300
NoConn ~ 5650 1400
NoConn ~ 5650 1600
NoConn ~ 5650 1700
NoConn ~ 5650 1900
NoConn ~ 5650 2000
NoConn ~ 5650 2200
NoConn ~ 5650 2300
NoConn ~ 5650 2500
NoConn ~ 5650 2600
NoConn ~ 5650 2800
NoConn ~ 5650 2900
NoConn ~ 5650 3100
NoConn ~ 5650 3200
NoConn ~ 5650 3400
NoConn ~ 5650 3500
NoConn ~ 5650 3700
NoConn ~ 5650 3800
NoConn ~ 4150 3700
NoConn ~ 4150 3800
Text Label 4000 1000 2    60   ~ 0
3V3
Wire Wire Line
	4000 1000 4150 1000
Text Label 4000 1100 2    60   ~ 0
I2C_SDA
Wire Wire Line
	4000 1100 4150 1100
Text Label 5800 1100 0    60   ~ 0
I2C_SCL
Wire Wire Line
	5650 1100 5800 1100
Text Label 5800 1200 0    60   ~ 0
GND
Wire Wire Line
	5800 1200 5650 1200
Text Label 5800 1500 0    60   ~ 0
GND
Wire Wire Line
	5800 1500 5650 1500
Text Label 5800 1800 0    60   ~ 0
GND
Wire Wire Line
	5800 1800 5650 1800
Text Label 5800 2100 0    60   ~ 0
GND
Wire Wire Line
	5800 2100 5650 2100
Text Label 5800 2400 0    60   ~ 0
GND
Wire Wire Line
	5800 2400 5650 2400
Text Label 5800 2700 0    60   ~ 0
GND
Wire Wire Line
	5800 2700 5650 2700
Text Label 5800 3000 0    60   ~ 0
GND
Wire Wire Line
	5800 3000 5650 3000
Text Label 5800 3300 0    60   ~ 0
GND
Wire Wire Line
	5800 3300 5650 3300
Text Label 5800 3600 0    60   ~ 0
GND
Wire Wire Line
	5800 3600 5650 3600
Text Label 4000 1200 2    60   ~ 0
GND
Wire Wire Line
	4000 1200 4150 1200
NoConn ~ 4150 1900
NoConn ~ 4150 2000
NoConn ~ 4150 2200
NoConn ~ 4150 2300
NoConn ~ 4150 2500
NoConn ~ 4150 2600
NoConn ~ 4150 2800
NoConn ~ 4150 2900
NoConn ~ 4150 3100
NoConn ~ 4150 3200
NoConn ~ 4150 3400
NoConn ~ 4150 3500
Text Label 4000 1500 2    60   ~ 0
GND
Wire Wire Line
	4000 1500 4150 1500
Text Label 4000 1800 2    60   ~ 0
GND
Wire Wire Line
	4000 1800 4150 1800
Text Label 4000 2100 2    60   ~ 0
GND
Wire Wire Line
	4000 2100 4150 2100
Text Label 4000 2400 2    60   ~ 0
GND
Wire Wire Line
	4000 2400 4150 2400
Text Label 4000 2700 2    60   ~ 0
GND
Wire Wire Line
	4000 2700 4150 2700
Text Label 4000 3000 2    60   ~ 0
GND
Wire Wire Line
	4000 3000 4150 3000
Text Label 4000 3300 2    60   ~ 0
GND
Wire Wire Line
	4000 3300 4150 3300
Text Label 4000 3600 2    60   ~ 0
GND
Text Label 4000 4000 2    60   ~ 0
GND
Wire Wire Line
	4000 4000 4150 4000
Wire Wire Line
	4150 3600 4000 3600
NoConn ~ 4150 1400
NoConn ~ 4150 1700
Text Label 4000 1300 2    60   ~ 0
IO0
Wire Wire Line
	4000 1300 4150 1300
Text Label 4000 1600 2    60   ~ 0
IO1
Wire Wire Line
	4000 1600 4150 1600
Text Notes 4350 4150 0    60   ~ 0
Connector to probe card
Text Notes 8900 10650 0    60   ~ 0
INPUT mode, positive voltage fault\nINPUT mode, negative voltage fault\nOUTPUT mode, positive voltage fault, driving high\nOUTPUT mode, positive voltage fault, driving low\nOUTPUT mode, negative voltage fault, driving high\nOUTPUT mode, negative voltage fault, driving low
Text Notes 8850 11100 0    60   ~ 0
TRISTATED faults:\n* Clamp diodes in analog switch can handle +/- 50 mA\n* 12V, 50 mA = minimum series resistance of 240R\n* So we need more diodes
Text Notes 5850 10250 0    60   ~ 0
Series terminator of 33R\nWith -12V fault voltage into 5V output, we have 515 mA
Text Notes 5850 11100 0    60   ~ 0
HIGH SIDE LIMITS:\n* TX, active: Vcc + 0.5V, or 50 mA\n* RX: +12.2V (no protection needed!)\n\nLOW SIDE LIMITS\n* TX, active: -0.5V, or 50 mA\n* RX: Vee - 0.2V
$Sheet
S 6200 4750 1000 1450
U 5B7E4C7E
F0 "Input Buffers" 60
F1 "input_buffers.sch" 60
F2 "RXD0" I L 6200 4800 60 
F3 "GND" I L 6200 5400 60 
F4 "12V0" I L 6200 5100 60 
F5 "VREF" I L 6200 5300 60 
F6 "RXD1" I L 6200 4900 60 
F7 "RXD0_P" O R 7200 4800 60 
F8 "RXD0_N" O R 7200 4900 60 
F9 "RXD1_P" O R 7200 5100 60 
F10 "RXD1_N" O R 7200 5200 60 
F11 "2V5" I L 6200 5200 60 
F12 "CH1_TERM_EN" I R 7200 5550 60 
F13 "CH0_TERM_EN" I R 7200 5650 60 
F14 "CH1_OE" I R 7200 5850 60 
F15 "CH0_OE" I R 7200 5950 60 
F16 "5V0" I L 6200 5500 60 
$EndSheet
Wire Wire Line
	5800 1000 5650 1000
$Sheet
S 4800 4750 950  1150
U 5B8504E7
F0 "I/O Protection" 60
F1 "io_protection.sch" 60
F2 "TXD0" I L 4800 4800 60 
F3 "TXD1" I L 4800 4900 60 
F4 "IO1" B L 4800 5200 60 
F5 "IO0" B L 4800 5100 60 
F6 "RX0_PROT" O R 5750 4800 60 
F7 "RX1_PROT" O R 5750 4900 60 
F8 "GND" I L 4800 5750 60 
F9 "VCCO" I L 4800 5650 60 
F10 "2V5" I L 4800 5850 60 
$EndSheet
Text Label 1200 5300 2    60   ~ 0
VCCO_REF
Wire Wire Line
	1200 5300 1350 5300
Text Label 1200 5000 2    60   ~ 0
2V5
Wire Wire Line
	1200 5000 1350 5000
$Sheet
S 3150 4750 1100 1150
U 5B7C6983
F0 "Output Buffers" 60
F1 "output_buffers.sch" 60
F2 "TXD0" O R 4250 4800 60 
F3 "TXD1" O R 4250 4900 60 
F4 "3V3" I L 3150 5400 60 
F5 "TXD0_3V3" I L 3150 5700 60 
F6 "TXD1_3V3" I L 3150 5800 60 
F7 "GND" I L 3150 5500 60 
F8 "VCCO_LO" I L 3150 4900 60 
F9 "VCCO_HI" I L 3150 4800 60 
F10 "VCCO_IS_HI" I L 3150 5100 60 
F11 "5V0" I L 3150 5300 60 
F12 "OE0" I R 4250 5400 60 
F13 "OE1" I R 4250 5500 60 
$EndSheet
Wire Wire Line
	3150 4800 2450 4800
Wire Wire Line
	3150 4900 2450 4900
Wire Wire Line
	3150 5100 2450 5100
Text Label 3000 5300 2    60   ~ 0
5V0
Text Label 3000 5400 2    60   ~ 0
3V3
Text Label 3000 5500 2    60   ~ 0
GND
Wire Wire Line
	3000 5500 3150 5500
Wire Wire Line
	3150 5400 3000 5400
Wire Wire Line
	3000 5300 3150 5300
Text Label 3000 5700 2    60   ~ 0
TXD0_3V3
Text Label 3000 5800 2    60   ~ 0
TXD1_3V3
Wire Wire Line
	3000 5800 3150 5800
Wire Wire Line
	3150 5700 3000 5700
Wire Wire Line
	4800 4800 4250 4800
Wire Wire Line
	4250 4900 4800 4900
$Sheet
S 3150 6400 1100 1100
U 5B92BCA2
F0 "I2C Bus" 60
F1 "i2c-bus.sch" 60
F2 "3V3" I L 3150 6550 60 
F3 "I2C_SCL" I L 3150 6950 60 
F4 "I2C_SDA" B L 3150 6850 60 
F5 "GND" I L 3150 6650 60 
F6 "5V0" I L 3150 6450 60 
F7 "VREF" O R 4250 6450 60 
F8 "VCCO_REF" O R 4250 6550 60 
F9 "VCCO_EXT_REF" I R 4250 6650 60 
$EndSheet
Text Label 5800 1000 0    60   ~ 0
VCCO_EXT_REF
Text Label 1050 1400 2    60   ~ 0
OE0
Wire Wire Line
	1200 1400 1050 1400
Text Label 1050 1700 2    60   ~ 0
OE1
Wire Wire Line
	1050 1700 1200 1700
Text Label 4600 5200 2    60   ~ 0
IO1
Text Label 4600 5100 2    60   ~ 0
IO0
Wire Wire Line
	4600 5100 4800 5100
Wire Wire Line
	4800 5200 4600 5200
Text Label 4400 5400 0    60   ~ 0
OE0
Wire Wire Line
	4400 5400 4250 5400
Text Label 4400 5500 0    60   ~ 0
OE1
Wire Wire Line
	4400 5500 4250 5500
Wire Wire Line
	6200 4900 5750 4900
Wire Wire Line
	5750 4800 6200 4800
Text Label 3000 6450 2    60   ~ 0
5V0
Text Label 3000 6550 2    60   ~ 0
3V3
Text Label 3000 6650 2    60   ~ 0
GND
Text Label 3000 6850 2    60   ~ 0
I2C_SDA
Text Label 3000 6950 2    60   ~ 0
I2C_SCL
Wire Wire Line
	3000 6450 3150 6450
Wire Wire Line
	3150 6550 3000 6550
Wire Wire Line
	3000 6650 3150 6650
Wire Wire Line
	3150 6850 3000 6850
Wire Wire Line
	3000 6950 3150 6950
Text Label 4400 6450 0    60   ~ 0
VREF
Wire Wire Line
	4400 6450 4250 6450
Text Label 4400 6650 0    60   ~ 0
VCCO_EXT_REF
Wire Wire Line
	4400 6650 4250 6650
Text Label 4400 6550 0    60   ~ 0
VCCO_REF
Wire Wire Line
	4400 6550 4250 6550
Text Label 6050 5100 2    60   ~ 0
12V0
Text Label 6050 5300 2    60   ~ 0
VREF
Text Label 6050 5400 2    60   ~ 0
GND
Wire Wire Line
	6050 5300 6200 5300
Wire Wire Line
	6200 5200 6050 5200
Wire Wire Line
	6050 5100 6200 5100
Text Label 7400 4800 0    60   ~ 0
RXD0_P
Text Label 7400 4900 0    60   ~ 0
RXD0_N
Wire Wire Line
	7400 4800 7200 4800
Wire Wire Line
	7200 4900 7400 4900
Text Label 7400 5100 0    60   ~ 0
RXD1_P
Text Label 7400 5200 0    60   ~ 0
RXD1_N
Wire Wire Line
	7400 5200 7200 5200
Wire Wire Line
	7200 5100 7400 5100
Text Label 1200 5500 2    60   ~ 0
I2C_SDA
Wire Wire Line
	1200 5500 1350 5500
Text Label 1200 5600 2    60   ~ 0
I2C_SCL
Wire Wire Line
	1200 5600 1350 5600
Wire Wire Line
	6050 5400 6200 5400
Text Label 6050 5200 2    60   ~ 0
2V5
Wire Wire Line
	1350 4800 1200 4800
Text Label 1200 4900 2    60   ~ 0
3V3
Text Label 4600 5750 2    60   ~ 0
GND
Wire Wire Line
	4600 5650 4800 5650
Text Notes 7550 950  0    60   ~ 0
Invert RXD0
Text Label 1200 5800 2    60   ~ 0
CH0_TERM_EN
Wire Wire Line
	1200 5800 1350 5800
Text Label 1200 5900 2    60   ~ 0
CH1_TERM_EN
Wire Wire Line
	1200 5900 1350 5900
Text Label 7400 5650 0    60   ~ 0
CH0_TERM_EN
Wire Wire Line
	7400 5650 7200 5650
Text Label 7400 5550 0    60   ~ 0
CH1_TERM_EN
Wire Wire Line
	7400 5550 7200 5550
Text Label 7400 5950 0    60   ~ 0
OE0
Text Label 7400 5850 0    60   ~ 0
OE1
Wire Wire Line
	7400 5850 7200 5850
Wire Wire Line
	7200 5950 7400 5950
Text Label 6050 5500 2    60   ~ 0
5V0
Wire Wire Line
	6050 5500 6200 5500
Wire Wire Line
	4600 5750 4800 5750
Text Label 4600 5650 2    60   ~ 0
VCCO
Text Label 2600 5000 0    60   ~ 0
VCCO
Wire Wire Line
	2600 5000 2450 5000
Text Label 4600 5850 2    60   ~ 0
2V5
Wire Wire Line
	4600 5850 4800 5850
$EndSCHEMATC
