EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-17"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3100 1750 0    50   Input ~ 0
VGAIN_P
Text HLabel 3100 1850 0    50   Input ~ 0
VGAIN_N
Text HLabel 3050 2050 0    50   Input ~ 0
GND
Text Notes 3650 2500 0    50   ~ 0
TODO: single ended LMH6522 with +2 dB fixed gain\nand clipper circuit to keep output below 1.8V on both legs
Text HLabel 4850 1750 2    50   Output ~ 0
VOUT_P
Text HLabel 4850 1850 2    50   Output ~ 0
VOUT_N
Text HLabel 3900 1900 0    50   Input ~ 0
0V9_REF
$EndSCHEMATC
