%Metode Dekomposisi LU
%dengan menggunakan algoritma Doolitle

%matriks A dan B
A = [20 30 21 22 19;
     0 2 1 -2 20;
     12 27 24 27 -12;
     1 -27 0 21 20;
     10 1 -15 23 0];
B = [1; 4; 23; 12; 20];
disp('Matriks A')
A
disp('Matriks B')
B

[n,n]=size(A);

%menentukan matriks L dan U
U = A;
L = zeros(n,n);

%membuat matriks segitiga atas U
for i = 1 : n-1;
    if abs(U(i,i))> 0
        for i1 = i+1:n;
            m(i1,i) = U(i1,i)/U(i,i);
            for j = 1 : n
                U(i1,j) = U(i1,j) - m(i1,i)*U(i,j);
            end;
        end;
    end;
end;

%membuat matriks segitiga bawah L
for i = 1:n;
    L(i,1) = A(i,1)/U(1,1);
end
for j = 2:n;
    for i = 2:n;
        s = 0;
        for k = 1:j-1;
            s = s + L(i,k)*U(k,j);
        end;
        L(i,j) = (A(i,j) - s)/U(j,j);
    end;
end;
%[Y]=[B]/[L]
y(1) = B(1)/L(1,1);
for k = 2:n;
    sum = B(k);
    for i = 1 : k - 1;
        sum = sum - L(k,i)*y(i);
    end;
    y(k) = sum/L(k,k);
end;

%menhitung nilai x
x(n) = y(n)/U(n,n);
for k = n-1:-1:1;
    sum = y(k);
    for i = k+1:n;
        sum = sum - U(k,i)*x(i);
    end;
    x(k) = sum/U(k,k);
end;
disp('Matriks Segitiga Bawah (L)')
disp(L)
disp('Matriks Segitiga Atas (U)')
disp(U)
disp('Nilai X')
disp(x)