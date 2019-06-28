function [v]=GSNorm1(A)
%v(:,1)=A(:,1)/norm(A(:,1));
v(:,1)=A(:,1);
[n,m]=size(A);
for k=2:m 
    res(:,1)=A(:,k);
    for i=1:k-1
        res=res-v(:,i)'*res*v(:,i);
    end
    %v(:,k)=res/norm(res);
    v(:,k)=res;
end