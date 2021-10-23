%Menentukan perkiraan akar menggunakan metode Secant
clear;clc;

fp=fopen('sec.txt','w');
%definisi fungsi
f=@(x)(x^4-20*x^3+250*x^2-500*x-144);

%nilai perkiraan dan iterasi
xa=input('Nilai perkiraan pertama (xa): ');
xb=input('Nilai perkiraan kedua (xb): ');
n=input('Jumlah iterasi (n): ');

fa=f(xa);
fb=f(xb);
if fb-fa==0
    disp(sprintf('Nilai perkiraan yanng dipilih tidak sesuai'))
elseif fb-fa~=0
    for i=0:n
        xc=xb-((fb*(xb-xa))/(fb-fa));
    
        fc=f(xc);
        xa=xb; fa=fb;
        xb=xc; fb=fc;
        fprintf(fp,'%f     %f\n',i,xc);
    end
end
fclose(fp);
load sec.txt
x=sec(:,1);
y=sec(:,2);

disp(sprintf('Perkiraan akar : %.10f', sec(n,2)))
plot(x,y,'b-o','lineWidth',2)
title('Grafik Akar dengan Metode Secant')
xlabel('Iterasi')
ylabel('Perkiraan akar')
grid on