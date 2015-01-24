%This script is to create a graph of Quantum Dot Band Gap energies for
%two different substances with varying radii.
radii=([.5:.1:5])./(1e9); %Creates a row of numbers
h=(6.626e-34)/(1.602e-19)
c=(3e8)
eCharge = (9.11e-31)
Perm0 = (8.854e-12)
JtoeV = (1.602e-19)
Energy1=1.8+((h)^2)./(4*(eCharge).*(radii).^2))-((1.8*(eCharge)^2)./((4*pi*10*(Perm0).*(radii)))))))./(1.602*(10^-19));%Calculates the Qdot energy for the first material.
Energy2=1.2+((h)^2)./(4*(9.11*(10^-31).*(radii).^2))-((1.8*(1.602*(10^-19)^2)./((4*3.14159265*15*(8.854*(10^-12).*(radii)))))))./(1.602*(10^-19));%Calculates teh Qdot energy for the second material.
plot(radii,Energy1,'b')%Plots Energy1 against the qdot radius.
hold('on')%Retains the previous graph.
plot(radii,Energy2,'r')%Plots Energy2 against the qdot radius.
title('Qdot Energy as a function of Qdot radius','FontWeight','bold','FontSize',16)
xlabel('Qdot Radius (m)','FontSize',14)
ylabel('Qdot Energy (eV)','FontSize',14)
axis([.49e-10 5e-9 1.15 1.95])
legend('Energy1','Energy2')