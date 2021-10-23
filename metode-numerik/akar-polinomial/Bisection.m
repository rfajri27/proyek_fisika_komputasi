%Menentukan perkiraan akar menggunakan metode Biseksi
clear;clc;

fp=fopen('bisect.txt','w');
%definisi fungsi
f=@(x)(x^4-20*x^3+250*x^2-500*x-144);

%nilai perkiraan dan iterasi
xa=input('Nilai perkiraan pertama (xa): ');
xb=input('Nilai perkiraan kedua (xb): ');
n=input('Jumlah iterasi (n): ');

fa=f(xa);
fb=f(xb);

if fa*fb>=0
    disp(sprintf('Nilai perkiraan yang dipilih tidak sesuai'));
elseif fa*fb<0
    for i=0:n
        xc=(xa+xb)/2;
        fc=f(xc);
        if fa*fc<0
            xb=xc; fb=fc;
        elseif fa*fc>0
            xa=xc; fa=fc;
        else
            xc=xc;
        end
        fprintf(fp, '%f      %f\n',i,xc);
    end
end

fclose(fp);
load bisect.txt;
x=bisect(:,1);
y=bisect(:,2);

disp(sprintf('Perkiraan akar : %.10f', bisect(n,2)))
plot(x,y,'g-o','lineWidth',2)
title('Grafik Akar dengan Metode Biseksi')
xlabel('Iterasi')
ylabel('Perkiraan akar')
grid on