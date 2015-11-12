function [row,col,numrows,numcols,summa] = maxsubsum(A)
[n,m] = size(A);
summa = -1e30;
for i = 1:n
    for j = 1:m
        for ni = i:n
            for nj = j:m
                ss = 0;
                for ii = i:ni
                    for jj = j:nj
                       ss = ss + A(ii,jj);
                    end
                end
                if (ss > summa)
                    row = i;
                    col = j;
                    numrows = ni-i+1;
                    numcols = nj-j+1;
                    summa = ss;
                end
            end
        end
    end
end
end