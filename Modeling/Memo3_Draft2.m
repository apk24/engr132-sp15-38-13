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
    1.96 5.8 4.3];

%set up the costs of each material
cost = [45 35 25 40 30 30 41 22 40 18];

%set up toxicity
tox = [2 3 4 1 2 3 2 4 3 1];

%print table header
fprintf('Problem:\t\t|');
fprintf('\t%3d ', find(cost | ~cost));
fprintf('\t|\tCost/Impact\n');

%solve scenario 1 demo a
[ratio, value] = MinAttr(mt, cost, 1.33, 2, 100);
%print result
fprintf('Scenario 1, Demo A:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo b
[ratio, value] = MinAttr(mt, cost, 1.65, 2, 100);
%print result
fprintf('Scenario 1, Demo B:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo c
[ratio, value] = MinAttr(mt(6:10,:), cost(6:10), 1.33, 2, 100);
%print result
fprintf('Scenario 1, Demo C:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo d
[ratio, value] = MinAttr(mt(6:10,:), cost(6:10), 1.65, 2, 100);
%print result
fprintf('Scenario 1, Demo D:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo e
[ratio, value] = MinAttr(mt([2,3,4,7,9],:), cost([2,3,4,7,9]), 1.33, 2, 100);
%print result
fprintf('Scenario 1, Demo E:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 1 demo f
[ratio, value] = MinAttr(mt([2,3,4,7,9],:), cost([2,3,4,7,9]), 1.65, 2, 100);
%print result
fprintf('Scenario 1, Demo F:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%-----------------------------------------

%solve scenario 2 demo a
[ratio, value] = MinAttr(mt, tox, 1.33, 2, 100);
%print result
fprintf('Scenario 2, Demo A:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 2 demo b
[ratio, value] = MinAttr(mt, tox, 1.65, 2, 100);
%print result
fprintf('Scenario 2, Demo B:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 2 demo c
[ratio, value] = MinAttr(mt(6:10,:), tox(6:10), 1.33, 2, 100);
%print result
fprintf('Scenario 2, Demo C:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 2 demo d
[ratio, value] = MinAttr(mt(6:10,:), tox(6:10), 1.65, 2, 100);
%print result
fprintf('Scenario 2, Demo D:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 2 demo e
[ratio, value] = MinAttr(mt([2,3,4,7,9],:), tox([2,3,4,7,9]), 1.33, 2, 100);
%print result
fprintf('Scenario 2, Demo E:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

%solve scenario 2 demo f
[ratio, value] = MinAttr(mt([2,3,4,7,9],:), tox([2,3,4,7,9]), 1.65, 2, 100);
%print result
fprintf('Scenario 2, Demo F:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);


%----------------------------------------------------------------------


%solve scenario 1 demo a
[ratio, valueCost, valueTox] = DoubleMinAttr(mt,cost, tox, 1, 1.33, 2, 100);
%print result
fprintf('Scenario 3, Demo A:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t%4.2f\n', valueCost, valueTox);

%solve scenario 1 demo b
[ratio, valueCost, valueTox] = DoubleMinAttr(mt, cost, tox, 1, 1.65, 2, 100);
%print result
fprintf('Scenario 3, Demo B:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t%4.2f\n', valueCost, valueTox);

%solve scenario 1 demo c
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(6:10,:), cost(6:10), tox(6:10), 1, 1.33, 2, 100);
%print result
fprintf('Scenario 3, Demo C:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t%4.2f\n', valueCost, valueTox);

%solve scenario 1 demo d
[ratio, valueCost, valueTox] = DoubleMinAttr(mt(6:10,:), cost(6:10), tox(6:10), 1, 1.65, 2, 100);
%print result
fprintf('Scenario 3, Demo D:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t%4.2f\n', valueCost, valueTox);

%solve scenario 1 demo e
[ratio, valueCost, valueTox] = DoubleMinAttr(mt([2,3,4,7,9],:), cost([2,3,4,7,9]), tox([2,3,4,7,9]), 1,  1.33, 2, 100);
%print result
fprintf('Scenario 3, Demo E:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t%4.2f\n', valueCost, valueTox);

%solve scenario 1 demo f
[ratio, valueCost, valueTox] = DoubleMinAttr(mt([2,3,4,7,9],:), cost([2,3,4,7,9]), tox([2,3,4,7,9]), 1, 1.65, 2, 100);
%print result
fprintf('Scenario 3, Demo F:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\t%4.2f\n', valueCost, valueTox);
