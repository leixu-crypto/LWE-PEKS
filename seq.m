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

