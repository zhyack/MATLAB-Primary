function b = myprime(n)
b = true;
if (n > 2)
    for i = 2:1:sqrt(n)
        if (mod(n,i) == 0)
            b = false;
            break;
        end
    end
end
end
