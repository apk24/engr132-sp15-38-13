function [ matRatio, optAttrValue ] = MinAttr( matTable, optAttr, goalEg, minUse, totalReq)

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
%set up the minimum
matRatio = linspace(minUse, minUse, numMat);
%Find the most "efficient" over the target
overGoal = find(Eg_name > goalEg);
[~, tmp] = max(Eg_rv(overGoal));
effOver = overGoal(tmp);
clear tmp

underGoal = find(Eg_name < goalEg);
[~, tmp] = max(Eg_rv(underGoal));
effUnder = underGoal(tmp);
clear tmp

system = [Eg_name(effOver), Eg_name(effUnder), (goalEg*totalReq - sum(Eg_name)*minUse)
    1, 1, (totalReq-numMat*minUse)];
solution = rref(system);

matRatio(effOver) = matRatio(effOver) + solution(1,3);
matRatio(effUnder) = matRatio(effUnder) + solution(2,3);

optAttrValue = sum(optAttr .* matRatio);