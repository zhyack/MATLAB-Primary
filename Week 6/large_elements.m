function indexes = large_elements(m)
[r,c] = size(m);
indexes = [];
for i = 1:r
    for j = 1:c
        if (m(i,j)>i+j)
            indexes = [indexes;[i,j]];
        end
    end
end
end