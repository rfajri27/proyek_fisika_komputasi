%MENCARI NILAI SIN X
clear;clc

%inisialisasi variabel
theta = 0:0.1:2*pi;
n = 100;
x = theta; %konversi sudut ke radian
s = 1; %inisialisasi untuk suku pertama
sign = -1; 

for i = 2:n
    if mod(i,2) == 0 %mod = modulus (sisa pembagian), jika sisanya satu = ganjil, sisanya 0 = genap
        s = s + sign*((x.^i)/fakt(i));
        sign = -1*sign; %merubah tanda
    end
end

%membuat grafik
plot(x, s, 'g', 'lineWidth', 4)
title('Grafik Cos x');
xlabel('Sudut');
ylabel('Sin x');
xlim([0, 6.5])
ylim([-1.1, 1.1])
grid on;