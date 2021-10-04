clear;clc

%subplot

x = linspace(0, 2*pi, 100);
y = sin(x);
y2 = sin(2*x);
y3 = cos(x);
y4 = cos(2*x);


%subplot(baris, kolom, grafik ke-n)
subplot(2,2,1) 
plot(x,y)
title('Sin x')

subplot(2,2,2)
plot(x,y2, 'k')
title('Sin 2x')

subplot(2,2,3)
plot(x,y3, 'g')
title('Cos x')

subplot(2,2,4)
plot(x, y4, 'r')
title('Cos 2x')