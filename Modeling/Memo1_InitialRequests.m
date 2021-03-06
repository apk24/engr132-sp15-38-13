clear
clc
%This script is to create a graph of Quantum Dot Band Gap energies for
%two different substances with varying radii.
%%%Inputs
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

%%Misc Inputs
radii = ([.5:.0001:50])./(1e9); %Creates a row of numbers
redwv = 650e-9; %Creates value for the wavelength of red light.
%%%Calculations

Energy1=BandGapDot(1.8,radii,10);%Calculates the Qdot energy for the first material.
Energy2=BandGapDot(1.2,radii,15);%Calculates the Qdot energy for the second material.
plot(radii,Energy1,'b')%Plots Energy1 against the qdot radius.
hold('on')%Retains the previous graph.
plot(radii,Energy2,'r')%Plots Energy2 against the qdot radius.
title('Qdot Energy as a function of Qdot radius','FontWeight','bold','FontSize',18)
xlabel('Qdot Radius (m)','FontSize',16,'FontWeight','bold')
ylabel('Qdot Energy (eV)','FontSize',16,'FontWeight','bold')
axis([.49e-10 5e-9 1.1 4.4])
legend('Energy1','Energy2')
RedEnergy= ((h*c/redwv)/eV); %(eV) Calculates the energy of red light.
%%%Outputs
Prob1ans = radii(max(find(BandGapDot(1.5, radii, 2.5) < 1.5*.95)));
[OptRadred, OptMatred] = max([radii(max(find(abs(Energy1 - RedEnergy) < .001))), radii(max(find(abs(Energy2 - RedEnergy) < .001)))]);
approachBGB = [radii(max(find(abs(Energy1 - 1.8) < .001))), radii(max(find(abs(Energy2 - 1.2) < .001)))];
%%%Results
fprintf('The largest quantum dot radius within the given parameters is %.3fnm\n',(Prob1ans)*1e9)
fprintf('Material 1 approaches bulk band gap energy at radius of %.3fnm and Material 2 does so at %.3fnm\n',approachBGB*1e9);
fprintf('The optimal material and quantum dot radius for the absorption of red light (650nm) are material #%d with radius of: %.3fnm\n',OptMatred, OptRadred*1e9) %The last two lines of code print the results to the command window.