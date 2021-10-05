clear;clc;

A = [ 23 55; 67 12];
B = [ 1 6; -5 7];
C = A*B;

%X*A = C
%berapa nilai x? seharusnya B, dapat diperoleh dengan left division
X = A\C;

%B*Y = C
%berapa nilai y? seharusnya A, dapat diperoleh dengan right division
Y = C/B;
