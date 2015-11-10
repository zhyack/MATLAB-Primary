function d = neighbor(v)
[m,n] = size(v);
if (m ~= 1 || n < 2) 
    d = [];
    return
end
d = zeros(1,n-1);
for i = 1:n-1
    d(i) = abs(v(i+1)-v(i));
end
end