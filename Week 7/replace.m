function cc = replace(c,c1,c2)
cc = c;
[r,c] = size(c);
for i = 1:r
    for j = 1:c
        if (ischar(cc{i,j}))
            n = length(cc{i,j});
            for k = 1:n
                if (cc{i,j}(k) == c1)
                    cc{i,j}(k) = c2;
                end
            end
        end
    end
end
end
