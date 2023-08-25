% Ejemplo de if
clc
A = [3 4 ; 1 2];
B = [1 7 4]';

s_a = size(A);
s_b = size(B);

if s_a(2) == s_b(1)
    R = A * B;
else
    disp("No existe el producto")
end

% Ejemplo de for

n = 3;
A = [3 2 ; 1 -1];
S = zeros(2, 2);

for i = 1 : n
    S = S + i * A;
    disp(S)
end