function v=SampleD(B,c,s)
[n,m]=size(B);
v=zeros(n,1);
B1=GSNorm(B);
%C1=zeros(n,n+1);
%C1(:,n+1)=c;
d=0;
for i=n:1
    d=dot(c,B1(:,i))/dot(B1(:,i),B1(:,i))
    s=s/sqrt(dot(B1(:,i),B1(:,i)))
    z=SampleZ(d,s,n)
    c=c-z.*B(:,i);
    v=v+z*B(:,i)
end
end