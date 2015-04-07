clc
clear

h = 6.626e-34; %Planck's Constant, unit Joule*Second or J*s
c = 3e8; %the speed of light, unit m/s
m_e = 9.11e-31; %mass of an electron in kilograms
q_e = 1.602e-19; %the charge of an electron in Coulombs
eps_0 = 8.854e-12; %The permitivity of free space
eVJ = 1.602*10^-19; %Inverse of the Electron-Volt to Joule conversion gives the Joule to Electron-Volt conversion factor
heV = 4.135668*10^-15;
eps = 10;
E_g_bulk = 1.8;

radii = (.5:.1:5) * (10^-9);
bandgaps = [];

for r = .5*10^-19
    E_g = E_g_bulk + ((heV)^2)/(4*m_e*r^2) - (1.8*q_e^2)/(4*pi()*eps*eps_0*r)
    bandgaps = [bandgaps, E_g];
end

plot(radii,bandgaps);