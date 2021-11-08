%INTERPOLASI BILINEAR
clear;clc;
%set variabel awal
P = 1;
L = 1;
dx = 0.001;
dy = 0.001;

%membuat grid/cacahan
nx = P/dx;
ny = L/dy;

%inisialisasi suhu awal
T  = zeros(ny,nx);
T(1,1) = 10;    %pojok kiri atas %Q11
T(end,end) = 95;  %pojok kanan bawah %Q22
T(1,end) = 28;    %pojok kanan atas %Q12
T(end,1) = 53;   %pojok kiri bawah %Q21

x = P;
 for i = 2:nx-1
     x = x-dx;
     y = L;
     %intepolasi arah x
     f1 = ((P-x)* T(end,1)/P)+(x*T(end,end)/P);
     f2 = ((P-x)* T(1,1)/P)+(x*T(1,end)/P);
    for j = 2:ny-1
        y = y-dy;
        %interpolasi y
        T(i,j) = ((L-y)*f2/L)+(y*f1/L);
    end
 end
 
%membuat image scale
imagesc(T);
colorbar
axis equal off;