%MENENTUKAN PROBABILITAS ELEKTRON
clear; clc;

%load file data
load psi.dat; %memanggil file psi.dat

x = psi(:,1); %nilai x
psii = psi(:,2); %psi(x)
f = psi(:,3); %psi^2(x)
%plot psi^2
plot(x,f, 'linewidth', 3);
hold on
plot(0.5, f, 'r', 'linewidth', 3)
hold off
grid on
legend('f(x)', 'x1');
%banyaknya nilai x
nx = length(x); %banyak cacahan x
%set nilai x1
x1 = 0.5;
%kondisi awal
xa = min(x);
h = abs(x(2)-x(1));
%inisiasi untuk perhitungan luas trapesium yg terbentuk
P1 = 0; %peluang P(-1<=x<=x1)
P2 = 0; %peluang P(x1<x<=1)
for i = 1:nx-1
    if (xa<=x1)
        P1 = P1+((f(i)+f(i+1))*h*0.5);
        xa = xa+h;
    else
        P2 = P2+((f(i)+f(i+1))*h*0.5);
        xa = xa+h;
    end
end

%Hitung probabilitas total dan error
P_tot = P1+P2;
error = abs(1-P_tot);

fprintf('P(-1<=x<=x1)= %.10f \n', P1);
fprintf('Peluang menemukan elektron di x <= 0.5 adalah %.3f%% \n\n', P1*100)
fprintf('P(x1<=x<=1)= %.10f \n', P2);
fprintf('Peluang menemukan elektron di x > 0.5 adalah %.3f%% \n\n', P2*100)
fprintf('Probabilitas Total= %.10f\n', P_tot);
fprintf('Error = %.10f \n', error);