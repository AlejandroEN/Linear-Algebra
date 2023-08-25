%% Matriz M
M = [50 70 200 360; 90 30 270 320; 120 240 100 1050; 420 370 940 4960];

%% Pregunta 1
producionTotalDeA = sum(M(1, :));

%% Pregunta 2
M(2, :) = M(2, :) * 5;
M(3, :) = M(3, :) + 2 * M(1, :);
M([2 3], :) = M([3 2], :);
produccionTotalDeC = sum(M(3, :));

%% Pregunta 3
MPC = [50 70 200 360; 90 30 270 320; 120 240 100 1050; 420 370 940 4960];
MPC(2, :) = MPC(2, :) - 9/5 * MPC(1, :);
MPC(3, :) = MPC(3, :) - 12/5 * (MPC(1, :));
MPC(4, :) = MPC(4, :) - 42/5 * (MPC(1, :));
MPC(3, :) = MPC(3, :) - 72/-96 * MPC(2, :);
MPC(4, :) = MPC(4, :) + 0.2180/-0.0960 * MPC(2, :);
MPC(4, :) = MPC(4, :) + 0.5356/-0.4475 * MPC(3, :);
rank(MPC)

%% Pregunta 4
P = [3 -1  0 -1 -3 -1 -2 -3;
    -2  0  0  0  2  0  2  2; 
     3  0  0 -1 -1 -2 -1 -1;
     0  0  0  1 -2  2 -2 -2;
     3  1  0  0 -1 -1 -2 -1;
     1 -4  0 -2 -5  0 -1 -5];
erp = rref(P);
% El rango de la matriz escalonada reducida de P es 3
rank(P)