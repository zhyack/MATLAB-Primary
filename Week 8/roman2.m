function r = roman2(s)
judge{399} = '';
for i = 1:399
    judge{i} = roman(i);
end
for i=1:399
    if (strcmp(judge{i},s))
        r = uint16(i);
        return
    end
end
r = uint16(0);
end

function s = roman(n)
s = '';
while (n >= 100)
    n=n-100;
    s = [s,'C'];
end
if (n >= 90)
    s = [s,'XC'];
    n=n-90;
    if (n == 9)
        s = [s,'IX'];
        n = 0;
    elseif (n >= 5)
        s = [s,'V'];
        n = n-5;
        for t=1:n
            s = [s,'I'];
        end
    elseif (n==4)
        s = [s,'IV'];
        n = 0;
    else
        for t=1:n
            s = [s,'I'];
        end
    end
elseif (n >= 50)
    s = [s,'L'];
    n=n-50;
    while(n >= 10)
        s = [s,'X'];
        n = n-10;
    end
    if (n == 9)
        s = [s,'IX'];
        n = 0;
    elseif (n >= 5)
        s = [s,'V'];
        n = n-5;
        for t=1:n
            s = [s,'I'];
        end
    elseif (n==4)
        s = [s,'IV'];
        n = 0;
    else
        for t=1:n
            s = [s,'I'];
        end
    end
elseif (n >= 40)
    s = [s,'XL'];
    n = n-40;
    if (n == 9)
        s = [s,'IX'];
        n = 0;
    elseif (n >= 5)
        s = [s,'V'];
        n = n-5;
        for t=1:n
            s = [s,'I'];
        end
    elseif (n==4)
        s = [s,'IV'];
        n = 0;
    else
        for t=1:n
            s = [s,'I'];
        end
    end
else
    while(n >= 10)
        s = [s,'X'];
        n = n-10;
    end
    if (n == 9)
        s = [s,'IX'];
        n = 0;
    elseif (n >= 5)
        s = [s,'V'];
        n = n-5;
        for t=1:n
            s = [s,'I'];
        end
    elseif (n==4)
        s = [s,'IV'];
        n = 0;
    else
        for t=1:n
            s = [s,'I'];
        end
    end  
end
end
