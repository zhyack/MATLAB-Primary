function m = movies(hr1,min1,durmin1,hr2,min2,durmin2)
en1 = hr1*60+min1+durmin1
st2 = hr2*60+min2
if (st2 < en1 || st2-en1 > 30) m = 0;
else m = 1;
end