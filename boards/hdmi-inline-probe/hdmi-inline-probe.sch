EESchema Schematic File Version 4
LIBS:hdmi-inline-probe-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "HDMI Inline Probe"
Date "2019-07-01"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Top Level"
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L special-azonenberg:HDMI_A_INPUT J8
U 1 1 5DDA682D
P 3800 2950
F 0 "J8" H 3800 5250 60  0000 L CNN
F 1 "HDMI_A_INPUT" H 3800 2850 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_HDMI_SAMTEC_HDMR_19_01_S_SM" H 3800 2950 60  0001 C CNN
F 3 "" H 3800 2950 60  0000 C CNN
	1    3800 2950
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:HDMI_A_OUTPUT J5
U 1 1 5DDA73B9
P 1550 2950
F 0 "J5" H 2350 5250 60  0000 C CNN
F 1 "HDMI_A_OUTPUT" H 2050 2850 60  0000 C CNN
F 2 "azonenberg_pcb:CONN_HDMI_SAMTEC_HDMR_19_01_S_SM" H 1550 2950 60  0001 C CNN
F 3 "" H 1550 2950 60  0000 C CNN
	1    1550 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 1550 1850 1550
Wire Wire Line
	1850 1650 3500 1650
Wire Wire Line
	3500 1750 1850 1750
Wire Wire Line
	1850 1850 3500 1850
Wire Wire Line
	3500 1950 1850 1950
Wire Wire Line
	1850 2050 3500 2050
Wire Wire Line
	3500 2150 1850 2150
Wire Wire Line
	3500 2250 1850 2250
Wire Wire Line
	3500 2850 1850 2850
Wire Wire Line
	1850 2950 3500 2950
Text Label 2050 2850 0    50   ~ 0
I2C_SCL
Text Label 2050 2950 0    50   ~ 0
I2C_SDA
Text Label 2050 2450 0    50   ~ 0
CEC_OUT
Text Label 2050 2650 0    50   ~ 0
HEC_OUT_N
Text Label 2050 2550 0    50   ~ 0
HEC_OUT_P
Text Label 2050 2250 0    50   ~ 0
TMDS_CLK_N
Text Label 2050 2150 0    50   ~ 0
TMDS_CLK_P
Text Label 2050 2050 0    50   ~ 0
TMDS_D0_N
Text Label 2050 1950 0    50   ~ 0
TMDS_D0_P
Text Label 2050 1850 0    50   ~ 0
TMDS_D1_N
Text Label 2050 1750 0    50   ~ 0
TMDS_D1_P
Text Label 2050 1550 0    50   ~ 0
TMDS_D2_P
Text Label 2050 1650 0    50   ~ 0
TMDS_D2_N
Text Label 1850 750  0    50   ~ 0
5V_IN
Wire Wire Line
	1850 850  1850 950 
Wire Wire Line
	1850 1350 3500 1350
Connection ~ 1850 1350
Connection ~ 1850 950 
Wire Wire Line
	1850 950  1850 1050
Connection ~ 1850 1050
Wire Wire Line
	1850 1050 1850 1150
Connection ~ 1850 1150
Wire Wire Line
	1850 1150 1850 1250
Connection ~ 1850 1250
Wire Wire Line
	1850 1250 1850 1350
Wire Wire Line
	3500 1350 3500 1250
Connection ~ 3500 1350
Connection ~ 3500 950 
Wire Wire Line
	3500 950  3500 850 
Connection ~ 3500 1050
Wire Wire Line
	3500 1050 3500 950 
Connection ~ 3500 1150
Wire Wire Line
	3500 1150 3500 1050
Connection ~ 3500 1250
Wire Wire Line
	3500 1250 3500 1150
Text Label 2050 1350 0    50   ~ 0
GND
Wire Wire Line
	2050 2550 1850 2550
Wire Wire Line
	2050 2650 1850 2650
Text Label 3300 2550 2    50   ~ 0
HEC_IN_P
Wire Wire Line
	3300 2550 3500 2550
Text Label 3300 2650 2    50   ~ 0
HEC_IN_N
Wire Wire Line
	3300 2650 3500 2650
Text Label 950  3700 0    50   ~ 0
HEC_IN_P
$Comp
L Connector:Conn_01x03 J1
U 1 1 5DDB2DAE
P 750 3700
F 0 "J1" H 668 4017 50  0000 C CNN
F 1 "Conn_01x03" H 668 3926 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x3" H 750 3700 50  0001 C CNN
F 3 "~" H 750 3700 50  0001 C CNN
	1    750  3700
	-1   0    0    -1  
$EndComp
Text Label 950  3800 0    50   ~ 0
HEC_PROBE_IN_P
$Comp
L Connector:Conn_01x03 J6
U 1 1 5DDB39CB
P 2600 3700
F 0 "J6" H 2550 4000 50  0000 L CNN
F 1 "Conn_01x03" H 2550 3900 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x3" H 2600 3700 50  0001 C CNN
F 3 "~" H 2600 3700 50  0001 C CNN
	1    2600 3700
	1    0    0    -1  
$EndComp
Text Label 2400 3800 2    50   ~ 0
HEC_PROBE_OUT_P
Text Label 2400 3700 2    50   ~ 0
HEC_OUT_P
Text Label 950  3600 0    50   ~ 0
HEC_PASSTHRU_P
Wire Wire Line
	950  3600 2400 3600
Text Label 950  4300 0    50   ~ 0
HEC_IN_N
$Comp
L Connector:Conn_01x03 J2
U 1 1 5DDB59BE
P 750 4300
F 0 "J2" H 668 4617 50  0000 C CNN
F 1 "Conn_01x03" H 668 4526 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x3" H 750 4300 50  0001 C CNN
F 3 "~" H 750 4300 50  0001 C CNN
	1    750  4300
	-1   0    0    -1  
