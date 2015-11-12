function A = bell(n)
if (n <= 0 || rem(n,1)~=0)
    A = [];
    return
end

A = zeros(n,n);
A(1,1) = 1;
for k = 2:n
    for j = 1:k
        i = k+1-j;
        if (j == 1)
            A(i,j) = A(1,k-1);
        else
            A(i,j) = A(i,j-1)+A(i+1,j-1);
        end
    end
end
end
