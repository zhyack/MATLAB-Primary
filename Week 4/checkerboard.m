function board = checkerboard(n,m)
board = ones(n,m);
for i = 1:n
    for j = 1:m
        if (mod((i+j),2) == 1) board(i,j) = 0
        end
    end
end
end