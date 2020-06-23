EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 18
Title "MAXWELL Main Board"
Date "2020-06-23"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8200 1950 0    50   ~ 0
Rail design targets including safety margin\n----------------------------------------\nINPUT: 24-48V at 5A\nIntermediate rail: 12V @ 9A\n1V0: 8A\n1V2: 1.5A\n1V5: 6A\n1V8: 1A\n2V0: 500 mA\n2V5: 1A\n3V3: 3A\n5V0: 100 mA\n5V0N: 100 mA\n12V0: 4A\n21V5 for LCD: Constant current, nominally 33 mA\nDDR RAM Vref, Vtt: standard regulator
Text HLabel 2200 750  2    50   Output ~ 0
12V0
Text HLabel 2200 1050 2    50   Output ~ 0
GND
Text HLabel 2200 5200 2    50   Output ~ 0
3V3
Text HLabel 2200 6200 2    50   Output ~ 0
VBACKLIGHT_P
Text HLabel 2200 5500 2    50   Output ~ 0
2V5
Text HLabel 2200 5800 2    50   Output ~ 0
2V0
Text HLabel 2200 2350 2    50   Output ~ 0
1V2
Text HLabel 2200 4600 2    50   Output ~ 0
5V0
Text HLabel 2200 4900 2    50   Output ~ 0
5V0_N
$Sheet
S 1200 700  1000 750 
U 611CBEBF
F0 "Intermediate and Standby Rails" 50
F1 "intermediate-power.sch" 50
F2 "GND" O R 2200 1050 50 
F3 "12V0" O R 2200 750 50 
F4 "5V0_SB" O R 2200 850 50 
F5 "3V3_SB" O R 2200 950 50 
F6 "I2C_SDA" B L 1200 750 50 
F7 "I2C_SCL" I L 1200 850 50 
$EndSheet
$Sheet
S 1200 1700 1000 2600
U 61296AEB
F0 "1.xV rails" 50
F1 "1v-rails.sch" 50
F2 "1V0_1" O R 2200 1750 50 
F3 "1V0_1_GOOD" O R 2200 1950 50 
F4 "1V0_2" O R 2200 1850 50 
F5 "1V0_2_GOOD" O R 2200 2050 50 
F6 "1V5" O R 2200 2750 50 
F7 "1V5_GOOD" O R 2200 2850 50 
F8 "1V5_EN" I R 2200 2950 50 
F9 "12V0" I L 1200 1750 50 
F10 "GND" I L 1200 2050 50 
F11 "1V8_GOOD" O R 2200 3250 50 
F12 "1V8_EN" I R 2200 3350 50 
F13 "1V8" O R 2200 3150 50 
F14 "1V0_EN" I R 2200 2150 50 
F15 "1V2_EN" I R 2200 2550 50 
F16 "1V2" O R 2200 2350 50 
F17 "1V2_GOOD" O R 2200 2450 50 
F18 "5V0_SB" I L 1200 1850 50 
F19 "RAM_VREF" O R 2200 3550 50 
F20 "RAM_VTT" O R 2200 3650 50 
F21 "VTT_GOOD" O R 2200 3750 50 
F22 "VTT_EN" I R 2200 3850 50 
F23 "3V3_SB" I L 1200 1950 50 
F24 "I2C_SDA" B L 1200 2250 50 
F25 "I2C_SCL" I L 1200 2350 50 
F26 "0V5_GOOD" O R 2200 4250 50 
F27 "0V5_EN" I R 2200 4150 50 
F28 "0V5" O R 2200 4050 50 
$EndSheet
Text Label 1200 1750 2    50   ~ 0
12V0
Text Label 1200 2050 2    50   ~ 0
GND
Text HLabel 2200 1750 2    50   Output ~ 0
1V0_1
Text HLabel 2200 1850 2    50   Output ~ 0
1V0_2
Text HLabel 2200 2750 2    50   Output ~ 0
1V5
Text HLabel 2200 2850 2    50   Output ~ 0
1V5_GOOD
Text HLabel 2200 2050 2    50   Output ~ 0
1V0_2_GOOD
Text HLabel 2200 1950 2    50   Output ~ 0
1V0_1_GOOD
Text HLabel 2200 2950 2    50   Input ~ 0
1V5_EN
Text HLabel 2200 3150 2    50   Output ~ 0
1V8
Text HLabel 2200 3250 2    50   Output ~ 0
1V8_GOOD
Text HLabel 2200 3350 2    50   Input ~ 0
1V8_EN
Text HLabel 2200 2150 2    50   Input ~ 0
1V0_EN
Text HLabel 2200 2450 2    50   Output ~ 0
1V2_GOOD
Text HLabel 2200 2550 2    50   Input ~ 0
1V2_EN
Text HLabel 2200 950  2    50   Output ~ 0
3V3_SB
Text Label 1200 1850 2    50   ~ 0
5V0_SB
Text Label 2200 850  0    50   ~ 0
5V0_SB
Text HLabel 2200 3550 2    50   Output ~ 0
RAM_VREF
Text HLabel 2200 3650 2    50   Output ~ 0
RAM_VTT
Text HLabel 2200 3750 2    50   Output ~ 0
VTT_GOOD
Text HLabel 2200 3850 2    50   Input ~ 0
VTT_EN
Text Label 1200 1950 2    50   ~ 0
3V3_SB
Text HLabel 1200 2250 0    50   BiDi ~ 0
PSU_I2C_SDA
Text HLabel 1200 2350 0    50   Input ~ 0
PSU_I2C_SCL
Text HLabel 2200 4800 2    50   Input ~ 0
5V0_EN
Text HLabel 2200 5100 2    50   Input ~ 0
5V0_N_EN
Text HLabel 2200 5400 2    50   Input ~ 0
3V3_EN
Text HLabel 2200 5700 2    50   Input ~ 0
2V5_EN
Text HLabel 2200 6000 2    50   Input ~ 0
2V0_EN
Text Label 1200 4600 2    50   ~ 0
12V0
Text Label 1200 4900 2    50   ~ 0
GND
Text HLabel 2200 4700 2    50   Output ~ 0
5V0_GOOD
Text HLabel 2200 5300 2    50   Output ~ 0
3V3_GOOD
Text HLabel 2200 5600 2    50   Output ~ 0
2V5_GOOD
Text HLabel 2200 5900 2    50   Output ~ 0
2V0_GOOD
Text Label 1200 5100 2    50   ~ 0
PSU_I2C_SDA
Text Label 1200 4700 2    50   ~ 0
5V0_SB
Text HLabel 2200 4050 2    50   Output ~ 0
0V5
Text HLabel 2200 4250 2    50   Output ~ 0
0V5_GOOD
Text HLabel 2200 4150 2    50   Input ~ 0
0V5_EN
$Sheet
S 1200 4550 1000 2250
U 61580EA1
F0 "Higher voltage rails" 50
F1 "higher-rails.sch" 50
F2 "5V0" O R 2200 4600 50 
F3 "5V0_N" O R 2200 4900 50 
F4 "3V3" O R 2200 5200 50 
F5 "2V5" O R 2200 5500 50 
F6 "2V0" O R 2200 5800 50 
F7 "5V0_GOOD" O R 2200 4700 50 
F9 "3V3_GOOD" O R 2200 5300 50 
F10 "2V5_GOOD" O R 2200 5600 50 
F11 "2V0_GOOD" O R 2200 5900 50 
F12 "5V0_EN" I R 2200 4800 50 
F13 "5V0_N_EN" I R 2200 5100 50 
F14 "3V3_EN" I R 2200 5400 50 
F15 "2V5_EN" I R 2200 5700 50 
F16 "2V0_EN" I R 2200 6000 50 
F17 "12V0" I L 1200 4600 50 
F18 "GND" I L 1200 4900 50 
F19 "I2C_SDA" B L 1200 5100 50 
F20 "I2C_SCL" I L 1200 5200 50 
F21 "5V0_SB" I L 1200 4700 50 
F22 "VBACKLIGHT_P" O R 2200 6200 50 
F23 "VBACKLIGHT_EN" I R 2200 6300 50 
F24 "VBACKLIGHT_N" O R 2200 6400 50 
F25 "BACKLIGHT_PWM" I R 2200 6500 50 
F26 "3V3_SB" I L 1200 4800 50 
$EndSheet
Text HLabel 2200 6400 2    50   Output ~ 0
VBACKLIGHT_N
Text HLabel 2200 6300 2    50   Input ~ 0
VBACKLIGHT_EN
Text HLabel 2200 6500 2    50   Input ~ 0
BACKLIGHT_PWM
Text Label 1200 5200 2    50   ~ 0
PSU_I2C_SCL
Text Label 1200 4800 2    50   ~ 0
3V3_SB
Text Label 1200 750  2    50   ~ 0
PSU_I2C_SDA
Text Label 1200 850  2    50   ~ 0
PSU_I2C_SCL
$Comp
L special-azonenberg:AT30TS74_UDFN U80
U 1 1 61CA6312
P 4600 2250
F 0 "U80" H 4900 2925 50  0000 C CNN
F 1 "AT30TS74_UDFN" H 4900 2834 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_2x3MM_TALL" H 4600 2250 50  0001 C CNN
F 3 "" H 4600 2250 50  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
Text Label 4500 1800 2    50   ~ 0
3V3_SB
Text Label 4500 1900 2    50   ~ 0
GND
Text Label 4500 2100 2    50   ~ 0
PSU_I2C_SDA
Text Label 4500 2200 2    50   ~ 0
PSU_I2C_SCL
Text HLabel 5300 2200 2    50   Output ~ 0
TEMP1_ALERT
Text Label 5300 2000 0    50   ~ 0
3V3_SB
Text Notes 4600 2350 0    50   ~ 0
Addr = 8'h98
$Comp
L device:C C404
U 1 1 61CB0CF8
P 6400 2000
F 0 "C404" H 6515 2046 50  0000 L CNN
F 1 "0.47 uF" H 6515 1955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6438 1850 50  0001 C CNN
F 3 "" H 6400 2000 50  0001 C CNN
	1    6400 2000
	1    0    0    -1  
