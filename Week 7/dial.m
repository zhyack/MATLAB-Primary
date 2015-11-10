function d = dial(t)
n = length(t);
d = t;
for i = 1:n
    if (t(i) >= '0' && t(i) <= '9')
        d(i) = t(i);
    elseif (t(i) >= 'A' && t(i) <= 'Z')
        if (t(i) == 'Q' || t(i) == 'Z')
            d = '';
            return
        elseif (t(i) >= 'A' && t(i) <= 'C')
            d(i) = '2';
        elseif (t(i) >= 'D' && t(i) <= 'F')
            d(i) = '3';
        elseif (t(i) >= 'G' && t(i) <= 'I')
            d(i) = '4';   
        elseif (t(i) >= 'J' && t(i) <= 'L')
            d(i) = '5';
        elseif (t(i) >= 'M' && t(i) <= 'O')
            d(i) = '6';
        elseif (t(i) >= 'P' && t(i) <= 'S')
            d(i) = '7';
        elseif (t(i) >= 'T' && t(i) <= 'V')
            d(i) = '8';
        elseif (t(i) >= 'W' && t(i) <= 'Y')
            d(i) = '9';
        end
    elseif (t(i) == '(' || t(i) == ')' || t(i) == '-')
        d(i) = ' ';
    elseif (t(i) == '''' || t(i) == ' ' || t(i) == '#' || t(i) == '*')
        d(i) = t(i);
    else
        d = '';
        return
    end
end
end
