%Jenis-jenis skalar, vektor, matriks
clear; clc;
%skalar
a = 8;

%vektor
%vektor baris
b = [1 2 3 4 5];

%vektor kolom
c = [1; 2; 3; 4; 5];

%matriks
d = [1 2; 3 4];

%OPERASI MATRIKS

%transpose matriks
e = c';

%penjumlahan vektor
f = b + e; %dimensi vektor harus sama

%perkalian vektor

%dot product
g = dot(b,c);

%cross product
%panjang yang dicross kan harus 3, baris atau kolomnya

h = [1 3 4];
i = [5; 7; 9];
j = cross(h,i);

%perkalian matriks
k = [56 66; 12 23];
l = k*d;

%perkalian matriks korespondensi satu-satu
m = k.*d; %perkalian masing-masing elemen matriks