EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 17
Title "MAXWELL Main Board"
Date "2020-06-19"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8200 1950 0    50   ~ 0
Rail design targets including safety margin\n----------------------------------------\nINPUT: 24-48V at 5A\nIntermediate rail: 12V @ 9A\n1V0: 8A\n1V2: 1.5A\n1V5: 6A\n1V8: 1A\n2V0: 500 mA\n2V5: 1A\n3V3: 3A\n5V0: 100 mA\n5V0N: 100 mA\n12V0: 4A\n19V2 for LCD: 75 mA (constant current, nominally 40 mA)\nDDR RAM Vref, Vtt: standard regulator
Text HLabel 2000 750  2    50   Output ~ 0
12V0
Text HLabel 2000 1050 2    50   Output ~ 0
GND
Text HLabel 3400 6500 2    50   Output ~ 0
3V3
Text HLabel 3950 5650 0    50   Output ~ 0
VBACKLIGHT
Text HLabel 3900 5850 0    50   Output ~ 0
2V5
Text HLabel 3900 5950 0    50   Output ~ 0
2V0
Text HLabel 2000 2350 2    50   Output ~ 0
1V2
Text HLabel 5600 4950 0    50   Output ~ 0
5V0
Text HLabel 5550 5100 0    50   Output ~ 0
5V0_N
$Sheet
S 1000 700  1000 750 
U 611CBEBF
F0 "Intermediate and Standby Rails" 50
F1 "intermediate-power.sch" 50
F2 "GND" O R 2000 1050 50 
F3 "12V0" O R 2000 750 50 
F4 "5V0_SB" O R 2000 850 50 
F5 "3V3_SB" O R 2000 950 50 
$EndSheet
$Sheet
S 1000 1700 1000 2250
U 61296AEB
F0 "1.xV rails" 50
F1 "1v-rails.sch" 50
F2 "1V0_1" O R 2000 1750 50 
F3 "1V0_1_GOOD" O R 2000 1950 50 
F4 "1V0_2" O R 2000 1850 50 
F5 "1V0_2_GOOD" O R 2000 2050 50 
F6 "1V5" O R 2000 2750 50 
F7 "1V5_GOOD" O R 2000 2850 50 
F8 "1V5_EN" I R 2000 2950 50 
F9 "12V0" I L 1000 1750 50 
F10 "GND" I L 1000 2050 50 
F11 "1V8_GOOD" O R 2000 3250 50 
F12 "1V8_EN" I R 2000 3350 50 
F13 "1V8" O R 2000 3150 50 
F14 "1V0_EN" I R 2000 2150 50 
F15 "1V2_EN" I R 2000 2550 50 
F16 "1V2" O R 2000 2350 50 
F17 "1V2_GOOD" O R 2000 2450 50 
F18 "5V0_SB" I L 1000 1850 50 
F19 "RAM_VREF" O R 2000 3550 50 
F20 "RAM_VTT" O R 2000 3650 50 
F21 "VTT_GOOD" O R 2000 3750 50 
F22 "VTT_EN" I R 2000 3850 50 
F23 "3V3_SB" I L 1000 1950 50 
$EndSheet
Text Label 1000 1750 2    50   ~ 0
12V0
Text Label 1000 2050 2    50   ~ 0
GND
Text HLabel 2000 1750 2    50   Output ~ 0
1V0_1
Text HLabel 2000 1850 2    50   Output ~ 0
1V0_2
Text HLabel 2000 2750 2    50   Output ~ 0
1V5
Text HLabel 2000 2850 2    50   Output ~ 0
1V5_GOOD
Text HLabel 2000 2050 2    50   Output ~ 0
1V0_2_GOOD
Text HLabel 2000 1950 2    50   Output ~ 0
1V0_1_GOOD
Text HLabel 2000 2950 2    50   Input ~ 0
1V5_EN
Text HLabel 2000 3150 2    50   Output ~ 0
1V8
Text HLabel 2000 3250 2    50   Output ~ 0
1V8_GOOD
Text HLabel 2000 3350 2    50   Input ~ 0
1V8_EN
Text HLabel 2000 2150 2    50   Input ~ 0
1V0_EN
Text HLabel 2000 2450 2    50   Output ~ 0
1V2_GOOD
Text HLabel 2000 2550 2    50   Input ~ 0
1V2_EN
Text HLabel 2000 950  2    50   Output ~ 0
3V3_SB
Text Label 1000 1850 2    50   ~ 0
5V0_SB
Text Notes 2050 4850 0    50   ~ 0
TODO: INA233s on all power rails?
Text Label 2000 850  0    50   ~ 0
5V0_SB
Text HLabel 2000 3550 2    50   Output ~ 0
RAM_VREF
Text HLabel 2000 3650 2    50   Output ~ 0
RAM_VTT
Text HLabel 2000 3750 2    50   Output ~ 0
VTT_GOOD
Text HLabel 2000 3850 2    50   Input ~ 0
VTT_EN
Text Label 1000 1950 2    50   ~ 0
3V3_SB
$EndSCHEMATC
