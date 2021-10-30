%PROGRAM REGRESI LINEAR
%Menentukan hubungan panjang X dan suhu T

clear;clc
%variabel bebas (x)
x = [1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0];
%variabel terikat (T)
T = [14.6 18.5 36.6 30.8 59.2 60.1 62.2 79.4 99.9];

ndata = length(T);
%Menghitung b
sum_x = 0;
sum_T = 0;
sum_xT = 0;
sum_xx = 0;
sum_TT = 0;
for i=1:ndata
    sum_x = sum_x + x(i);
    sum_T = sum_T + T(i);
    sum_xT = sum_xT + T(i)*x(i);
    sum_xx = sum_xx + x(i)^2;
    sum_TT = sum_TT + T(i)^2;
end
b = (ndata*sum_xT - sum_x * sum_T)/(ndata*sum_xx - (sum_x)^2);
a = sum_T/ndata - b*sum_x/ndata; %menghitung a
y = a + b.*x; %persaamaan regresi

%Menghitung koefisien korelasi
r = ndata *sum_xT - (sum_x*sum_T);
r = r/(sqrt(ndata*sum_xx-(sum_x)^2)*sqrt(ndata*sum_TT-(sum_T)^2));

%Menampilkan hasil
disp(sprintf('Persamaan regresi: \nY = %.3f + %.3f x', a, b)) 
disp(sprintf('\nKoefisien Korelasi: \nr = %.3f dan r^2 = %.3f',r,r^2));
 
%Menampilkan grafik
plot(x, T, 'go', 'lineWidth', 3)
title('Hubungan T(C) dan x(cm)')
xlabel('Panjang batang (x)')
ylabel('Suhu (T)')
axis([0, 9.5, 0, 105])
grid on
hold on
plot(x, y, 'r-', 'lineWidth',3)
legend('Data', 'Trendline', 'location', 'northwest')
hold off

%Menghitung nilai T saat X = 12 cm
s = 12;
Y =@(x) a+b.*x;
suhu_12 = Y(s);
disp(sprintf('\nSuhu saat x = 12 adalah %.3f C', suhu_12));

