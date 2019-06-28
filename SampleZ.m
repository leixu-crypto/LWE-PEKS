function z= SampleZ(c,s,n)
t=ceil(2*sqrt(log(n)));
z=0;
while z==0
r=-s*t+c+randi([0,2*s*t],1);
p1=rho(s,c,r);
p2=rand;
if(p2<p1)
    z=r;
end
end
end

function p=rho(s,c,x)
p=exp(-(x-c)^2/s^2);
end
