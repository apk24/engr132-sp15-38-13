clear
clc

mt = [ 1.92 3.6 4.5
    1.32 9.2 3.5
    1.50 4.0 1.5
    1.71 14.0 4.9
    1.18 7.0 2.7];

optAttr = [45 35 25 40 30];

fprintf('Problem:\t\t\t|');
fprintf('\t%3d ', find(optAttr | ~optAttr));
fprintf('\t|\tCost/Impact\n');

[ratio, value] = MinAttr(mt, optAttr, 1.33, 2, 100);
fprintf('Scenario 1, Demo A:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

[ratio, value] = MinAttr(mt, optAttr, 1.65, 2, 100);
fprintf('Scenario 1, Demo B:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

optAttr = [2 3 4 1 2];

[ratio, value] = MinAttr(mt, optAttr, 1.33, 2, 100);
fprintf('Scenario 2, Demo A:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);

[ratio, value] = MinAttr(mt, optAttr, 1.65, 2, 100);
fprintf('Scenario 2, Demo B:\t|');
fprintf('\t%4.2f', ratio);
fprintf('\t|\t%4.2f\n', value);