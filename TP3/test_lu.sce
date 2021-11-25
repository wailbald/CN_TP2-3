exec ./mylu3b.sci

A = rand(5,5) + ones(5,5);

[L,U] = mylu3b(A);

var = A - L*U
disp(var);