$EndComp
Text Label 950  4400 0    50   ~ 0
HEC_PROBE_IN_N
$Comp
L Connector:Conn_01x03 J7
U 1 1 5DDB59C9
P 2600 4300
F 0 "J7" H 2550 4600 50  0000 L CNN
F 1 "Conn_01x03" H 2550 4500 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x3" H 2600 4300 50  0001 C CNN
F 3 "~" H 2600 4300 50  0001 C CNN
	1    2600 4300
	1    0    0    -1  
$EndComp
Text Label 2400 4400 2    50   ~ 0
HEC_PROBE_OUT_N
Text Label 2400 4300 2    50   ~ 0
HEC_OUT_N
Text Label 950  4200 0    50   ~ 0
HEC_PASSTHRU_N
Wire Wire Line
	950  4200 2400 4200
Text Label 2800 5100 0    50   ~ 0
I2C_SCL
Text Label 950  5100 0    50   ~ 0
I2C_SDA
Text Label 950  5000 0    50   ~ 0
GND
Text Notes 2750 3700 0    50   ~ 0
Load 1-2 for passthrough\nLoad 2-3 for probing
$Comp
L Connector:Conn_01x02 TP3
U 1 1 5DDB7C8A
P 2600 5500
F 0 "TP3" H 2518 5717 50  0000 C CNN
F 1 "Conn_01x02" H 2518 5626 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x2" H 2600 5500 50  0001 C CNN
F 3 "~" H 2600 5500 50  0001 C CNN
	1    2600 5500
	-1   0    0    -1  
$EndComp
Text Label 2800 5500 0    50   ~ 0
GND
Wire Wire Line
	1850 2450 2050 2450
Text Label 3300 2450 2    50   ~ 0
CEC_IN
Wire Wire Line
	3300 2450 3500 2450
$Comp
L Connector:Conn_01x02 J3
U 1 1 5DDBA229
P 750 5500
F 0 "J3" H 668 5717 50  0000 C CNN
F 1 "Conn_01x02" H 668 5626 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x2" H 750 5500 50  0001 C CNN
F 3 "~" H 750 5500 50  0001 C CNN
	1    750  5500
	-1   0    0    -1  
$EndComp
Text Label 950  5500 0    50   ~ 0
CEC_IN
Text Label 950  5600 0    50   ~ 0
CEC_OUT
Text Label 2800 5600 0    50   ~ 0
CEC_IN
Text Label 6500 950  2    50   ~ 0
TMDS_CLK_P
$Comp
L device:R R1
U 1 1 5DDBBD76
P 6950 950
F 0 "R1" V 6850 950 50  0000 C CNN
F 1 "200" V 6950 950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6880 950 50  0001 C CNN
F 3 "" H 6950 950 50  0001 C CNN
	1    6950 950 
	0    1    1    0   
$EndComp
Text Notes 700  6550 0    50   ~ 0
All 200R are Vishay FC0402E2000BTT0
$Comp
L device:R R9
U 1 1 5DDBCAE1
P 7250 950
F 0 "R9" V 7150 950 50  0000 C CNN
F 1 "200" V 7250 950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7180 950 50  0001 C CNN
F 3 "" H 7250 950 50  0001 C CNN
	1    7250 950 
	0    1    1    0   
$EndComp
$Comp
L device:R R17
U 1 1 5DDBCDCD
P 7550 950
F 0 "R17" V 7450 950 50  0000 C CNN
F 1 "200" V 7550 950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7480 950 50  0001 C CNN
F 3 "" H 7550 950 50  0001 C CNN
	1    7550 950 
	0    1    1    0   
$EndComp
$Comp
L device:R R25
U 1 1 5DDBD15A
P 7850 950
F 0 "R25" V 7750 950 50  0000 C CNN
F 1 "200" V 7850 950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7780 950 50  0001 C CNN
F 3 "" H 7850 950 50  0001 C CNN
	1    7850 950 
	0    1    1    0   
$EndComp
$Comp
L device:R R33
U 1 1 5DDBD3A5
P 8150 950
F 0 "R33" V 8050 950 50  0000 C CNN
F 1 "200" V 8150 950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8080 950 50  0001 C CNN
F 3 "" H 8150 950 50  0001 C CNN
	1    8150 950 
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J9
U 1 1 5DDBD7D4
P 9450 950
F 0 "J9" H 9550 1000 50  0000 L CNN
F 1 "SMA" H 9550 900 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 9450 950 50  0001 C CNN
F 3 "" H 9450 950 50  0001 C CNN
	1    9450 950 
	1    0    0    -1  
$EndComp
Text Label 8300 950  0    50   ~ 0
PROBE_CLK_P
Text Label 9450 1150 0    50   ~ 0
GND
$Comp
L device:C C17
U 1 1 5DDBF036
P 8900 1100
F 0 "C17" H 9015 1146 50  0000 L CNN
F 1 "DNP" H 9015 1055 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8938 950 50  0001 C CNN
F 3 "" H 8900 1100 50  0001 C CNN
	1    8900 1100
	1    0    0    -1  
$EndComp
Connection ~ 8900 950 
Wire Wire Line
	8900 950  9300 950 
Wire Wire Line
	8300 950  8500 950 
$Comp
L device:C C1
U 1 1 5DDC24C5
P 6650 950
F 0 "C1" V 6398 950 50  0000 C CNN
F 1 "0.1 uF" V 6489 950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6688 800 50  0001 C CNN
F 3 "" H 6650 950 50  0001 C CNN
	1    6650 950 
	0    1    1    0   
