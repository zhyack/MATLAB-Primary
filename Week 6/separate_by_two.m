function [e,o] = separate_by_two(m)
e = m(mod(m,2)==0)';
o = m(mod(m,2)==1)';
end