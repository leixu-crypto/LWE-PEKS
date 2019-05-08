%function [c1,c2,t]=encrypt(n,m,k,l,q,alpha)
function t=encrypt(n,m,k,l,q,alpha)
u=round(q*rand(1,n));
A=round(-q+(2*q)*rand(n,m));
M1=zeros(n,m);
T1=zeros(n,m);
tau=seq(l);
w=seq(k);
% for j=1:l
%     T{j}=round(-q+(2*q)*rand(n,m));
%     T1=tau(j)*T{j}+T1;
% end
for j=1:l
    T{j}=round(-q+(2*q)*rand(n,m));
end
% for j=1:k
%     M{j}=round(-q+(2*q)*rand(n,m));
%     M1=w(j)*M{j}+M1;
% end
for j=1:k
    M{j}=round(-q+(2*q)*rand(n,m));
end
R=round(-1+(2)*rand(2*m,m));
tic; 
for j=1:l
    T1=tau(j)*T{j}+T1;
end
for j=1:k
    M1=w(j)*M{j}+M1;
end
A_tau=[A,mod(T1,q)];
G_m=mod(M1,q);
A_w=mod([A_tau,G_m],q);
r=round(q*rand(1,n));
x=mod(floor(q*normrnd(0,alpha/sqrt(2*pi),1,1)+0.5),q); 
y=mod(floor(q*normrnd(0,alpha/sqrt(2*pi),1,m)+0.5),q);
z=y*R';
c1=u*r';
c2=A_w'*r'+[y,z]';
t=toc;
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