$EndComp
Text Notes 700  6650 0    50   ~ 0
All DC block caps are ATC 530L104KT16T
$Comp
L device:R R41
U 1 1 5DDC7617
P 8900 1400
F 0 "R41" H 8970 1446 50  0000 L CNN
F 1 "DNP" H 8970 1355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8830 1400 50  0001 C CNN
F 3 "" H 8900 1400 50  0001 C CNN
	1    8900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1550 9450 1550
Wire Wire Line
	9450 1150 9450 1550
$Comp
L device:C C9
U 1 1 5DDC829D
P 8500 1100
F 0 "C9" H 8615 1146 50  0000 L CNN
F 1 "DNP" H 8615 1055 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8538 950 50  0001 C CNN
F 3 "" H 8500 1100 50  0001 C CNN
	1    8500 1100
	1    0    0    -1  
$EndComp
Connection ~ 8500 950 
Wire Wire Line
	8500 950  8900 950 
Wire Wire Line
	8500 1250 8500 1550
Wire Wire Line
	8500 1550 8900 1550
Connection ~ 8900 1550
$Comp
L Connector:Conn_01x02 TP4
U 1 1 5DDCABB2
P 2600 6100
F 0 "TP4" H 2518 6317 50  0000 C CNN
F 1 "Conn_01x02" H 2518 6226 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x2" H 2600 6100 50  0001 C CNN
F 3 "~" H 2600 6100 50  0001 C CNN
	1    2600 6100
	-1   0    0    -1  
$EndComp
Text Label 2800 6100 0    50   ~ 0
GND
$Comp
L Connector:Conn_01x02 J4
U 1 1 5DDCABBD
P 750 6100
F 0 "J4" H 668 6317 50  0000 C CNN
F 1 "Conn_01x02" H 668 6226 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x2" H 750 6100 50  0001 C CNN
F 3 "~" H 750 6100 50  0001 C CNN
	1    750  6100
	-1   0    0    -1  
$EndComp
Text Label 950  6100 0    50   ~ 0
5V_IN
Text Label 950  6200 0    50   ~ 0
5V_OUT
Text Label 2800 6200 0    50   ~ 0
5V_IN
Text Label 3500 750  2    50   ~ 0
5V_OUT
Text Notes 700  6750 0    50   ~ 0
Total gain 21:1
$Comp
L Connector:Conn_01x02 TP1
U 1 1 5DDCF0A8
P 750 5000
F 0 "TP1" H 668 5217 50  0000 C CNN
F 1 "Conn_01x02" H 668 5126 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x2" H 750 5000 50  0001 C CNN
F 3 "~" H 750 5000 50  0001 C CNN
	1    750  5000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02 TP2
U 1 1 5DDCF437
P 2600 5000
F 0 "TP2" H 2518 5217 50  0000 C CNN
F 1 "Conn_01x02" H 2518 5126 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x2" H 2600 5000 50  0001 C CNN
F 3 "~" H 2600 5000 50  0001 C CNN
	1    2600 5000
	-1   0    0    -1  
$EndComp
Text Label 2800 5000 0    50   ~ 0
GND
Text Notes 700  5750 0    50   ~ 0
Load for passthrough
Text Notes 700  6350 0    50   ~ 0
Load for passthrough
Text Label 6500 1850 2    50   ~ 0
TMDS_CLK_N
$Comp
L device:R R2
U 1 1 5DDD03AC
P 6950 1850
F 0 "R2" V 6850 1850 50  0000 C CNN
F 1 "200" V 6950 1850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6880 1850 50  0001 C CNN
F 3 "" H 6950 1850 50  0001 C CNN
	1    6950 1850
	0    1    1    0   
$EndComp
$Comp
L device:R R10
U 1 1 5DDD03B6
P 7250 1850
F 0 "R10" V 7150 1850 50  0000 C CNN
F 1 "200" V 7250 1850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7180 1850 50  0001 C CNN
F 3 "" H 7250 1850 50  0001 C CNN
	1    7250 1850
	0    1    1    0   
$EndComp
$Comp
L device:R R18
U 1 1 5DDD03C0
P 7550 1850
F 0 "R18" V 7450 1850 50  0000 C CNN
F 1 "200" V 7550 1850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7480 1850 50  0001 C CNN
F 3 "" H 7550 1850 50  0001 C CNN
	1    7550 1850
	0    1    1    0   
$EndComp
$Comp
L device:R R26
U 1 1 5DDD03CA
P 7850 1850
F 0 "R26" V 7750 1850 50  0000 C CNN
F 1 "200" V 7850 1850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7780 1850 50  0001 C CNN
F 3 "" H 7850 1850 50  0001 C CNN
	1    7850 1850
	0    1    1    0   
$EndComp
$Comp
L device:R R34
U 1 1 5DDD03D4
P 8150 1850
F 0 "R34" V 8050 1850 50  0000 C CNN
F 1 "200" V 8150 1850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8080 1850 50  0001 C CNN
F 3 "" H 8150 1850 50  0001 C CNN
	1    8150 1850
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J10
U 1 1 5DDD03DE
P 9450 1850
F 0 "J10" H 9550 1900 50  0000 L CNN
F 1 "SMA" H 9550 1800 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 9450 1850 50  0001 C CNN
F 3 "" H 9450 1850 50  0001 C CNN
	1    9450 1850
	1    0    0    -1  
$EndComp
Text Label 8300 1850 0    50   ~ 0
PROBE_CLK_N
Text Label 9450 2050 0    50   ~ 0
GND
$Comp
L device:C C18
U 1 1 5DDD03EA
P 8900 2000
F 0 "C18" H 9015 2046 50  0000 L CNN
F 1 "DNP" H 9015 1955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8938 1850 50  0001 C CNN
F 3 "" H 8900 2000 50  0001 C CNN
	1    8900 2000
	1    0    0    -1  
