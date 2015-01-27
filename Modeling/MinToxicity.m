clear
clc

mt = [ 1.92 3.6 4.5
    1.32 9.2 3.5
    1.50 4.0 1.5
    1.71 14.0 4.9
    1.18 7.0 2.7];
optAttr = [2 3 4 1 2];

[ratio, value] = MinAttr(mt, optAttr, 1.33, 2, 100);
display(ratio)
display(value)
