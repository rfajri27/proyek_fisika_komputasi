%FINITE DIFFERENCE
clear;clc
f = @(x) 3*x.^3 + 2*x.^2 - 4*x + 2; %fungsi
f1 = @(x) 9*x.^2 + 4*x - 4; %turunan fungsi secara analitik

dx = 0.1;
xmax = 10;
n = round(xmax/dx); %banyak cacahan
x = linspace(0,xmax,n); %nilai x

%SET KONDISI AWAL
%Forward Difference(fd)
fd = zeros(1,n);
xf = 0; %kondisi awal untuk fd

%Backward Difference(bd)
bd = zeros(1,n);
xb = dx; %kondisi awal untuk bd

%Central Difference(cd)
cd = zeros(1,n); 
xc = dx; %kondisi awal untuk cd

for i = 1:n
    %Forward Difference
    fd(i) = (f(xf+dx)-f(xf))/dx;
    xf = xf+dx;
    
    %Backward Difference
    bd(i) = (f(xb)-f(xb-dx))/dx;
    xb = xb+dx;
    
    %Central Difference
    cd(i) = (f(xc+dx)-f(xc-dx))/(2*dx);
    xc = xc+dx;
end

%Menampilkan grafik
subplot(1,3,1)
plot(x, f1(x), x, fd, 'r-', 'lineWidth',2);
title('Forward Difference');
legend('Analitik', 'fd', 'location', 'southeast');

subplot(1,3,2)
plot(x, f1(x), x, bd, 'c-', 'lineWidth',2);
title('Backward Difference');
legend('Analitik', 'bd', 'location', 'southeast');

subplot(1,3,3)
plot(x, f1(x), x, cd, 'g-', 'lineWidth',2);
title('Central Difference');
legend('Analitik', 'cd', 'location', 'southeast');