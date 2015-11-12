function b = queen_check(board)
[n,m] = size(board);
b = true;
for i=1:n
    for j=1:m
        if (board(i,j))
            for ni = i+1:n
                if (board(ni,j))
                    b = false;
                end
            end
            for nj = j+1:m
                if (board(i,nj))
                    b = false;
                end
            end
            ni = i+1;
            nj = j+1;
            while(ni <= n && nj <= m)
                if (board(ni,nj))
                    b = false;
                end
                ni = ni+1;
                nj = nj+1;
            end
            ni = i+1;
            nj = j-1;
            while(ni <= n && nj >= 1)
                if (board(ni,nj))
                    b = false;
                end
                ni = ni+1;
                nj = nj-1;
            end
            ni = i-1;
            nj = j+1;
            while(ni >= 1 && nj <= m)
                if (board(ni,nj))
                    b = false;
                end
                ni = ni-1;
                nj = nj+1;
            end
            if (~b)
                return
            end
        end
    end
end
end
