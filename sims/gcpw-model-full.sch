<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-60,1700,932,1,0,0>
  <Grid=10,10,1>
  <DataSet=gcpw-model-full.dat>
  <DataDisplay=gcpw-model-full.dpl>
  <OpenDisplay=1>
  <Script=gcpw-model-full.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <VProbe Pr1 1 70 100 28 -31 0 0>
  <GND *1 5 80 120 0 0 0 0>
  <R R7 1 60 230 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND *2 5 60 260 0 0 0 0>
  <TLIN Line4 1 130 600 -26 20 0 0 "200 Ohm" 1 "6 mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line9 1 420 600 -26 20 0 0 "50 Ohm" 1 "10 mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line10 1 420 740 -26 20 0 0 "50 Ohm" 1 "10 mm" 1 "0 dB" 0 "26.85" 0>
  <GND * 5 520 660 0 0 0 0>
  <GND * 5 520 800 0 0 0 0>
  <GND * 5 130 410 0 0 0 0>
  <GND * 5 320 410 0 0 0 0>
  <GND * 5 530 410 0 0 0 0>
  <GND * 5 720 410 0 0 0 0>
  <GND * 5 930 410 0 0 0 0>
  <C C11 1 190 200 17 -26 0 1 "1.42 pF" 1 "" 0 "neutral" 0>
  <L L1 1 320 170 -26 10 0 0 "10 nH" 1 "" 0>
  <C C13 1 390 200 17 -26 0 1 "5.74 pF" 1 "" 0 "neutral" 0>
  <L L2 1 520 170 -26 10 0 0 "16 nH" 1 "" 0>
  <C C10 0 1130 200 17 -26 0 1 "1 pF" 1 "" 0 "neutral" 0>
  <GND * 5 1130 230 0 0 0 0>
  <TLIN Line15 1 1240 170 -26 20 0 0 "60 Ohm" 1 "63 mm" 1 "0 dB" 0 "26.85" 0>
  <.TR TR1 1 1400 130 0 77 0 0 "lin" 1 "0" 1 "50n" 1 "50001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <TLIN Line1 1 1030 170 -26 20 0 0 "50 Ohm" 1 "500 mm" 1 "0 dB" 0 "26.85" 0>
  <C C14 1 590 200 17 -26 0 1 "5.74 pF" 1 "" 0 "neutral" 0>
  <L L3 1 720 170 -26 10 0 0 "10 nH" 1 "" 0>
  <GND * 5 790 230 0 0 0 0>
  <C C12 1 790 200 17 -26 0 1 "1.42 pF" 1 "" 0 "neutral" 0>
  <R R6 1 520 770 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <SPfile R1 1 130 380 -26 -43 0 0 "/nfs4/share/datasheets/Vishay/0402/FC0402-FlipChip-200 Ohm.s2p" 0 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile R2 1 320 380 -26 -43 0 0 "/nfs4/share/datasheets/Vishay/0402/FC0402-FlipChip-200 Ohm.s2p" 0 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile R3 1 530 380 -26 -43 0 0 "/nfs4/share/datasheets/Vishay/0402/FC0402-FlipChip-200 Ohm.s2p" 0 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile R4 1 720 380 -26 -43 0 0 "/nfs4/share/datasheets/Vishay/0402/FC0402-FlipChip-200 Ohm.s2p" 0 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <SPfile R5 1 930 380 -26 -67 0 0 "/nfs4/share/datasheets/Vishay/0402/FC0402-FlipChip-200 Ohm.s2p" 1 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <Vfile V2 1 520 630 18 -26 0 1 "/nfs4/home/azonenberg/code/starshipraider/sims/sgmii-idle.csv" 1 "linear" 0 "yes" 0 "1" 0 "0" 0>
</Components>
<Wires>
  <60 120 60 170 "" 0 0 0 "">
  <330 600 390 600 "" 0 0 0 "">
  <330 600 330 740 "" 0 0 0 "">
  <330 740 390 740 "" 0 0 0 "">
  <450 600 520 600 "" 0 0 0 "">
  <160 600 330 600 "" 0 0 0 "">
  <60 600 100 600 "" 0 0 0 "">
  <60 300 60 380 "" 0 0 0 "">
  <60 380 100 380 "" 0 0 0 "">
  <60 540 60 600 "" 0 0 0 "">
  <60 540 1120 540 "" 0 0 0 "">
  <560 380 690 380 "" 0 0 0 "">
  <350 380 500 380 "" 0 0 0 "">
  <160 380 290 380 "" 0 0 0 "">
  <60 170 60 200 "" 0 0 0 "">
  <60 170 190 170 "" 0 0 0 "">
  <1120 380 1120 540 "" 0 0 0 "">
  <960 380 1120 380 "" 0 0 0 "">
  <750 380 900 380 "" 0 0 0 "">
  <350 170 390 170 "" 0 0 0 "">
  <190 170 290 170 "" 0 0 0 "">
  <390 170 490 170 "" 0 0 0 "">
  <60 300 1300 300 "" 0 0 0 "">
  <1300 170 1300 300 "" 0 0 0 "">
  <1270 170 1300 170 "" 0 0 0 "">
  <1130 170 1210 170 "" 0 0 0 "">
  <1060 170 1130 170 "" 0 0 0 "">
  <550 170 590 170 "" 0 0 0 "">
  <590 170 690 170 "" 0 0 0 "">
  <790 170 1000 170 "" 0 0 0 "">
  <750 170 790 170 "" 0 0 0 "">
  <590 230 790 230 "" 0 0 0 "">
  <190 230 390 230 "" 0 0 0 "">
  <390 230 590 230 "" 0 0 0 "">
  <450 740 520 740 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 90 560 12 #000000 0 "Probe tip">
  <Text 410 570 12 #000000 0 "DUT">
  <Text 180 310 12 #000000 0 "5x 200R resistors (S-param models)">
  <Text 1180 120 12 #000000 0 "Probe body">
  <Text 1010 120 12 #000000 0 "Coax">
  <Text 190 60 12 #000000 0 "Scope\n1 GHz -3 dB 7-pole Butterworth\n50R termination">
</Paintings>
