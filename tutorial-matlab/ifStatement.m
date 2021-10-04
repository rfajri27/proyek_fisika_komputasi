%percabangan if/elseif/else
% if kondisi
%      assigment
% elseif kondisi
%      assignment
% else
%      assignement
% end


for i = 1:1:15
    if i < 5 %logika if
        disp(sprintf('i = %d, Nilai i kurang dari 5', i));
    elseif i == 5 %logika elseif
        disp(sprintf('i = %d, Nilai i adalah 5', i));
    else %logika else
        disp(sprintf('i = %d, Nilai i lebih dari 5', i));
    end
end