$EndComp
Text Label 6400 1850 2    50   ~ 0
3V3_SB
Text Label 6400 2150 2    50   ~ 0
GND
Text Label 5300 1800 0    50   ~ 0
GND
Text Label 5300 1900 0    50   ~ 0
GND
$Comp
L special-azonenberg:AT30TS74_UDFN U81
U 1 1 61CC9F8C
P 4600 3200
F 0 "U81" H 4900 3875 50  0000 C CNN
F 1 "AT30TS74_UDFN" H 4900 3784 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_2x3MM_TALL" H 4600 3200 50  0001 C CNN
F 3 "" H 4600 3200 50  0001 C CNN
	1    4600 3200
	1    0    0    -1  
$EndComp
Text Label 4500 2750 2    50   ~ 0
3V3_SB
Text Label 4500 2850 2    50   ~ 0
GND
Text Label 4500 3050 2    50   ~ 0
PSU_I2C_SDA
Text Label 4500 3150 2    50   ~ 0
PSU_I2C_SCL
Text HLabel 5300 3150 2    50   Output ~ 0
TEMP2_ALERT
Text Label 5300 2950 0    50   ~ 0
3V3_SB
Text Notes 4600 3300 0    50   ~ 0
Addr = 8'h9a
$Comp
L device:C C405
U 1 1 61CC9F9D
P 6400 2950
F 0 "C405" H 6515 2996 50  0000 L CNN
F 1 "0.47 uF" H 6515 2905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6438 2800 50  0001 C CNN
F 3 "" H 6400 2950 50  0001 C CNN
	1    6400 2950
	1    0    0    -1  
