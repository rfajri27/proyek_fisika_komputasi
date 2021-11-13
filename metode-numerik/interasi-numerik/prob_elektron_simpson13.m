%MENENTUKAN PROBABILITAS ELEKTRON
clear; clc;

%load file data
load psi.dat; %memanggil file psi.dat

x = psi(:,1); %nilai x
psii = psi(:,2); %psi(x)
f = psi(:,3); %psi^2(x)
%plot psi^2
plot(x,f, 'linewidth', 2);
hold on
plot(0.5,f, 'r', 'linewidth', 2)
hold off
grid on
legend('f(x)', 'x1');
%banyaknya nilai x
nx = length(x); %banyak cacahan x
%set nilai x1
x1 = 0.5;
%kondisi awal
xa = min(x);
h = abs(x(2)-x(1))/2;
dx = abs(x(2)-x(1));
%inisiasi untuk perhitungan luas trapesium yg terbentuk
P1 = 0; %peluang P(-1<=x<=x1)
P2 = 0; %peluang P(x1<x<=1)

for i = 1:nx-2
    if (xa<=x1)
        P1 = P1+((f(i)+4*f(((i+1)))+f(i+2)));
        xa = xa+dx;
    else
        P2 = P2+((f(i)+4*f((i+1))+f(i+2)));
        xa = xa+dx;
    end
end
P1 = P1*h/3;
P2 = P2*h/3;
P_total = P1+P2;
error = abs(1-P_total);

fprintf('P(-1<=x<=x1)= %.10f \n', P1);
fprintf('P(x1<=x<=1)= %.10f \n', P2);
fprintf('Probabilitas Total= %.10f\n', P_total);
fprintf('Error = %.10f \n', error);