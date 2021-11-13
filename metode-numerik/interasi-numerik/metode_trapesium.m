%METODE TRAPEZOID
clear;clc;
%fungsi
f = @(x) 3*x.^3 + 2*x.^2 - 4*x + 2;
a = 0; %batas bawah
b = 5; %batas atas
sum=0; %inisiasi awal
n=input('Jumlah trapesium (n):'); %jumlah trapesium
dx=(b-a)/n; %lebar(h) tiap trapesium

%kondisi awal
x0=a;
x1=a+dx;
for i=1:n
    sum = sum + (f(x0)+f(x1))*dx/2; %luas trapesium
    x0 = x1;    %update nilai untuk looping berikutnya
    x1 = x1+dx;
end

%menghitung Error
hasilAna = integral(f, a, b);
error = abs(hasilAna-sum);
fprintf('Luas daerah di bawah kurva adalah %.3f\n',sum);
fprintf('Hasil Analitik : %.3f\n', hasilAna);
fprintf('Error : %.3f\n', error);
