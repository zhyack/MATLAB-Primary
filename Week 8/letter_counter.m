function cnt = letter_counter(filename)
fid = fopen(filename,'rt');
if fid < 0
    cnt = -1;
    return
end
cnt = 0;
oneline = fgets(fid);
while ischar(oneline)
    len = length(oneline);
    for i=1:len
        if (isletter(oneline(i)))
            cnt = cnt+1;
        end
    end
    oneline = fgets(fid);
end
fclose(fid);
end