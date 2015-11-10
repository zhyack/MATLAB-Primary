function coded = codeit(txt)
n = length(txt);
coded = txt;
for i=1:n
    if (txt(i) >= 'a' && txt(i) <= 'z')
        coded(i) = 25-(txt(i)-'a')+'a';
    elseif (txt(i) >= 'A' && txt(i) <= 'Z')
        coded(i) = 25-(txt(i)-'A')+'A';
    end
end
end
