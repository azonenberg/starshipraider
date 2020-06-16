EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 15
Title "MAXWELL Main Board"
Date "2020-06-16"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1850 1950 0    50   ~ 0
Rail design targets including safety margin\n--------------------------------------------------\nINPUT: 24-48V at 5A\nIntermediate rail: 12V @ 9A\n1V0: 8A\n1V2: 1A\n1V5: 6A\n1V8: 1A\n2V0: 500 mA\n2V5: 750 mA\n3V3: 4A\n19V2 for LCD: 75 mA
Text HLabel 2350 2750 0    50   Output ~ 0
12V0
Text HLabel 2350 2850 0    50   Output ~ 0
GND
Text HLabel 2250 3200 0    50   Output ~ 0
3V3
Text HLabel 2300 3350 0    50   Output ~ 0
VBACKLIGHT
Text HLabel 2250 3550 0    50   Output ~ 0
2V5
Text HLabel 2250 3650 0    50   Output ~ 0
2V0
Text HLabel 2250 3850 0    50   Output ~ 0
1V8
Text HLabel 2200 4000 0    50   Output ~ 0
1V5
Text HLabel 2200 4100 0    50   Output ~ 0
1V2
Text HLabel 2200 4300 0    50   Output ~ 0
1V0
Text HLabel 3550 3100 0    50   Output ~ 0
RAM_VREF
Text HLabel 3500 3200 0    50   Output ~ 0
RAM_VTT
Text Notes 4400 2250 0    50   ~ 0
Vtt needs to ramp after 1V5
$EndSCHEMATC
