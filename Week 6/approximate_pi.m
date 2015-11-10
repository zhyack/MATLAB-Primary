function [p,k] = approximate_pi(delta)
p = 0;
k = 0;
while(abs(pi-p)>delta)
    p = p+sqrt(12)*(-3).^(-k)/(k*2+1);
    k = k+1;
end
k = k-1;
end