function n = one_per_n(x)
s = 0;
i = 0;
while(s < x && i < 10000)
    i = i+1;
    s = s + 1/i;
end
if (s < x)
    n = -1;
else
    n = i;
end
