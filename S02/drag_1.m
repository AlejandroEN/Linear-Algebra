P = [3 -1  0 -1 -3 -1 -2 -3;
    -2  0  0  0  2  0  2  2; 
     3  0  0 -1 -1 -2 -1 -1;
     0  0  0  1 -2  2 -2 -2;
     3  1  0  0 -1 -1 -2 -1;
     1 -4  0 -2 -5  0 -1 -5];

erp = rref(P);
withoutZeros = 0;
zerosMatrix = zeros(size(erp, 2), 1)';
rows = size(erp, 1);

for row = 1 : rows
    if zerosMatrix == erp(row, :)
        withoutzeros = withoutZeros + 1;
    end
end

disp(withoutzeros)