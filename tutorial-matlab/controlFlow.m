clear;clc

%pause, break dan continue

for i = 1:30
    if i == 19
        disp('This is nineteen')
%         break %menghentikan looping -- keluar dari looping
        continue %melanjutkan looping -- mloncat ke atas, 
                 %tanpa mengeksekusi yg bawah
    end
    pause(0.25) %menunda looping selama n detik
    disp(i)
end
disp('Program ended');