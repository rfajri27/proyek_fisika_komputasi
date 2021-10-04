%MENCARI NILAI COS X
clear;clc

%inisialisasi variabel
theta = input('Sudut: ');
n = input('Iterasi (n): ');
x = theta*pi/180; %konversi sudut ke radian
c = 1; %inisialisasi untuk suku pertama
sign = -1; 

for i = 2:n
    if mod(i,2) == 0 %mod = modulus (sisa pembagian), jika sisanya satu = ganjil, sisanya 0 = genap
        c = c + sign*((x^i)/fakt(i));
        sign = -1*sign; %merubah tanda
    end
end

%menghitung error (error absolute)
error = abs(cos(x) - c);

disp(sprintf('cos(%d) = %f', theta, c));
disp(sprintf('Error = %f', error));
