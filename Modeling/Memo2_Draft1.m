%Clean up workspace before starting
clear
clc

%set up the materials table
mt = [ 1.92 3.6 4.5
    1.32 9.2 3.5
    1.50 4.0 1.5
    1.71 14.0 4.9
    1.18 7.0 2.7];

%set up the costs of each material
optAttr = [45 35 25 40 30];

%print table header
fprintf('Problem:\t\t\t|');
fprintf('\t%3d ', find(optAttr | ~optAttr));
fprintf('\t|\tCost/Impact\n');

%solve scenario 1 demo a
[ratio, value] = MinAttr(mt, optAttr, 1.33, 2, 100);
%print result
fprintf('Scenario 1, Demo A:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo b
[ratio, value] = MinAttr(mt, optAttr, 1.65, 2, 100);
%print result
fprintf('Scenario 1, Demo B:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%set up toxicity
optAttr = [2 3 4 1 2];

%scen 2 demo a
[ratio, value] = MinAttr(mt, optAttr, 1.33, 2, 100);
fprintf('Scenario 2, Demo A:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%scen 2 demo b
[ratio, value] = MinAttr(mt, optAttr, 1.65, 2, 100);
fprintf('Scenario 2, Demo B:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);