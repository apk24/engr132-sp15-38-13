function [ matRatio ] = MinAttr( matTable, optAttr, goalEg)

%%Process the inputs into more useful values for the actual optimization
%get number of materials
tmp = size(matTable);
numMat = tmp(1);
clear tmp;

%find band gap energies of the quantum dots
Eg_name = linspace(0,1,numMat);
ct = 1;
while ct <= numMat
    Eg_name(ct) = BandGapDot(matTable(ct,1),matTable(ct,3)*1e-9,matTable(ct,2));
    ct = ct + 1;
end

%Find band gap energy contribution per unit of the optimization attribute

Eg_rv = Eg_name ./ optAttr;

%%The Optimization
%Find the most "efficient" over the target
overGoal = find(Eg_name > goalEg);
[~, tmp] = max(Eg_rv(overGoal));
effOver = overGoal(tmp);

underGoal = find(Eg_name < goalEg);
[~, tmp] = max(Eg_rv(underGoal));
effUnder = underGoal(tmp);

system = [Eg_name(effOver), Eg_name(effUnder), (goalEg*100 - sum(Eg_name)*2)
    1, 1, (100-numMat*2)];
solution = rref(system);
solution(:,3)'
[addToEffOver, addToEffUnder] = solution(:,3);

matRatio = Eg_rv;