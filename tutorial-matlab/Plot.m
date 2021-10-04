clear;clc

x1 = linspace(0, 2*pi, 100); %linspace(start, stop, jumlah titik)
y1 = sin(x1);
x2 = log(x1);
y2 = cos(x1);
x3 = tan(x1);

%plot dengan single line
figure(1)
plot(x1, y1)

%plot dengan multi line
figure(2)
plot(x1, y1, x2, y2)

%plot dengan warna dan line style custom
figure(3)
plot(x1, y1, 'b-', x1, y2, 'ro', x1, x3, 'gx', 'lineWidth',2)
title('GRAFIK SIN COS TAN')
xlabel('X')
ylabel('Y')
axis([0 6 -1 1]) %axis(xmin xmax ymin ymax