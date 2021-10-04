%MENCARI NILAI SIN X
clear;clc

%inisialisasi variabel
theta = input('Sudut: ');
n = input('Iterasi (n): ');
x = theta*pi/180; %konversi sudut ke radian
s = x; %inisialisasi untuk suku pertama
sign = -1; 

for i = 2:n
    if mod(i,2) == 1 %mod = modulus (sisa pembagian), jika sisanya satu = ganjil, sisanya 0 = genap
        s = s + sign*((x^i)/fakt(i));
        sign = -1*sign; %merubah tanda
    end
end

%menghitung error (error absolute)
error = abs(sin(x) - s);

disp(sprintf('sin(%d) = %f', theta, s));
fprintf('Error = %f \n', error);