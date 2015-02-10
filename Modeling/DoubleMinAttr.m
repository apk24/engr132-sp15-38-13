%THIS IS A FUNCTION FILE, NOT INTENDED TO BE RUN ON ITS OWN
%This file is required to be in the same directory as the main file and
%other helper files. This is because the other files may reference this
%file.

function [ matRatio, optAttrValue1, optAttrValue2 ] = DoubleMinAttr( matTable, optAttr1, optAttr2, weightingFactor, goalEg, minUse, totalReq)

scaledAttr1 = optAttr1 .* (100/max(optAttr1));
scaledAttr2 = optAttr2 .* (100/max(optAttr2));
weightedAttr = scaledAttr1 * weightingFactor + scaledAttr2;

matRatio = MinAttr(matTable, weightedAttr, goalEg, minUse, totalReq);
optAttrValue1 = matRatio * optAttr1';
optAttrValue2 = matRatio * optAttr2';

end

