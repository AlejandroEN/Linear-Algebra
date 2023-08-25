function r = ranguito(M)
    escalonadaReducidaDeM = rref(M);
    fullZerosRows = 0;
    zerosMatrix = zeros(size(escalonadaReducidaDeM, 2), 1)';
    rows = size(escalonadaReducidaDeM, 1);
    
    for row = 1 : rows
        currentRow = escalonadaReducidaDeM(row, :);
    
        if isequal(zerosMatrix, currentRow)
            fullZerosRows = fullZerosRows + 1;
        end
    end
    
    r = size(M, 1) - fullZerosRows;
end