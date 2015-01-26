clear
clc
%%%This script is to create two basic algorithms, one to minimize cost of a
%%%particular mixture of Qdots, and the other to minimize toxicity impact.
%%%Both while maintaining a particular band energy.
%%Calculations for individual band gap energies.
BE1 = BandGapDot(1.92,4.5e-9,3.6); %Band energy 1
BE2 = BandGapDot(1.32,3.5e-9,9.2); %Band energy 2
BE3 = BandGapDot(1.5,1.5e-9,4.0);  %Band energy 3
BE4 = BandGapDot(1.71,4.9e-9,14.0);%Band energy 4
BE5 = BandGapDot(1.18,2.7e-9,7);   %Band energy 5
BeAv = (BE1+BE2+BE3+BE4+BE5)/5; %Average of the band energies.
Energy1 = 1.33; %States the target energy1.
Energy2 = 1.65; %States the target energy2.
BEm = [BE1,BE2,BE3,BE4,BE5]; %Makes a matrix of the materials' energies.
WeightM1 = [1:1:50]; %makes a matrix of weights.
Targ1 = (BE1+(BE2*11)+(BE3*3)+BE4+(BE5*4))/20; %Calculates the weighted average apprx=1.33eV
Cost1 = ((45)*5)+((35)*55)+((25)*15)+((40)*5)+(((30)*20)); %Calculates cost.
Impact1 = ((2)*5)+((3)*55)+((4)*15)+(5)+(((2)*20));
Targ2 = (((BE1*3)+(BE2)+(BE3)+(BE4*13)+(BE5))/19);%Calculates the weighted average approx=1.65eV
Cost2 = ((45)*15.9)+((35)*5.3)+((25)*5.3)+((40)*68.9)+(((30)*5.3)); %Calculates cost.
Impact2 = ((2)*15.9)+((3)*5.3)+((4)*5.3)+((1)*68.9)+(((2)*5.3)); %Calculates Impact.