$EndComp
Text Label 6400 2800 2    50   ~ 0
3V3_SB
Text Label 6400 3100 2    50   ~ 0
GND
Text Label 5300 2850 0    50   ~ 0
GND
Text Label 5300 2750 0    50   ~ 0
3V3_SB
$Comp
L special-azonenberg:AT30TS74_UDFN U82
U 1 1 61CCABD4
P 4600 4100
F 0 "U82" H 4900 4775 50  0000 C CNN
F 1 "AT30TS74_UDFN" H 4900 4684 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_2x3MM_TALL" H 4600 4100 50  0001 C CNN
F 3 "" H 4600 4100 50  0001 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
Text Label 4500 3650 2    50   ~ 0
3V3_SB
Text Label 4500 3750 2    50   ~ 0
GND
Text Label 4500 3950 2    50   ~ 0
PSU_I2C_SDA
Text Label 4500 4050 2    50   ~ 0
PSU_I2C_SCL
Text HLabel 5300 4050 2    50   Output ~ 0
TEMP3_ALERT
Text Label 5300 3850 0    50   ~ 0
3V3_SB
Text Notes 4600 4200 0    50   ~ 0
Addr = 8'h9c
$Comp
L device:C C406
U 1 1 61CCABE5
P 6400 3850
F 0 "C406" H 6515 3896 50  0000 L CNN
F 1 "0.47 uF" H 6515 3805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6438 3700 50  0001 C CNN
F 3 "" H 6400 3850 50  0001 C CNN
	1    6400 3850
	1    0    0    -1  
$EndComp
Text Label 6400 3700 2    50   ~ 0
3V3_SB
Text Label 6400 4000 2    50   ~ 0
GND
Text Label 5300 3650 0    50   ~ 0
GND
$Comp
L special-azonenberg:AT30TS74_UDFN U83
U 1 1 61CCABF3
P 4600 5050
F 0 "U83" H 4900 5725 50  0000 C CNN
F 1 "AT30TS74_UDFN" H 4900 5634 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_2x3MM_TALL" H 4600 5050 50  0001 C CNN
F 3 "" H 4600 5050 50  0001 C CNN
	1    4600 5050
	1    0    0    -1  
$EndComp
Text Label 4500 4600 2    50   ~ 0
3V3_SB
Text Label 4500 4700 2    50   ~ 0
GND
Text Label 4500 4900 2    50   ~ 0
PSU_I2C_SDA
Text Label 4500 5000 2    50   ~ 0
PSU_I2C_SCL
Text HLabel 5300 5000 2    50   Output ~ 0
TEMP4_ALERT
Text Label 5300 4800 0    50   ~ 0
3V3_SB
Text Notes 4600 5150 0    50   ~ 0
Addr = 8'h9e
$Comp
L device:C C407
U 1 1 61CCAC04
P 6400 4800
F 0 "C407" H 6515 4846 50  0000 L CNN
F 1 "0.47 uF" H 6515 4755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6438 4650 50  0001 C CNN
F 3 "" H 6400 4800 50  0001 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
Text Label 6400 4650 2    50   ~ 0
3V3_SB
Text Label 6400 4950 2    50   ~ 0
GND
Text Label 5300 4600 0    50   ~ 0
3V3_SB
Text Label 5300 3750 0    50   ~ 0
3V3_SB
Text Label 5300 4700 0    50   ~ 0
3V3_SB
$EndSCHEMATC
