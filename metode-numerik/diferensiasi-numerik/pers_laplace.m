%PERS. LAPLACE
clc;clear;
%set P & L --> nilai P=L
P = 1;
L = 1;

dx = 0.01;
%set banyak grid
nx = P/dx;
ny = L/dx;
itermax = nx*ny;
%set nilai suhu pada tiap batas
T(:,:)= zeros(nx,ny); %buat array 2D dengan nilai 0 sebanyak ny*nx
T(1,:) = 80;   %atas
T(ny,:) = 80; %bawah
T(:,1) = 10;   %kiri
T(:,nx) = 10; %kanan 

%perhitungan diulang sesuai jumlah cacahan yg terbentuk
for iter=1:itermax
    for i=(nx-1):-1:2 %arah x
        for j=(ny-1):-1:2 %arah y
           T(i,j)=(T(i-1,j)+T(i+1,j)+T(i,j-1)+T(i,j+1))/4;
        end
    end
end
imagesc(T);
colorbar
axis equal off;