$EndComp
Connection ~ 8900 1850
Wire Wire Line
	8900 1850 9300 1850
Wire Wire Line
	8300 1850 8500 1850
$Comp
L device:C C2
U 1 1 5DDD03F7
P 6650 1850
F 0 "C2" V 6398 1850 50  0000 C CNN
F 1 "0.1 uF" V 6489 1850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6688 1700 50  0001 C CNN
F 3 "" H 6650 1850 50  0001 C CNN
	1    6650 1850
	0    1    1    0   
$EndComp
$Comp
L device:R R42
U 1 1 5DDD0401
P 8900 2300
F 0 "R42" H 8970 2346 50  0000 L CNN
F 1 "DNP" H 8970 2255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8830 2300 50  0001 C CNN
F 3 "" H 8900 2300 50  0001 C CNN
	1    8900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2450 9450 2450
Wire Wire Line
	9450 2050 9450 2450
$Comp
L device:C C10
U 1 1 5DDD040D
P 8500 2000
F 0 "C10" H 8615 2046 50  0000 L CNN
F 1 "DNP" H 8615 1955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8538 1850 50  0001 C CNN
F 3 "" H 8500 2000 50  0001 C CNN
	1    8500 2000
	1    0    0    -1  
$EndComp
Connection ~ 8500 1850
Wire Wire Line
	8500 1850 8900 1850
Wire Wire Line
	8500 2150 8500 2450
Wire Wire Line
	8500 2450 8900 2450
Connection ~ 8900 2450
Text Label 6550 2800 2    50   ~ 0
TMDS_D0_P
$Comp
L device:R R3
U 1 1 5DDD2408
P 7000 2800
F 0 "R3" V 6900 2800 50  0000 C CNN
F 1 "200" V 7000 2800 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6930 2800 50  0001 C CNN
F 3 "" H 7000 2800 50  0001 C CNN
	1    7000 2800
	0    1    1    0   
$EndComp
$Comp
L device:R R11
U 1 1 5DDD2412
P 7300 2800
F 0 "R11" V 7200 2800 50  0000 C CNN
F 1 "200" V 7300 2800 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7230 2800 50  0001 C CNN
F 3 "" H 7300 2800 50  0001 C CNN
	1    7300 2800
	0    1    1    0   
$EndComp
$Comp
L device:R R19
U 1 1 5DDD241C
P 7600 2800
F 0 "R19" V 7500 2800 50  0000 C CNN
F 1 "200" V 7600 2800 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7530 2800 50  0001 C CNN
F 3 "" H 7600 2800 50  0001 C CNN
	1    7600 2800
	0    1    1    0   
$EndComp
$Comp
L device:R R27
U 1 1 5DDD2426
P 7900 2800
F 0 "R27" V 7800 2800 50  0000 C CNN
F 1 "200" V 7900 2800 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7830 2800 50  0001 C CNN
F 3 "" H 7900 2800 50  0001 C CNN
	1    7900 2800
	0    1    1    0   
$EndComp
$Comp
L device:R R35
U 1 1 5DDD2430
P 8200 2800
F 0 "R35" V 8100 2800 50  0000 C CNN
F 1 "200" V 8200 2800 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8130 2800 50  0001 C CNN
F 3 "" H 8200 2800 50  0001 C CNN
	1    8200 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J11
U 1 1 5DDD243A
P 9500 2800
F 0 "J11" H 9600 2850 50  0000 L CNN
F 1 "SMA" H 9600 2750 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 9500 2800 50  0001 C CNN
F 3 "" H 9500 2800 50  0001 C CNN
	1    9500 2800
	1    0    0    -1  
$EndComp
Text Label 8350 2800 0    50   ~ 0
PROBE_D0_P
Text Label 9500 3000 0    50   ~ 0
GND
$Comp
L device:C C19
U 1 1 5DDD2446
P 8950 2950
F 0 "C19" H 9065 2996 50  0000 L CNN
F 1 "DNP" H 9065 2905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8988 2800 50  0001 C CNN
F 3 "" H 8950 2950 50  0001 C CNN
	1    8950 2950
	1    0    0    -1  
$EndComp
Connection ~ 8950 2800
Wire Wire Line
	8950 2800 9350 2800
Wire Wire Line
	8350 2800 8550 2800
$Comp
L device:C C3
U 1 1 5DDD2453
P 6700 2800
F 0 "C3" V 6448 2800 50  0000 C CNN
F 1 "0.1 uF" V 6539 2800 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6738 2650 50  0001 C CNN
F 3 "" H 6700 2800 50  0001 C CNN
	1    6700 2800
	0    1    1    0   
$EndComp
$Comp
L device:R R43
U 1 1 5DDD245D
P 8950 3250
F 0 "R43" H 9020 3296 50  0000 L CNN
F 1 "DNP" H 9020 3205 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8880 3250 50  0001 C CNN
F 3 "" H 8950 3250 50  0001 C CNN
	1    8950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3400 9500 3400
Wire Wire Line
	9500 3000 9500 3400
$Comp
L device:C C11
U 1 1 5DDD2469
P 8550 2950
F 0 "C11" H 8665 2996 50  0000 L CNN
F 1 "DNP" H 8665 2905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8588 2800 50  0001 C CNN
F 3 "" H 8550 2950 50  0001 C CNN
	1    8550 2950
	1    0    0    -1  
$EndComp
Connection ~ 8550 2800
Wire Wire Line
	8550 2800 8950 2800
Wire Wire Line
	8550 3100 8550 3400
Wire Wire Line
	8550 3400 8950 3400
