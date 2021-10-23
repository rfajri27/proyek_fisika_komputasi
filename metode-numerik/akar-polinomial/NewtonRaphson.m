%MEMBUAT GRAFIK Nilai Perkiraan VS Iterasi METODE NEWTON-RAPHSON
%Menggunaka For
clear;clc

fp = fopen('newt.txt','w');   %membuat file txt
f = @(x)(x.^4-20*x.^3+250*x.^2-500*x-144);    %fungsi
df = @(x)(4*x.^3-60*x.^2+500*x-500); %turunan fungsi

%inisialisasi variabel
x0 = input('Masukkan nilai perkiraan awal (x0) : ');
n = input('Masukkan jumlah iterasi n : ');

for i=1:n
    x(i) = x0 - (f(x0)/df(x0));
    fprintf(fp,'%f    %f\n',i,x(i));
    x0=x(i);
end

%menutup file txt
fclose(fp);
%memuat/membuka file txt
load newt.txt
iterasi = newt(:,1);
akar = newt(:,2);
disp(sprintf('Perkiraan akar: %.10f', x(i)));
%membuat grafik
plot(iterasi,akar,'r-o','lineWidth',2)
title('Grafik Akar dengan Metode Newton Raphson')
xlabel('Iterasi')
ylabel('Perkiraan akar')
grid on