%MENGHITUNG FAKTORIAL

function faktorial = fakt(n) %nama fungsi(parameter)
    %inisialisasi nilai p
    p = 1;
    %hitung faktorial p! = 1.2....(p-2).(p-1).(p)
    for i = 1:n
        p = p*i;
    end
    faktorial = p;
end