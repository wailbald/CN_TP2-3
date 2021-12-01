exec ./mylu3b.sci
exec ./mylu1b.sci
exec ./mylu.sci

A = rand(5,5) + ones(5,5);

[L,U] = mylu3b(A);

var = norm(A - L*U)

disp("erreur 3b");
disp(var);

[L2,U2] = mylu1b(A);

var2 = norm(A - L2*U2)

disp("erreur 1b");
disp(var2);

[L,U,P] = mylu(A);
[L2,U2,P2] = lu(A);

disp("erreur");
disp(L)
disp(L2)
disp(U)
disp(U2)
disp(P)
disp(P2)
