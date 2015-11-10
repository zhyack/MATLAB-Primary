function m=identity(n)
m = zeros(n,n);
for i = 1:n
    m(i*n-n+i)=1;
end
end