Connection ~ 8950 3400
Text Label 6550 3700 2    50   ~ 0
TMDS_D0_N
$Comp
L device:R R4
U 1 1 5DDD2479
P 7000 3700
F 0 "R4" V 6900 3700 50  0000 C CNN
F 1 "200" V 7000 3700 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6930 3700 50  0001 C CNN
F 3 "" H 7000 3700 50  0001 C CNN
	1    7000 3700
	0    1    1    0   
$EndComp
$Comp
L device:R R12
U 1 1 5DDD2483
P 7300 3700
F 0 "R12" V 7200 3700 50  0000 C CNN
F 1 "200" V 7300 3700 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7230 3700 50  0001 C CNN
F 3 "" H 7300 3700 50  0001 C CNN
	1    7300 3700
	0    1    1    0   
$EndComp
$Comp
L device:R R20
U 1 1 5DDD248D
P 7600 3700
F 0 "R20" V 7500 3700 50  0000 C CNN
F 1 "200" V 7600 3700 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7530 3700 50  0001 C CNN
F 3 "" H 7600 3700 50  0001 C CNN
	1    7600 3700
	0    1    1    0   
$EndComp
$Comp
L device:R R28
U 1 1 5DDD2497
P 7900 3700
F 0 "R28" V 7800 3700 50  0000 C CNN
F 1 "200" V 7900 3700 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7830 3700 50  0001 C CNN
F 3 "" H 7900 3700 50  0001 C CNN
	1    7900 3700
	0    1    1    0   
$EndComp
$Comp
L device:R R36
U 1 1 5DDD24A1
P 8200 3700
F 0 "R36" V 8100 3700 50  0000 C CNN
F 1 "200" V 8200 3700 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8130 3700 50  0001 C CNN
F 3 "" H 8200 3700 50  0001 C CNN
	1    8200 3700
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J12
U 1 1 5DDD24AB
P 9500 3700
F 0 "J12" H 9600 3750 50  0000 L CNN
F 1 "SMA" H 9600 3650 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 9500 3700 50  0001 C CNN
F 3 "" H 9500 3700 50  0001 C CNN
	1    9500 3700
	1    0    0    -1  
$EndComp
Text Label 8350 3700 0    50   ~ 0
PROBE_D0_N
Text Label 9500 3900 0    50   ~ 0
GND
$Comp
L device:C C20
U 1 1 5DDD24B7
P 8950 3850
F 0 "C20" H 9065 3896 50  0000 L CNN
F 1 "DNP" H 9065 3805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8988 3700 50  0001 C CNN
F 3 "" H 8950 3850 50  0001 C CNN
	1    8950 3850
	1    0    0    -1  
$EndComp
Connection ~ 8950 3700
Wire Wire Line
	8950 3700 9350 3700
Wire Wire Line
	8350 3700 8550 3700
$Comp
L device:C C4
U 1 1 5DDD24C4
P 6700 3700
F 0 "C4" V 6448 3700 50  0000 C CNN
F 1 "0.1 uF" V 6539 3700 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6738 3550 50  0001 C CNN
F 3 "" H 6700 3700 50  0001 C CNN
	1    6700 3700
	0    1    1    0   
$EndComp
$Comp
L device:R R44
U 1 1 5DDD24CE
P 8950 4150
F 0 "R44" H 9020 4196 50  0000 L CNN
F 1 "DNP" H 9020 4105 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8880 4150 50  0001 C CNN
F 3 "" H 8950 4150 50  0001 C CNN
	1    8950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4300 9500 4300
Wire Wire Line
	9500 3900 9500 4300
$Comp
L device:C C12
U 1 1 5DDD24DA
P 8550 3850
F 0 "C12" H 8665 3896 50  0000 L CNN
F 1 "DNP" H 8665 3805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8588 3700 50  0001 C CNN
F 3 "" H 8550 3850 50  0001 C CNN
	1    8550 3850
	1    0    0    -1  
$EndComp
Connection ~ 8550 3700
Wire Wire Line
	8550 3700 8950 3700
Wire Wire Line
	8550 4000 8550 4300
Wire Wire Line
	8550 4300 8950 4300
Connection ~ 8950 4300
Text Label 6550 4600 2    50   ~ 0
TMDS_D1_P
$Comp
L device:R R5
U 1 1 5DDE8A05
P 7000 4600
F 0 "R5" V 6900 4600 50  0000 C CNN
F 1 "200" V 7000 4600 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6930 4600 50  0001 C CNN
F 3 "" H 7000 4600 50  0001 C CNN
	1    7000 4600
	0    1    1    0   
$EndComp
$Comp
L device:R R13
U 1 1 5DDE8A0F
P 7300 4600
F 0 "R13" V 7200 4600 50  0000 C CNN
F 1 "200" V 7300 4600 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7230 4600 50  0001 C CNN
F 3 "" H 7300 4600 50  0001 C CNN
	1    7300 4600
	0    1    1    0   
$EndComp
$Comp
L device:R R21
U 1 1 5DDE8A19
P 7600 4600
F 0 "R21" V 7500 4600 50  0000 C CNN
F 1 "200" V 7600 4600 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7530 4600 50  0001 C CNN
F 3 "" H 7600 4600 50  0001 C CNN
	1    7600 4600
	0    1    1    0   
$EndComp
$Comp
L device:R R29
U 1 1 5DDE8A23
P 7900 4600
F 0 "R29" V 7800 4600 50  0000 C CNN
F 1 "200" V 7900 4600 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7830 4600 50  0001 C CNN
F 3 "" H 7900 4600 50  0001 C CNN
	1    7900 4600
	0    1    1    0   
