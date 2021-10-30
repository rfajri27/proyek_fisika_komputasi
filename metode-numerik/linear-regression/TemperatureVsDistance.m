%GRAFIK PANJANG X VERSUS SUHU T
clear;clc

x = [1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0];
T = [14.6 18.5 36.6 30.8 59.2 60.1 62.2 79.4 99.9];

plot(x, T, 'go', 'lineWidth', 3)
title('Hubungan T(C) dan x(cm)')
xlabel('Panjang batang (x)')
ylabel('Suhu (T)')
grid on
axis([0 10 10 105])