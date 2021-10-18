clear;clc;
%Gauss-Jordan
%Matriks A = persamaan
% i1  + i2 -i3 = 0
% 6i1 - 4i2    = 24
% 6i1 + 2i3    = 10
disp('Matriks A')
A=[1 1 -1; 6 -4 0; 6 0 2];
disp(A)

%Matriks B = hasil
disp('Matriks B')
B=[0 24 10];
disp(B)

%Matriks C = gabungan A & B transpose
%  1  1 -1 |  0
%  6 -4  0 |  24
%  6  0  2 |  10
C=[A,B'];
disp('Matriks C')
disp(C)

%Panjang matriks
n=length(A); %===    3

%Lower Elimination (dengan diagonalnya 1)-> bawah diagonal menjadi nol
for i=1:n %membuat diagonal menjadi 1
    dia=C(i,i); 
   
    for j=i:n+1 
        C(i,j)=C(i,j)/dia; %kita buat diagonalnya jadi satu
    end
    disp('Membuat Diagonal menjadi 1')
    disp(C)         
    for k=i+1:n %membuat elemen dibawah diagonal menjadi nol
        p=C(k,i);
        
        %kolom
        for m = 1:n+1
            C(k,m)=C(k,m)-C(i,m)*p;
        end
    end
    disp('Membuat elemen di bawah diagonal menjadi 0')
    disp(C)
end
disp('----Selesai melakukan Lower Elimination----')
disp(' ')

%Upper Elimination (dengan diagonalnya 1) --> atas diagonal menjadi nol
for i=n:-1:1 %membuat elemen diatas diagonal menjadi nol
    for k=i-1:-1:1
        p=C(k,i);
        
        %kolom
        for m = n+1:-1:1
            C(k,m) = C(k,m) - C(i,m)*p;
        end
    end
    disp('Membuat elemen di atas diagonal menjadi 0')
    disp(C)
end
disp('----Selesai melakukan Upper Elimination----')
disp(' ')

disp('Matriks C')
disp(C)

for j=1:n
    disp(sprintf('i%d= %.3f',j,C(j,n+1)));
end
