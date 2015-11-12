function score = bowl(seq)
n = length(seq);
frame = 0;
i = 1;
score = 0;
bonus = 0;
for i = 1:n
    if (seq(i)<0 || seq(i)>10)
        score = -1;
        return
    end
end
i = 1;
while(i <= n && frame < 10)
    frame = frame +1;
    if (seq(i) == 10)
        if (i+2 > n)
            score = -1;
            return
        end
        score = score+10+seq(i+1)+seq(i+2);
        i = i+1;
        if (frame == 10)
            bonus = 2;
        end
    elseif (i+1 > n)
        score = -1;
        return
    elseif (seq(i)+seq(i+1) == 10)
        if (i+2 > n)
            score = -1;
            return
        end
        score = score+10+seq(i+2);
        i = i+2;
        if (frame == 10)
            bonus = 1;
        end
    elseif (seq(i)+seq(i+1) < 10)
        score = score+seq(i)+seq(i+1);
        i = i+2;
    else
        score = -1;
        return
    end
end
if (i+bonus <= n)
    score = -1;
end
end