fp=fopen('tanvalue.txt','w');
x=0;

while(x<=360)
    t=Tan(x);
    fprintf(fp,'%f       %f\n',x,t);
    x=x+10;
end

fclose(fp);
load tanvalue.txt
disp('Membuat grafik')
x=tanvalue(:,1);
t=tanvalue(:,2);

figure(1)
plot(x,t,'b','LineWidth',3);
xlabel('X');
ylabel('TAN X');
title('GRAFIK TAN X');
grid on
% ylim([-10, 10])
disp('Selesai...');
    