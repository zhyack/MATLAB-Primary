function m = June2015
m{30:3} = '';
week = {'Mon','Tue','Wed','Thu','Fri','Sat','Sun'};
wp = 1;
for i = 1:30
    m{i,1} = 'June';
    m{i,2} = i;
    m{i,3} = week{wp};
    wp = mod(wp,7)+1;
end
end