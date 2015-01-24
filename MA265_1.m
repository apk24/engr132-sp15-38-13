%This code is to complete Matlab assignment 1 for MA 265 secton 141.
%Problem #1.
A=[4,-3;2,1;0,6];      %
B=[1,2,4;2,4,1;0,1,5]; %These lines create the matrices from the packet.
C=[5;8;7;]             %
A          %
A(2,:)     %Displays various parts or the whole of Matrix A.
A(3,2)     %

B(:,3)     %Displayes parts of Matrix B.
B(1:2,:)   %

A(2:3,:)   %Displays a part of A.

%Problem #2.
D=A %Assigns the value of A to D.
D(1,1) = 12
D(3,2) = -8
E = [D C] %E is the same as placing C to the right of D and making a new matrix.
F = [D B] %F is the same as placing B to the right of D and making a new matrix.
G = [E;B] %G is the same as placing B directly under E.

%Problem #3.
c1=[0;-1;3;5]
c2=[4;-2;0;7]
H=[c1 c2] %This creates a 2x4 matrix from c1 and c2.
K=[c1 c1 c2] %Creates a matrix from c1 and c2.

%Problem #4.
r1=[2 -1 5]
r2=[7 9 -3]
M=[r1;r2] %creates matrix from r1 and r2 (r2 under r1).

%3*r1 will yield a row of the same dimensions as r1
%except each entry will be multiplied by 3.

%r1+r2 will be the componentwise sum of the two rows.

%[r1;r1-r2;r2] will create a three column matrix with r1 on top
%the difference between r1 and r2 in the middle
%and r2 on the bottom.