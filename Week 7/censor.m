function cen = censor(c,s)
n = length(c);
cen = {};
cnt = 0;
for i=1:n
    if (isempty(strfind(c{i},s)))
        cnt = cnt+1;
        cen{cnt} = c{i};
    end
end
end
