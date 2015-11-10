function w = replace_me(v,a,b,c)
if (nargin == 2)
    b = 0;
    c = 0;
elseif (nargin == 3)
    c = b;
end
[m,n] = size(v);
w = [];
for i = 1:n
    if (v(i)==a)
        w = [w,b,c];
    else
        w = [w,v(i)];
    end
end
end