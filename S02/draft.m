M = [50 70 200 360; 90 30 270 320; 120 240 100 1050; 420 370 940 4960];

for column = 1 : size(M, 2)
   for row = 2 : size(M, 1)
        factor = M(row, column) / M((row - 1), column);
        M(row, column) = M(row, column) + factor * M(row - 1, column);
   end
end

disp(M)