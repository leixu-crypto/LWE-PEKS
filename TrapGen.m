function [A,S]=TrapGen(n,m,q)
A=round((q-1)*rand(n,m));
B=zeros(n,m);
for i=1:m
    B(:,i)=A(:,m-i+1);
end
D=uptri(B,q);
E=SF(D,q);
for i=1:m
    T(i,:)=E(m-i+1,:);
end
P=T;
for j=1:m-n
    P(:,j)=T(:,m-n-j+1);
end
Q=q*eye(n,n);
O=zeros(m-n,n);
T=[O;Q];
S=[P,T];
%-----------------------------
% k=floor((m-n)/n);
% K=eye(m-n,m-n);
% for i=1:m-n-1
%     K(i+1,i)=-2;
% end
% U21=zeros(n,m-n);
% U22=-eye(n,n);
% R1=[K',eye(m-n,n)];
% R2=[U21,U22];
% U=[R1;R2]; 
% S=S*U;
% s=0;
% G=zeros(m-n,n);
% for j=1:n
%     for k=1:ceil(log10(q))
%     G(s+k,j)=2^(k-1);
%     end
%     s=s+ceil(log10(q));
% end 
% (H2-eye(n))
% W=

