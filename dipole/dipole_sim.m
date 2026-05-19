% Half-Wave Dipole Antenna Simulation
% Resonant frequency: 300MHz | Length: lambda/2 = 0.5m
d = dipole('Length', 0.5, 'Width', 0.01);

% Geometry
figure;
show(d);
title('Half-Wave Dipole Antenna - 300 MHz');
exportgraphics(gcf, 'dipole_geometry.png', 'Resolution', 300);

% Radiation Pattern
figure;
pattern(d, 300e6);
title('Dipole Radiation Pattern - 300 MHz');
exportgraphics(gcf, 'dipole_pattern.png', 'Resolution', 300);

% S11
figure;
s = sparameters(d, 200e6:5e6:400e6);
rfplot(s);
title('Dipole S11 - Return Loss');
exportgraphics(gcf, 'dipole_S11.png', 'Resolution', 300);