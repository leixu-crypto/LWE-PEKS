function [sk h]=derive(n,m,l,q)
tau=seq(l);
[pk,sk]=setup(n,m,q);
T1=zeros(n,m);
%A=round(-q+(2*q)*rand(n,m));
tic;
for j=1:l
    T{j}=round(-q+(2*q)*rand(n,m));
    T1=tau(j)*T{j}+T1;
end
A_tau=mod(T1,q);
ID=[pk,A_tau];
W=inv(sk)*A_tau;
T=[sk,W;zeros(n),eye(n)];
sk=T;
toc;
h=toc;
end
function y=seq(num)
a=rand(1,num);
for i=1:num
    if a(i)>0.5
        a(i)=1;
    else
        a(i)=0;
    end
end
y=a;
end