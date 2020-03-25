EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-24"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3900 7150 2    50   Output ~ 0
0V5_REF
Text Notes 4150 5900 0    50   ~ 0
+4.096V voltage reference\nShifted down to -5V\nOUT pin is thus -0.904V\nDivider output is -516 mV
Text HLabel 3850 5550 2    50   Output ~ 0
N0V5_REF
Text Notes 2550 4350 0    50   ~ 0
Generate +/- 0.5V ref's with voltage dividers and bigger caps
Text Notes 2550 4250 0    50   ~ 0
13K, 1.5K -> 0.517V for +/- 5V rails
Text Notes 2550 4100 0    50   ~ 0
LT3093
$EndSCHEMATC
