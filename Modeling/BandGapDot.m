function [ E_g ] = BandGapDot(E_g_bulk, r, eps)
%find band gap energy of quantum dot given bulk, radius, and
%dielectric constant

%%Constants
%Planck
h = 6.626*10^(-34); %[J * s]
%Speed of Light
c = 3.0*10^8;%[m / s]
%Electron Mass
m_e = 9.11*10^-31;%[kg]
%Electron Charge
q_e = 1.602*10^-19;%[C]
%Permitivity of Free Space
eps_0 = 8.854*10^-12;%[F / m]
% 1 eV
eV = 1.602*10^-19; %[J]

E_g = E_g_bulk + (((h)^2)./(4*m_e*r.^2) - (1.8*q_e^2)./(4*pi()*eps*eps_0*r))/eV;

end

