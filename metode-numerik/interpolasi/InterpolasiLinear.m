%INTERPOLASI LINEAR
clc;clear;
%set data
x = [1.5, 1.6];  %1.7, 1.8];
y = [3.2756, 3.286];  %3.297, 3.308];

%plot data sebelum interpolasi
figure(1)
plot(x,y,'ro', 'linewidth', 3);
title('Sebelum Interpolasi');
axis([1.49 1.62 3.274 3.288])
grid on;

%insialisasi ruang array (matriks kosong)
yb = []; %nilai y hasil interpolasi
xb = []; %nilai x di antara x1 dan x2
%set dx
dx = 0.01;

%Inisialisasi nilai awal (persiapan hitung interpolasi)
x_max = max(x);
x1 = x(1);
x2 = x(2);
y1 = y(1);
y2 = y(2);

%hitung interpolasi (untuk dua data)
xb(1) = x1+dx;
yb(1) = y1 + ((xb(1)-x1)*(y2-y1)/(x2-x1));

%persiapan looping
i = 1;
j = 2;
while xb(i) < x_max
    %perulangan dilakukan selama nilai xb lebih kecil dr x_max
    %kondisi ini dibutuhkan jika data yg diketahui lebih dari 2
   if xb(i) > x(j)
         x1 = x(j);
         x2 = x(j+1);
         y1 = y(j);
         y2 = y(j+1);
         j = j+1;
   end
    i = i+1;
    xb(i) = xb(i-1)+dx;
    yb(i) = y1 + ((xb(i)-x1)*(y2-y1)/(x2-x1));
   
end

%plot hasil interpolasi
figure(2)
plot(xb, yb, 'bo', 'lineWidth', 3)
hold on
plot(x,y,'ro', 'linewidth', 3)
title('Setelah Interpolasi')
axis([1.49 1.62 3.274 3.288])
legend('Data Interpolasi', 'Data Asli', 'location', 'southeast')
grid on
hold off