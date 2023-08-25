% Operaciones elementales con matlab
% limpiamdo la pantalla
clc
%% Definiendo la matriz A
A = [2 1 -1; 3 -4 2; -1 1 -1];
display(A)

%% Intercambiando dos filas de una matriz
% La fila 1 la intercambiamos con la fila 3
A([1, 3], :) = A([3, 1], :);
display(A)

%% Multiplicación de una fila por un número
% Fila 1 lo vamos a multiplicar por el número -1
A(1, :) = (-1) * A(1, :);
display(A)

%% Sumar a una fila un múltiplo de otra fila
% A la fila 2 le restamos tres veces la fila 1
A(2, :) = A(2, :) - 3 * A(1, :);
display(A)

%% A la fila 3 le restamos dos veces la fila 1
A(3, :) = A(3, :) - 2 * A(1, :);
display(A)

%% A la fila 3 le sumamos 3 veces la fila 2
A(3, :) = A(3, :) + 3 * A(2, :);
display(A)

%% Hallando al matrix escalonada reducida para B
B = [2 1 -1; 3 -4 2 ; -1 1 -1];
disp(B)
erb = rref(B);
disp(erb)

%% Hallando la matrix escalonada para C
C = [2 1 -1; 4 2 -2; -1 1 -1];
disp(C)
erc = rref(C);
disp(erc)

%% Ejercicio 1
matricita = [2 3 1; 3 1 0; -5 3 1];
disp(matricita)
matricita(2, :) = matricita(2, :) - 3/2 * matricita(1, :);
matricita(3, :) = matricita(3, :) + 5/2 * matricita(1, :);
matricita(3, :) = matricita(3, :) + 3 * matricita(2, :);
disp(matricita)