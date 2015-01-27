function [ materialRatio ] = MinAttr( materialTable, optimizationAttr, optimizationType, goalEg)
tmp = size(materialTable);
numMaterials = tmp(1);
clear tmp;

unitEg = linspace(0,1,numMaterials);
ct = 1;
while ct < numMaterials
    unitEg(ct) = BandGapDot(materialTable(ct,1),materialTable(ct,3),materialTable(ct,2));
end
materialRatio = unitEg;

