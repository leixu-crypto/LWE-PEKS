function y=search(c,w,sk,q)
st=tokgen(sk,w);
t=dot(st,c);
if t< q/4
    y=1;
else
    y=0;
end
end

 
function st=tokgen(sk,w)
[n,m]=size(sk);
T=load(matrix_T.txt);
M=load(matrix_M.txt);
for j=1:k
    T{j}=T(:,2j-1:2j);
    T1=tau(j)*T{j}+T1;
end
for j=1:k
    M{j}=M(:,2*j*(m+2)-(m+2)+1:2*j*(m+2));
    M1=w(j)*M{j}+M1;
end
A_tau=[A,mod(T1,q)];
e2=SampleZ(c,s,m/2)
e1=SamplePre(A_tau,sk,y);
st=[e1;e2];
end

function x=SamplePre(A_tau,sk, y)
x1=SampleD(sk,c,s)
x2=A_tau\y;
x=x1+x2;
end