$EndComp
$Comp
L device:R R37
U 1 1 5DDE8A2D
P 8200 4600
F 0 "R37" V 8100 4600 50  0000 C CNN
F 1 "200" V 8200 4600 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8130 4600 50  0001 C CNN
F 3 "" H 8200 4600 50  0001 C CNN
	1    8200 4600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J13
U 1 1 5DDE8A37
P 9500 4600
F 0 "J13" H 9600 4650 50  0000 L CNN
F 1 "SMA" H 9600 4550 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 9500 4600 50  0001 C CNN
F 3 "" H 9500 4600 50  0001 C CNN
	1    9500 4600
	1    0    0    -1  
$EndComp
Text Label 8350 4600 0    50   ~ 0
PROBE_D1_P
Text Label 9500 4800 0    50   ~ 0
GND
$Comp
L device:C C21
U 1 1 5DDE8A43
P 8950 4750
F 0 "C21" H 9065 4796 50  0000 L CNN
F 1 "DNP" H 9065 4705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8988 4600 50  0001 C CNN
F 3 "" H 8950 4750 50  0001 C CNN
	1    8950 4750
	1    0    0    -1  
$EndComp
Connection ~ 8950 4600
Wire Wire Line
	8950 4600 9350 4600
Wire Wire Line
	8350 4600 8550 4600
$Comp
L device:C C5
U 1 1 5DDE8A50
P 6700 4600
F 0 "C5" V 6448 4600 50  0000 C CNN
F 1 "0.1 uF" V 6539 4600 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6738 4450 50  0001 C CNN
F 3 "" H 6700 4600 50  0001 C CNN
	1    6700 4600
	0    1    1    0   
$EndComp
$Comp
L device:R R45
U 1 1 5DDE8A5A
P 8950 5050
F 0 "R45" H 9020 5096 50  0000 L CNN
F 1 "DNP" H 9020 5005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8880 5050 50  0001 C CNN
F 3 "" H 8950 5050 50  0001 C CNN
	1    8950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5200 9500 5200
Wire Wire Line
	9500 4800 9500 5200
$Comp
L device:C C13
U 1 1 5DDE8A66
P 8550 4750
F 0 "C13" H 8665 4796 50  0000 L CNN
F 1 "DNP" H 8665 4705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8588 4600 50  0001 C CNN
F 3 "" H 8550 4750 50  0001 C CNN
	1    8550 4750
	1    0    0    -1  
$EndComp
Connection ~ 8550 4600
Wire Wire Line
	8550 4600 8950 4600
Wire Wire Line
	8550 4900 8550 5200
Wire Wire Line
	8550 5200 8950 5200
Connection ~ 8950 5200
Text Label 6550 5500 2    50   ~ 0
TMDS_D1_N
$Comp
L device:R R6
U 1 1 5DDE8A76
P 7000 5500
F 0 "R6" V 6900 5500 50  0000 C CNN
F 1 "200" V 7000 5500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6930 5500 50  0001 C CNN
F 3 "" H 7000 5500 50  0001 C CNN
	1    7000 5500
	0    1    1    0   
$EndComp
$Comp
L device:R R14
U 1 1 5DDE8A80
P 7300 5500
F 0 "R14" V 7200 5500 50  0000 C CNN
F 1 "200" V 7300 5500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7230 5500 50  0001 C CNN
F 3 "" H 7300 5500 50  0001 C CNN
	1    7300 5500
	0    1    1    0   
$EndComp
$Comp
L device:R R22
U 1 1 5DDE8A8A
P 7600 5500
F 0 "R22" V 7500 5500 50  0000 C CNN
F 1 "200" V 7600 5500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7530 5500 50  0001 C CNN
F 3 "" H 7600 5500 50  0001 C CNN
	1    7600 5500
	0    1    1    0   
$EndComp
$Comp
L device:R R30
U 1 1 5DDE8A94
P 7900 5500
F 0 "R30" V 7800 5500 50  0000 C CNN
F 1 "200" V 7900 5500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7830 5500 50  0001 C CNN
F 3 "" H 7900 5500 50  0001 C CNN
	1    7900 5500
	0    1    1    0   
$EndComp
$Comp
L device:R R38
U 1 1 5DDE8A9E
P 8200 5500
F 0 "R38" V 8100 5500 50  0000 C CNN
F 1 "200" V 8200 5500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8130 5500 50  0001 C CNN
F 3 "" H 8200 5500 50  0001 C CNN
	1    8200 5500
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J14
U 1 1 5DDE8AA8
P 9500 5500
F 0 "J14" H 9600 5550 50  0000 L CNN
F 1 "SMA" H 9600 5450 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 9500 5500 50  0001 C CNN
F 3 "" H 9500 5500 50  0001 C CNN
	1    9500 5500
	1    0    0    -1  
$EndComp
Text Label 8350 5500 0    50   ~ 0
PROBE_D1_N
Text Label 9500 5700 0    50   ~ 0
GND
$Comp
L device:C C22
U 1 1 5DDE8AB4
P 8950 5650
F 0 "C22" H 9065 5696 50  0000 L CNN
F 1 "DNP" H 9065 5605 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8988 5500 50  0001 C CNN
F 3 "" H 8950 5650 50  0001 C CNN
	1    8950 5650
	1    0    0    -1  
$EndComp
Connection ~ 8950 5500
Wire Wire Line
	8950 5500 9350 5500
Wire Wire Line
	8350 5500 8550 5500
$Comp
L device:C C6
U 1 1 5DDE8AC1
P 6700 5500
F 0 "C6" V 6448 5500 50  0000 C CNN
F 1 "0.1 uF" V 6539 5500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6738 5350 50  0001 C CNN
F 3 "" H 6700 5500 50  0001 C CNN
	1    6700 5500
	0    1    1    0   
