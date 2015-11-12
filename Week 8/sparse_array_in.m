function A = sparse_array_in(filename)
fid = fopen(filename,'r');
if fid < 0
    A = [];
    return;
end
dims = fread(fid,2,'uint32');
cnt = fread(fid,1,'uint32');
A = zeros(dims(1),dims(2));
for k = 1:cnt
    coor = fread(fid,2,'uint32');
    val = fread(fid,1,'double');
    A(coor(1),coor(2)) = val;
end
A = reshape(A,dims');
fclose(fid);
end