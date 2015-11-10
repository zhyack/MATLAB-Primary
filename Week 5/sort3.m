function v = sort3(a,b,c)
if (a > b) 
    tmp = a
    a = b
    b = tmp
end
if (b > c) 
    tmp = b
    b = c
    c = tmp
end
if (a > b) 
    tmp = a
    a = b
    b = tmp
end
v = [a,b,c];
end