$EndComp
$Comp
L device:R R46
U 1 1 5DDE8ACB
P 8950 5950
F 0 "R46" H 9020 5996 50  0000 L CNN
F 1 "DNP" H 9020 5905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8880 5950 50  0001 C CNN
F 3 "" H 8950 5950 50  0001 C CNN
	1    8950 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6100 9500 6100
Wire Wire Line
	9500 5700 9500 6100
$Comp
L device:C C14
U 1 1 5DDE8AD7
P 8550 5650
F 0 "C14" H 8665 5696 50  0000 L CNN
F 1 "DNP" H 8665 5605 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8588 5500 50  0001 C CNN
F 3 "" H 8550 5650 50  0001 C CNN
	1    8550 5650
	1    0    0    -1  
$EndComp
Connection ~ 8550 5500
Wire Wire Line
	8550 5500 8950 5500
Wire Wire Line
	8550 5800 8550 6100
Wire Wire Line
	8550 6100 8950 6100
Connection ~ 8950 6100
Text Label 6550 6450 2    50   ~ 0
TMDS_D2_P
$Comp
L device:R R7
U 1 1 5DDF23AC
P 7000 6450
F 0 "R7" V 6900 6450 50  0000 C CNN
F 1 "200" V 7000 6450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6930 6450 50  0001 C CNN
F 3 "" H 7000 6450 50  0001 C CNN
	1    7000 6450
	0    1    1    0   
$EndComp
$Comp
L device:R R15
U 1 1 5DDF23B6
P 7300 6450
F 0 "R15" V 7200 6450 50  0000 C CNN
F 1 "200" V 7300 6450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7230 6450 50  0001 C CNN
F 3 "" H 7300 6450 50  0001 C CNN
	1    7300 6450
	0    1    1    0   
$EndComp
$Comp
L device:R R23
U 1 1 5DDF23C0
P 7600 6450
F 0 "R23" V 7500 6450 50  0000 C CNN
F 1 "200" V 7600 6450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7530 6450 50  0001 C CNN
F 3 "" H 7600 6450 50  0001 C CNN
	1    7600 6450
	0    1    1    0   
$EndComp
$Comp
L device:R R31
U 1 1 5DDF23CA
P 7900 6450
F 0 "R31" V 7800 6450 50  0000 C CNN
F 1 "200" V 7900 6450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7830 6450 50  0001 C CNN
F 3 "" H 7900 6450 50  0001 C CNN
	1    7900 6450
	0    1    1    0   
$EndComp
$Comp
L device:R R39
U 1 1 5DDF23D4
P 8200 6450
F 0 "R39" V 8100 6450 50  0000 C CNN
F 1 "200" V 8200 6450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8130 6450 50  0001 C CNN
F 3 "" H 8200 6450 50  0001 C CNN
	1    8200 6450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J15
U 1 1 5DDF23DE
P 9500 6450
F 0 "J15" H 9600 6500 50  0000 L CNN
F 1 "SMA" H 9600 6400 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 9500 6450 50  0001 C CNN
F 3 "" H 9500 6450 50  0001 C CNN
	1    9500 6450
	1    0    0    -1  
$EndComp
Text Label 8350 6450 0    50   ~ 0
PROBE_D2_P
Text Label 9500 6650 0    50   ~ 0
GND
$Comp
L device:C C23
U 1 1 5DDF23EA
P 8950 6600
F 0 "C23" H 9065 6646 50  0000 L CNN
F 1 "DNP" H 9065 6555 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8988 6450 50  0001 C CNN
F 3 "" H 8950 6600 50  0001 C CNN
	1    8950 6600
	1    0    0    -1  
$EndComp
Connection ~ 8950 6450
Wire Wire Line
	8950 6450 9350 6450
Wire Wire Line
	8350 6450 8550 6450
$Comp
L device:C C7
U 1 1 5DDF23F7
P 6700 6450
F 0 "C7" V 6448 6450 50  0000 C CNN
F 1 "0.1 uF" V 6539 6450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6738 6300 50  0001 C CNN
F 3 "" H 6700 6450 50  0001 C CNN
	1    6700 6450
	0    1    1    0   
$EndComp
$Comp
L device:R R47
U 1 1 5DDF2401
P 8950 6900
F 0 "R47" H 9020 6946 50  0000 L CNN
F 1 "DNP" H 9020 6855 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8880 6900 50  0001 C CNN
F 3 "" H 8950 6900 50  0001 C CNN
	1    8950 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 7050 9500 7050
Wire Wire Line
	9500 6650 9500 7050
$Comp
L device:C C15
U 1 1 5DDF240D
P 8550 6600
F 0 "C15" H 8665 6646 50  0000 L CNN
F 1 "DNP" H 8665 6555 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8588 6450 50  0001 C CNN
F 3 "" H 8550 6600 50  0001 C CNN
	1    8550 6600
	1    0    0    -1  
$EndComp
Connection ~ 8550 6450
Wire Wire Line
	8550 6450 8950 6450
Wire Wire Line
	8550 6750 8550 7050
Wire Wire Line
	8550 7050 8950 7050
Connection ~ 8950 7050
Text Label 6550 7350 2    50   ~ 0
TMDS_D2_N
$Comp
L device:R R8
U 1 1 5DDF241D
P 7000 7350
F 0 "R8" V 6900 7350 50  0000 C CNN
F 1 "200" V 7000 7350 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6930 7350 50  0001 C CNN
F 3 "" H 7000 7350 50  0001 C CNN
	1    7000 7350
	0    1    1    0   
