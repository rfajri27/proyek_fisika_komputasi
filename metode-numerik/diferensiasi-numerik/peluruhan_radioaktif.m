%PELURUHAN RADIOAKTIVITAS
clear; clc;
%set konstanta peluruhan
k = 0.053;

%set t_max
tmax = 80;
dt = 0.1;
n = round(tmax/dt); %cacahan t
t = linspace(0,tmax,n); %buat array t dgn min 0 s/d tmax sebanyak n

%Set nilai awal
Nt = zeros(1,n); %membuat array 1D Nt sebanyak n dengan nilai 0
Nt_a = zeros(1,n); %analitik
Nt(1) = 100; %massa awal
Nt_a(1) = 100; %massa awal (analitik)

for i = 2:n
    %perhitungan numerik
    Nt(i) = (1-(k*dt))*Nt(i-1); 
    %perhitungan analitik
    Nt_a(i) = Nt_a(1)*exp(-k*t(i)); 
end
%Membuat grafik
plot(t,Nt,'-b', 'linewidth', 2); %plot numerik
title('Peluruhan Radioaktivitas');
grid on;
hold on
plot(t,Nt_a,'-r', 'linewidth', 2); %plot analitik
legend('Numerik','Analitik');
xlabel('t');
ylabel('N(t)');
hold off;