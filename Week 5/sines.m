function [s1, s2, sums] = sines(pts,amp,n1,n2)
if (nargin == 0)
    pts = 1000,amp = 1,n1 = 100,n2 = 105
elseif (nargin == 1)
    amp = 1,n1 = 100,n2 = 105
elseif (nargin == 2) 
    n1 = 100,n2 = 105
elseif (nargin == 3) 
    n2 = 1.05*n1
end
a = 0:pts-1
l1 = (pts-1)/n1
l2 = (pts-1)/n2
s1 = amp*sin(2*pi*a/l1)
s2 = amp*sin(2*pi*a/l2)
sums = s1+s2
end