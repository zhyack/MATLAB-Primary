function r = sparse_array_out(A,filename)
fid = fopen(filename,'w+');
if fid < 0
    r = false;
    return
end
dims = size(A);
fwrite(fid,dims,'uint32');
cnt = sum(sum(A~=0));
fwrite(fid,cnt,'uint32');
for i = 1:dims(1)
    for j = 1:dims(2)
        if (A(i,j)~=0)
            fwrite(fid,[i,j],'uint32');
            fwrite(fid,A(i,j),'double');
        end
    end
end
fclose(fid);
r = true;
return