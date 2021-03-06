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


range = 1:5;
%print table header
fprintf('Demo A    :\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');

%solve scenario 1 demo a
[ratio, value] = MinAttr(mt(range, :), cost(range), 1.33, 2, 100);
%print result
fprintf('Scenario 1:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', value);
fprintf('\t|\t%4.2f\n', ratio*tox(range)');

%solve scenario 2 demo a
[ratio, value] = MinAttr(mt(range, :), tox(range), 1.33, 2, 100);
%print result
fprintf('Scenario 2:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', ratio*cost(range)');
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo a
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range, :),cost(range), 1, tox(range), 1, 1.33, 2, 100);
%print result
fprintf('Scenario 3:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);

%-------------------------------------------

range = 1:5;
%print table header
fprintf('Demo B    :\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');

%solve scenario 1 demo b
[ratio, value] = MinAttr(mt(range, :), cost(range), 1.65, 2, 100);
%print result
fprintf('Scenario 1:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', value);
fprintf('\t|\t%4.2f\n', ratio*tox(range)');

%solve scenario 2 demo b
[ratio, value] = MinAttr(mt(range, :), tox(range), 1.65, 2, 100);
%print result
fprintf('Scenario 2:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', ratio*cost(range)');
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo b
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range, :), cost(range), 1, tox(range), 1, 1.65, 2, 100);
%print result
fprintf('Scenario 3:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);

%-------------------------------------------

range = 6:10;
%print table header
fprintf('Demo C    :\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');

%solve scenario 1 demo c
[ratio, value] = MinAttr(mt(range,:), cost(range), 1.33, 2, 100);
%print result
fprintf('Scenario 1:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', value);
fprintf('\t|\t%4.2f\n', ratio*tox(range)');

%solve scenario 2 demo c
[ratio, value] = MinAttr(mt(range,:), tox(range), 1.33, 2, 100);
%print result
fprintf('Scenario 2:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', ratio*cost(range)');
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo c
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range,:), cost(range), 1, tox(range), 1, 1.33, 2, 100);
%print result
fprintf('Scenario 3:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);

%-------------------------------------------

range = 6:10;
%print table header
fprintf('Demo D    :\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');

%solve scenario 1 demo d
[ratio, value] = MinAttr(mt(range,:), cost(range), 1.65, 2, 100);
%print result
fprintf('Scenario 1:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', value);
fprintf('\t|\t%4.2f\n', ratio*tox(range)');

%solve scenario 2 demo d
[ratio, value] = MinAttr(mt(range,:), tox(range), 1.65, 2, 100);
%print result
fprintf('Scenario 2:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', ratio*cost(range)');
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo d
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range,:), cost(range), 1, tox(range), 1, 1.65, 2, 100);
%print result
fprintf('Scenario 3:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);

%-------------------------------------------

range = [2,3,4,7,9];
%print table header
fprintf('Demo E    :\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');

%solve scenario 1 demo e
[ratio, value] = MinAttr(mt(range,:), cost(range), 1.33, 2, 100);
%print result
fprintf('Scenario 1:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', value);
fprintf('\t|\t%4.2f\n', ratio*tox(range)');

%solve scenario 2 demo e
[ratio, value] = MinAttr(mt(range,:), tox(range), 1.33, 2, 100);
%print result
fprintf('Scenario 2:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', ratio*cost(range)');
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo e
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range,:), cost(range), 1, tox(range), 1,  1.33, 2, 100);
%print result
fprintf('Scenario 3:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);

%-------------------------------------------

range = [2,3,4,7,9,11,12];
%print table header
fprintf('Demo F    :\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');

%solve scenario 1 demo f
[ratio, value] = MinAttr(mt(range,:), cost(range), 1.65, 2, 100);
%print result
fprintf('Scenario 1:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', value);
fprintf('\t|\t%4.2f\n', ratio*tox(range)');

%solve scenario 2 demo f
[ratio, value] = MinAttr(mt(range,:), tox(range), 1.65, 2, 100);
%print result
fprintf('Scenario 2:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', ratio*cost(range)');
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo f
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range,:), cost(range), 1, tox(range), 1, 1.65, 2, 100);
%print result
fprintf('Scenario 3:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);
% %-----------------------------------------



%-------------------------------------------

range = [2,3,4,7,9,11,12];
%print table header
fprintf('Demo G    :\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');

%solve scenario 1 demo G
[ratio, value] = MinAttr(mt(range,:), cost(range), 1.65, 2, 100);
%print result
fprintf('Scenario 1:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', value);
fprintf('\t|\t%4.2f\n', ratio*tox(range)');

%solve scenario 2 demo g
[ratio, value] = MinAttr(mt(range,:), tox(range), 1.65, 2, 100);
%print result
fprintf('Scenario 2:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', ratio*cost(range)');
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo g
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range,:), cost(range), 1, tox(range), 1, 1.65, 2, 100);
%print result
fprintf('Scenario 3:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);
% %-----------------------------------------



%-------------------------------------------

range = [2,3,4,7,9,11,12];
%print table header
fprintf('Demo H    :\t|');
fprintf('\t%3d ', range);
fprintf('\t|\tCost\t|\tImpact\n');

%solve scenario 1 demo H
[ratio, value] = MinAttr(mt(range,:), cost(range), 1.65, 2, 100);
%print result
fprintf('Scenario 1:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', value);
fprintf('\t|\t%4.2f\n', ratio*tox(range)');

%solve scenario 2 demo h
[ratio, value] = MinAttr(mt(range,:), tox(range), 1.65, 2, 100);
%print result
fprintf('Scenario 2:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f', ratio*cost(range)');
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo h
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(range,:), cost(range), 1, tox(range), 1, 1.65, 2, 100);
%print result
fprintf('Scenario 3:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t|\t%4.2f\n', valueCost, valueTox);
% %-----------------------------------------