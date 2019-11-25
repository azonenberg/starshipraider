<Qucs Schematic 0.0.20>
<Properties>
  <View=0,0,1237,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=gcpw-mismatch.dat>
  <DataDisplay=gcpw-mismatch.dpl>
  <OpenDisplay=1>
  <Script=gcpw-mismatch.m>
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
  <.TR TR1 1 220 530 0 77 0 0 "lin" 1 "0" 1 "15n" 1 "150001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <TLIN Line1 1 200 250 -26 20 0 0 "50 Ohm" 1 "150 mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line2 1 330 250 -26 20 0 0 "30 Ohm" 1 "55 mm" 1 "0 dB" 0 "26.85" 0>
  <Vrect V1 1 740 280 18 -26 0 1 "1 V" 1 "800 ps" 1 "800 ps" 1 "40 ps" 0 "40 ps" 0 "0 ns" 0>
  <GND *3 5 740 310 0 0 0 0>
  <R R2 1 450 250 -26 15 0 0 "950 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <VProbe Pr1 1 570 80 28 -31 0 0>
  <GND *1 5 580 100 0 0 0 0>
  <R R5 1 560 160 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 5 560 190 0 0 0 0>
  <GND * 5 280 130 0 0 0 0>
  <SPfile X1 1 280 100 -26 -43 0 0 "/nfs4/share/datasheets/Minicircuits/LFCG-1575+.s2p" 0 "rectangular" 0 "linear" 0 "short" 0 "2" 0>
</Components>
<Wires>
  <230 250 300 250 "" 0 0 0 "">
  <360 250 420 250 "" 0 0 0 "">
  <480 250 740 250 "" 0 0 0 "">
  <560 100 560 130 "" 0 0 0 "">
  <130 250 170 250 "" 0 0 0 "">
  <130 100 130 250 "" 0 0 0 "">
  <130 100 250 100 "" 0 0 0 "">
  <310 100 560 100 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
