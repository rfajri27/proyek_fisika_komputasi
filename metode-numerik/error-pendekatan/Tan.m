function tangen=Tan(x)
n=50;
x=x*pi/180;
s=x;
q=1;
c=-1;

for i=2:n
    %sin
    if(mod(i,2)==1);
        a=x.^i;
        s=s+c*(a/fakt(i));
        c=-1*c;
    end
end

for i=1:n
    %cos
    if(mod(i,2)==0);
        a=x.^i;
        q=q+c*(a/fakt(i));
        c=-1*c;
    end
end
%hitung tangen
t=s/q;

if x== 90*pi/180
    t= inf;
elseif x== 270*pi/180
    t= inf;
end
tangen=t;
end