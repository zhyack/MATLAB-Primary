function m = May2015
m(31) = struct('month','May','date',31,'day','Sun');
week = {'Mon','Tue','Wed','Thu','Fri','Sat','Sun'};
wp = 5;
for i = 1:31
    m(i).month = 'May';
    m(i).date = i;
    m(i).day = week{wp};
    wp = mod(wp,7)+1;
end
end