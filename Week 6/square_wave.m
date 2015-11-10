function s = square_wave(n)
t = 4*pi/1000;
s = zeros(1,1001);
for i = 1:1001
    for k = 1:n
        s(i) = s(i)+sin((k*2-1)*(i-1)*t)/(k*2-1);
    end
end
end
    