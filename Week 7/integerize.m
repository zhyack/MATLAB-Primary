function ty = integerize(A)
m = max(max(A));
if (uint64(m) ~= m)
    ty = 'NONE';
elseif (uint32(m) ~= m)
    ty = 'uint64';
elseif (uint16(m) ~= m)
    ty = 'uint32'
elseif (uint8(m) ~= m)
    ty = 'uint16'
else
    ty = 'uint8'
end
end
