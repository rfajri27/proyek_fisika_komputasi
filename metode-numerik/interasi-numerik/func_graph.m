%METODE TRAPEZOID
clear;clc;
%fungsi
X = [0:0.01:5];
f = @(x) 3*x.^3 + 2*x.^2 - 4*x + 2;
plot(X, f(X), 'r', 'linewidth', 3);
title('f(x)=3x^3 + 2x^2 - 4x + 2')
% hold on 
% area(X, f(X))
grid on
