clear
clc
%This script is to create a graph of Quantum Dot Band Gap energies for
%two different substances with varying radii.
radii=([.5:.0000001:5])./(1e9); %Creates a row of numbers
Energy1=BandGapDot(1.8,radii,10);%Calculates the Qdot energy for the first material.
Energy2=BandGapDot(1.2,radii,15);%Calculates teh Qdot energy for the second material.
plot(radii,Energy1,'b')%Plots Energy1 against the qdot radius.
hold('on')%Retains the previous graph.
plot(radii,Energy2,'r')%Plots Energy2 against the qdot radius.
title('Qdot Energy as a function of Qdot radius','FontWeight','bold','FontSize',16)
xlabel('Qdot Radius (m)','FontSize',14)
ylabel('Qdot Energy (eV)','FontSize',14)
axis([.49e-10 5e-9 1.1 4.35])
legend('Energy1','Energy2')
radii(max(find(BandGapDot(1.5, radii, 2.5) > 1.5*.95)))