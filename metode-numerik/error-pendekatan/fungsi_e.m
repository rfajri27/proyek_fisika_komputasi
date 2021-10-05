%MENCARI NILAI FUNGSI e^x
clear;clc

%inisialisasi variabel
x = input('Masukkan nilai x: ');
n = input('Masukkan jumlah iterasi n: ');
e = 1; %inisialisai suku pertama

%hitung deret e = 1 + x + x^2/x! + ....
for i = 1:n
    e = e + ((x^i)/fakt(i));
end

%menghitung error (Error absolut)
error = abs(exp(x) - e);
%menghitung error (Error relatif)
errorR = (abs(exp(x) - e)/exp(x))*100;

disp(sprintf('Nilai e^%d adalah %f', x, e));
disp(sprintf('Error = %f', error));
disp(sprintf('Error Relatif = %f', errorR));
