function c = classify(x)
[n,m] = size(x)
if (n == 0 || m == 0)
    c = -1
elseif (n == 1 && m == 1)
    c = 0
elseif (n == 1 || m == 1)
    c = 1
else c = 2
end
end