%This file is the main file to be run. Do not run Function Files!
%This file will not run without DoubleMinAttr, BandGapDot, and MinAttr
%being in the same directory as this file.

%set up the materials table
mt = input('\nPlease enter materials table\n 1 row per material, properties to include are(in the order listed):\nBulk Band gap Energy\ndielectric constant\nradius in nm\ncost per gram\ntoxicity in impact per gram\n\nmt='); 

%set up the costs of each material
cost = mt(:,4)';

%set up toxicity
tox = mt(:,5)';
range = input('\nPlease enter the range of materials to use:');
range = unique(range);
goalEg = input('\nWhat is the desired quantum dot band gap energy of the product?');
minUse = input('\nWhat is the minimum required usage (in grams) of all materials?');
totalReq = input('\nHow much do you want (in grams)?');
cW = input('\nOn a scale of 0 to 100, how important is cost?');
cT = input('\nOn a scale of 0 to 100, how important is toxicity?');

%print table header
fprintf('\nMaterial:\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');
%Solve the problem
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range, :),cost(range), cW, tox(range), cT, goalEg, minUse, totalReq);
%print result
fprintf('Recipe:  \t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);
