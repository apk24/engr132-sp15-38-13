%This file is the main file to be run. Do not run Function Files!
%This file will not run without DoubleMinAttr, BandGapDot, and MinAttr
%being in the same directory as this file.

%Clean up workspace before starting
clear
clc

%set up the materials table
mt = [ 1.92 3.6 4.5
    1.32 9.2 3.5
    1.50 4.0 1.5
    1.71 14.0 4.9
    1.18 7.0 2.7
    1.94 3.1 3.2
    1.26 7.6 2.8
    1.20 5.0 3.11
    1.82 2.9 1.2
    1.96 5.8 4.3
    2.00 3.4 5.6
    1.11 5.0 3.9];

%set up the costs of each material
cost = [45 35 25 40 30 30 41 22 40 18 100 1];

%set up toxicity
tox = [2 3 4 1 2 3 2 4 3 1 10 1];
mats = [];
for ct = 1: length(mt)
    mats(ct).beg = mt(ct, 1);
    mats(ct).eps = mt(ct, 2);
    mats(ct).r = mt(ct, 3);
    mats(ct).cost = cost(ct);
    mats(ct).tox = tox(ct);
    mats(ct).name = num2str(ct);
end
range = 1:5;


recipe1 = DoubleMinAttr(mats(range),'cost', 'tox', 50, 1.33, 2, 100);

range = 6:10;
recipe2 = DoubleMinAttr(mats(range), 'cost', 'tox', 50, 1.65, 2, 100);
