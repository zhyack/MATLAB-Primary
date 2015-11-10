function ma = moving_average(x)
persistent li
persistent p
persistent cnt
if (isempty(cnt))
    li = zeros(1,25)
    p = 0;
    cnt = 0
end
p = mod(p,25)+1
if (cnt < 25) 
    cnt = cnt+1
end
li(p) = x
ma = sum(li)/cnt
end