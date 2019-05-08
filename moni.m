function y=moni(x,q)
if x==0
    y=0;
elseif x==q
    y=0;
else
    y=1;
    for i=1:q-2
      y=mod(y*x,q);
    end
end
end