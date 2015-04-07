%THIS IS A FUNCTION FILE, NOT INTENDED TO BE RUN ON ITS OWN
%This file is required to be in the same directory as the main file and
%other helper files. This is because the other files may reference this
%file.

function [ matRatio, optAttrValue ] = MinAttr( matTable, optAttr, goalEg, minUse, totalReq)

%%Process the inputs into more useful values for the actual optimization
%get number of materials
tmp = size(matTable);
numMat = tmp(1);
clear tmp;

%find band gap energies of the quantum dots
Eg_name = BandGapDot(matTable(:,1),matTable(:,3)*1e-9,matTable(:,2))';

%Find band gap energy contribution per unit of the optimization attribute
%(called the value in the justifiction)
Eg_rv = abs(Eg_name - goalEg) ./ optAttr;

%%The Optimization
%set up the minimum usage requirements
matRatio = linspace(minUse, minUse, numMat);

%Find the most "valuable" over the target
overGoal = find(Eg_name > goalEg);
[~, tmp] = max(Eg_rv(overGoal));
effOver = overGoal(tmp);
clear tmp;

%under the target
underGoal = find(Eg_name < goalEg);
[~, tmp] = max(Eg_rv(underGoal));
effUnder = underGoal(tmp);
clear tmp;

if(~(any(effUnder) && any(effOver)))
    errordlg('The material attributes that have been entered are incompatible with the desired goal QD band gap energy.');
end

%set up the system of equations as an augmented matrix, then rref to find
%solution
system = [Eg_name(effOver), Eg_name(effUnder), (goalEg*totalReq - sum(Eg_name)*minUse)
    1, 1, (totalReq-numMat*minUse)];
solution = rref(system);

%put solution into output variable
matRatio(effOver) = matRatio(effOver) + solution(1,3);
matRatio(effUnder) = matRatio(effUnder) + solution(2,3);
%calculate cost
optAttrValue = sum(optAttr .* matRatio);