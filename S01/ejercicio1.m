% A
A = [ones(5, 20) ; 2 * ones(5, 20)];
display(A)

% B
B = A;
j = 1 : 20;
B(6, :) = 1./(j);
display(B)

% C
Q = B;
i = 1 : 5;
Q(i, i) = (i).*B(i, i);
display(P = Q)