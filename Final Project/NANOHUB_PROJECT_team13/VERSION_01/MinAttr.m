%THIS IS A FUNCTION FILE, NOT INTENDED TO BE RUN ON ITS OWN
%This file is required to be in the same directory as the main file and
%other helper files. This is because the other files may reference this
%file.

function [ recipe ] = MinAttr(mats, optAttr, goalEg, minUse, totalReq)
%%Process the inputs into more useful values for the actual optimization
%get number of materials
numMat = length(mats);

%find band gap energies of the quantum dots
Eg_name = linspace(-1,-1,numMat);
for ct=1:length(mats)
    Eg_name(ct) = mats(ct).beg;
end

%Find band gap energy contribution per unit of the optimization attribute
%(called the value in the justifiction)
Eg_rv = linspace(-1,-1, numMat);
for ct=1:length(mats)
Eg_rv(ct) = abs(Eg_name(ct) - goalEg) / str2num(['mats(ct).' , optAttr]);
end

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

recipe = struct(...
    'ratios', matRatio, ...
    'mats', mats, ...
    'total', totalReq, ...
    'minuse', minUse, ...
    optAttr, optAttrValue ...
    );