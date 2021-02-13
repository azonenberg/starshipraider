<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-60,1693,872,1,113,20>
  <Grid=10,10,1>
  <DataSet=handheld-resistive-probe.dat>
  <DataDisplay=handheld-resistive-probe.dpl>
  <OpenDisplay=1>
  <Script=handheld-resistive-probe.m>
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
  <L L1 1 950 350 -26 10 0 0 "0.00189 nH" 1 "" 0>
  <C C1 1 880 270 -26 17 0 0 "0.0262 pF" 1 "" 0 "neutral" 0>
  <TLIN Line4 1 1110 350 -26 20 0 0 "50 Ohm" 1 "2.5 mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line6 1 1390 350 -26 20 0 0 "50 Ohm" 1 "50 mm" 1 "0 dB" 0 "26.85" 0>
  <GND * 5 1490 410 0 0 0 0>
  <R ScopeTerm1 1 1230 160 -26 -61 0 2 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 1150 160 0 0 0 0>
  <Vrect V1 1 1490 380 18 -26 0 1 "1 V" 1 "800 ps" 1 "800 ps" 1 "40 ps" 0 "40 ps" 0 "0 ns" 0>
  <GND * 5 130 410 0 0 0 0>
  <R ScopeTerm 1 130 380 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <TLIN Line1 1 300 350 -26 20 0 0 "50 Ohm" 1 "500 mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line2 1 450 350 -26 20 0 0 "50 Ohm" 1 "3 mm" 1 "0 dB" 0 "26.85" 0>
  <VProbe Pr1 1 140 230 28 -31 0 0>
  <GND * 5 150 250 0 0 0 0>
  <TLIN Line3 1 540 350 -26 20 0 0 "50 Ohm" 1 "66.1 mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line5 1 1250 350 -26 20 0 0 "50 Ohm" 1 "3.5 mm" 1 "0 dB" 0 "26.85" 0>
  <R R1 1 820 350 -26 15 0 0 "1000 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn Eqn1 0 420 620 -31 19 0 0 "freq_ghz=acfrequency/1e9" 1 "yes" 0>
  <.TR TR1 1 360 20 0 77 0 0 "lin" 1 "0" 1 "5n" 1 "50001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.AC AC1 0 150 0 0 46 0 0 "lin" 1 "10 MHz" 1 "10 GHz" 1 "1000" 1 "no" 0>
  <Eqn Eqn2 0 700 620 -31 19 0 0 "Resp_GHZ=PlotVs(dB(Pr1.v)+26.75, freq_ghz)" 1 "yes" 0>
  <Vac V2 0 1610 380 18 -26 0 1 "1 V" 1 "10 MHz" 0 "0" 0 "0" 0>
  <GND * 5 670 380 0 0 0 0>
  <SPfile X1 0 670 350 -26 -43 1 2 "/nfs4/share/models/minicircuits/LFCN-2500+_UNIT 1.S2P" 0 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
  <TLIN Line8 1 780 160 -26 20 0 0 "40 Ohm" 1 "6mm" 1 "0 dB" 0 "26.85" 0>
</Components>
<Wires>
  <790 270 850 270 "" 0 0 0 "">
  <790 270 790 350 "" 0 0 0 "">
  <850 350 920 350 "" 0 0 0 "">
  <910 270 980 270 "" 0 0 0 "">
  <980 270 980 350 "" 0 0 0 "">
  <980 350 1080 350 "" 0 0 0 "">
  <1420 350 1490 350 "" 0 0 0 "">
  <1150 160 1200 160 "" 0 0 0 "">
  <1410 160 1410 260 "" 0 0 0 "">
  <1360 260 1410 260 "" 0 0 0 "">
  <1360 260 1360 350 "" 0 0 0 "">
  <130 350 270 350 "" 0 0 0 "">
  <330 350 420 350 "" 0 0 0 "">
  <130 250 130 350 "" 0 0 0 "">
  <480 350 510 350 "" 0 0 0 "">
  <1140 350 1220 350 "" 0 0 0 "">
  <1280 350 1360 350 "" 0 0 0 "">
  <1260 160 1410 160 "" 0 0 0 "">
  <1490 410 1610 410 "" 0 0 0 "">
  <1490 350 1610 350 "" 0 0 0 "">
  <570 350 610 350 "" 0 0 0 "">
  <700 350 720 350 "" 0 0 0 "">
  <750 350 790 350 "" 0 0 0 "">
  <750 160 750 350 "" 0 0 0 "">
  <720 350 750 350 "" 0 0 0 "">
  <720 280 720 350 "" 0 0 0 "">
  <610 280 720 280 "" 0 0 0 "">
  <610 350 640 350 "" 0 0 0 "">
  <610 280 610 350 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 140 450 12 #000000 0 "Scope termination">
  <Text 870 450 12 #000000 0 "Resistor">
  <Text 1220 310 12 #000000 0 "Tip">
  <Text 1060 310 12 #000000 0 "Tip mount">
  <Text 420 310 12 #000000 0 "MMCX">
  <Text 260 310 12 #000000 0 "Probe cable">
</Paintings>