$EndComp
$Comp
L device:R R16
U 1 1 5DDF2427
P 7300 7350
F 0 "R16" V 7200 7350 50  0000 C CNN
F 1 "200" V 7300 7350 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7230 7350 50  0001 C CNN
F 3 "" H 7300 7350 50  0001 C CNN
	1    7300 7350
	0    1    1    0   
$EndComp
$Comp
L device:R R24
U 1 1 5DDF2431
P 7600 7350
F 0 "R24" V 7500 7350 50  0000 C CNN
F 1 "200" V 7600 7350 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7530 7350 50  0001 C CNN
F 3 "" H 7600 7350 50  0001 C CNN
	1    7600 7350
	0    1    1    0   
$EndComp
$Comp
L device:R R32
U 1 1 5DDF243B
P 7900 7350
F 0 "R32" V 7800 7350 50  0000 C CNN
F 1 "200" V 7900 7350 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7830 7350 50  0001 C CNN
F 3 "" H 7900 7350 50  0001 C CNN
	1    7900 7350
	0    1    1    0   
$EndComp
$Comp
L device:R R40
U 1 1 5DDF2445
P 8200 7350
F 0 "R40" V 8100 7350 50  0000 C CNN
F 1 "200" V 8200 7350 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8130 7350 50  0001 C CNN
F 3 "" H 8200 7350 50  0001 C CNN
	1    8200 7350
	0    1    1    0   
$EndComp
Text Label 8350 7350 0    50   ~ 0
PROBE_D2_N
Text Label 9500 7550 0    50   ~ 0
GND
$Comp
L device:C C24
U 1 1 5DDF245B
P 8950 7500
F 0 "C24" H 9065 7546 50  0000 L CNN
F 1 "DNP" H 9065 7455 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8988 7350 50  0001 C CNN
F 3 "" H 8950 7500 50  0001 C CNN
	1    8950 7500
	1    0    0    -1  
$EndComp
Connection ~ 8950 7350
Wire Wire Line
	8950 7350 9350 7350
Wire Wire Line
	8350 7350 8550 7350
$Comp
L device:C C8
U 1 1 5DDF2468
P 6700 7350
F 0 "C8" V 6448 7350 50  0000 C CNN
F 1 "0.1 uF" V 6539 7350 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6738 7200 50  0001 C CNN
F 3 "" H 6700 7350 50  0001 C CNN
	1    6700 7350
	0    1    1    0   
$EndComp
$Comp
L device:R R48
U 1 1 5DDF2472
P 8950 7800
F 0 "R48" H 9020 7846 50  0000 L CNN
F 1 "DNP" H 9020 7755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 8880 7800 50  0001 C CNN
F 3 "" H 8950 7800 50  0001 C CNN
	1    8950 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 7950 9500 7950
Wire Wire Line
	9500 7550 9500 7950
$Comp
L device:C C16
U 1 1 5DDF247E
P 8550 7500
F 0 "C16" H 8665 7546 50  0000 L CNN
F 1 "DNP" H 8665 7455 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8588 7350 50  0001 C CNN
F 3 "" H 8550 7500 50  0001 C CNN
	1    8550 7500
	1    0    0    -1  
$EndComp
Connection ~ 8550 7350
Wire Wire Line
	8550 7350 8950 7350
Wire Wire Line
	8550 7650 8550 7950
Wire Wire Line
	8550 7950 8950 7950
Connection ~ 8950 7950
$Comp
L Connector:Conn_Coaxial J16
U 1 1 5DDF244F
P 9500 7350
F 0 "J16" H 9600 7400 50  0000 L CNN
F 1 "SMA" H 9600 7300 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 9500 7350 50  0001 C CNN
F 3 "" H 9500 7350 50  0001 C CNN
	1    9500 7350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J17
U 1 1 5DDFCE72
P 1550 7150
F 0 "J17" H 1650 7200 50  0000 L CNN
F 1 "SMA" H 1650 7100 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 1550 7150 50  0001 C CNN
F 3 "" H 1550 7150 50  0001 C CNN
	1    1550 7150
	1    0    0    -1  
$EndComp
Text Label 1400 7150 2    50   ~ 0
HEC_PROBE_IN_P
Text Label 1550 7350 0    50   ~ 0
GND
$Comp
L Connector:Conn_Coaxial J18
U 1 1 5DDFE209
P 1550 7550
F 0 "J18" H 1650 7600 50  0000 L CNN
F 1 "SMA" H 1650 7500 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 1550 7550 50  0001 C CNN
F 3 "" H 1550 7550 50  0001 C CNN
	1    1550 7550
	1    0    0    -1  
$EndComp
Text Label 1400 7550 2    50   ~ 0
HEC_PROBE_IN_N
Text Label 1550 7750 0    50   ~ 0
GND
$Comp
L Connector:Conn_Coaxial J19
U 1 1 5DE0059B
P 1550 8000
F 0 "J19" H 1650 8050 50  0000 L CNN
F 1 "SMA" H 1650 7950 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 1550 8000 50  0001 C CNN
F 3 "" H 1550 8000 50  0001 C CNN
	1    1550 8000
	1    0    0    -1  
$EndComp
Text Label 1400 8000 2    50   ~ 0
HEC_PROBE_OUT_P
Text Label 1550 8200 0    50   ~ 0
GND
$Comp
L Connector:Conn_Coaxial J20
U 1 1 5DE005A7
P 1550 8400
F 0 "J20" H 1650 8450 50  0000 L CNN
F 1 "SMA" H 1650 8350 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 1550 8400 50  0001 C CNN
F 3 "" H 1550 8400 50  0001 C CNN
	1    1550 8400
	1    0    0    -1  
$EndComp
Text Label 1400 8400 2    50   ~ 0
HEC_PROBE_OUT_N
Text Label 1550 8600 0    50   ~ 0
GND
$EndSCHEMATC