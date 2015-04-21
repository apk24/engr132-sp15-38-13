%THIS IS A FUNCTION FILE, NOT INTENDED TO BE RUN ON ITS OWN
%This file is required to be in the same directory as the main file and
%other helper files. This is because the other files may reference this
%file.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Apoorva Kharche, akharche@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #: 38     Team #: 13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [ recipe ] = DoubleMinAttr_sec38_team13( mats, optAttr1Name, optAttr2Name, recipe)
numMat = length(mats);
relimp = recipe.relimp;
goalEg = recipe.goaleg;
minUse = recipe.minUse;
totalReq = recipe.total;
if numMat <= 0
    errordlg('Not enough materials!');
end
weightingFactor1 = relimp;
weightingFactor2 = 100 -relimp;
optAttr1 = linspace(-1,-1,numMat);
for ct=1:length(mats)
    optAttr1(ct) = eval(['mats(ct).', optAttr1Name]);
end

optAttr2 = linspace(-1,-1,numMat);
for ct=1:length(mats)
    optAttr2(ct) = eval(['mats(ct).', optAttr2Name]);
end

scaledAttr1 = optAttr1 .* (100/max(optAttr1));
scaledAttr2 = optAttr2 .* (100/max(optAttr2));
weightedAttr = scaledAttr1 * weightingFactor1 + scaledAttr2 * weightingFactor2;

recipe = MinAttr_sec38_team13(mats, weightedAttr, goalEg, minUse, totalReq);
optAttrValue1 = recipe.ratios * optAttr1'; %#ok<NASGU>
optAttrValue2 = recipe.ratios * optAttr2'; %#ok<NASGU>

recipe.(optAttr1Name) = optAttrValue1;
recipe.(optAttr2Name)= optAttrValue2;
recipe.relimp = relimp;
recipe.goaleg = goalEg;
recipe.minUse = minUse;
recipe.total = totalReq;
recipe.none = [];
end

