EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 16
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
Text HLabel 2000 1050 2    50   Output ~ 0
12V0
Text HLabel 2000 1150 2    50   Output ~ 0
GND
Text HLabel 8750 4200 0    50   Output ~ 0
3V3
Text HLabel 8800 4350 0    50   Output ~ 0
VBACKLIGHT
Text HLabel 8750 4550 0    50   Output ~ 0
2V5
Text HLabel 8750 4650 0    50   Output ~ 0
2V0
Text HLabel 8750 4850 0    50   Output ~ 0
1V8
Text HLabel 8700 5000 0    50   Output ~ 0
1V5
Text HLabel 8700 5100 0    50   Output ~ 0
1V2
Text HLabel 8700 5300 0    50   Output ~ 0
1V0
Text HLabel 10050 4100 0    50   Output ~ 0
RAM_VREF
Text HLabel 10000 4200 0    50   Output ~ 0
RAM_VTT
Text Notes 6750 4350 0    50   ~ 0
Vtt needs to ramp after 1V5
Text HLabel 10450 3650 0    50   Output ~ 0
5V0
Text HLabel 10400 3800 0    50   Output ~ 0
5V0_N
$Sheet
S 1000 1000 1000 250 
U 611CBEBF
F0 "12V Intermediate Rail" 50
F1 "intermediate-power.sch" 50
F2 "GND" O R 2000 1150 50 
F3 "12V0" O R 2000 1050 50 
$EndSheet
$EndSCHEMATC
