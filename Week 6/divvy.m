function m = divvy(M,k)
kk = M.*(mod(M,k) == 0)
pr = M*k
pr = pr.*(mod(M,k) ~=0)
m = kk+pr;
end