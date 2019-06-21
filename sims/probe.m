physical_constants;
f_max = 5e9;
CSX=InitCSX();
CSX=ImportHyperLynx(CSX,"handheld-resistive-probe.hyp");

[pad1_material, pad1_start, pad1_stop] = GetHyperLynxPort(CSX, 'R1.2');
[pad2_material, pad2_start, pad2_stop] = GetHyperLynxPort(CSX, 'J1.1');

[gnd1_material, gnd1_start, gnd1_stop] = GetHyperLynxPort(CSX, 'J2.1');
[gnd2_material, gnd2_start, gnd2_stop] = GetHyperLynxPort(CSX, 'J1.2');

[CSX, port{1}] = AddLumpedPort(CSX, 999, 1, 50, gnd1_start, pad1_stop, [-1 0 0], true);
[CSX, port{2}] = AddLumpedPort(CSX, 999, 2, 50, gnd2_start, pad2_stop, [-1 0 0]);

%{
unit = 1; #GetUnits(CSX);
substrate_epr = 3.33; #GetEpsilon(CSX);
resolution = c0 / f_max / sqrt(substrate_epr)/ unit / 25;
AirBox = c0 / f_max / unit / 25;

z_top = pad1_start(3);
z_bottom = gnd1_start(3);
z_middle = (z_top + z_bottom)/2;

mesh.x = []
mesh.y = []
mesh.z = [ z_middle ];

mesh.x = 15;
mesh.y = 25;
mesh.z = 5;

mesh = SmoothMesh(mesh, resolution)

FDTD = InitFDTD();
FDTD = SetGaussExcite(FDTD, f_max/2, f_max/2);
BC = { 'PML_8' 'PML_8' 'PML_8' 'PML_8' 'PML_8' 'PML_8'};
FDTD = SetBoundaryCond(FDTD, BC);
mesh = AddPML(mesh, 8);
CSX = DefineRectGrid(CSX, unit, mesh);

%}

Sim_Path = 'tmp';
Sim_CSX = 'msl.xml';

WriteOpenEMS([Sim_path '/' Sim_CSX], FDTD, CSX);

CSXGeomPlot([Sim_path '/' Sim_CSX]);
%{
RunOpenEMS(Sim_Path, Sim_CSX);

f = linspace(1e6, f_max, 1601);
port = calcPort(port, Sim_Path, f, 'RefImpedance', 50);

s11 = port{1}.uf.ref./port{1}.uf.inc;
s21 = port{2}.uf.ref./port{1}.uf.inc;

semilogx(f/1e9, 20*log10(abs(s11)),'k-','LineWidth',2);
hold on;
grid on;
semilogx(f/1e9, 20*log10(abs(s21)),'r-','LineWidth',2);
legend('S_{11}', 'S_{21}');
ylabel('S-Parameter (dB)', 'FontSize',12);
xlabel('Frequency (GHz)', 'FontSize', 12);
ylim([-80 10]);
print('sparam.png', '-dpng');
%}
