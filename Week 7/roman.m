function num = roman(R)
dic = {'I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII','XIII','XIV','XV','XVI','XVII','XVIII','XIX','XX'};
for i = 1:20
    if strcmp(dic{i},R)
        num = uint8(i);
        return
    end
end
num = uint8(0);
end

    