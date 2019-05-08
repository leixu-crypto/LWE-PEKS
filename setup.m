function [pk,sk]=setup(n,m,q)
% S=good_basis(1000,n,0.90);
% U=round(-1000+(2000)*rand(n,n));
% [U_1,U_2]=Parse(U,n);
% V=round(-1000+2000*rand(n,n));
% [V_1,V_2]=Parse(V,n);
% M=U_1*U_2*V_1*V_2;
% pk=5*inv(M);
% sk=S;
[pk,sk]=TrapGen(n,m,q);
A1=round((q-1)*rand(n,m));
B=round((q-1)*rand(n,n));
for i=1:128
    U{i}=round((q-1)*rand(n,m));
    V{i}=round((q-1)*rand(n,m));
end
end




