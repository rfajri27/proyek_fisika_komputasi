clear;clc

%hold on hold off

x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
y3 = sin(2*x);
y4 = cos(2*x);

plot(x, y1, x, y2)
title('Grafik sin dan cos')
xlabel('Nilai x')
ylabel('Nilai y')
hold on %-- menunggu grafik berikutnya untuk ditimpa

plot(x,y3, 'Color', [0 0.7 0.6])
plot(x,y4, 'k')
hold off %--berhenti menunggu