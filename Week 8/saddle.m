function indices = saddle(M)
[n,m] = size(M);
indices = [];
for j = 1:m
    for i = 1:n
        mmax = max(M(i,1:m));
        mmin = min(M(1:n,j));
        if (mmax == M(i,j) && mmin == M(i,j))
            indices = [indices;[i,j]];
        end
    end
end
end
        