exec ./usolve.sci
exec ./lsolve.sci

A = rand(10,10);
U = triu(A);
L = tril(A);
b = rand(10,1);

l = lsolve(L,b);
u = usolve(U,b);

xel = L\b;
xeu = U\b

disp("u = ");
disp(u);
disp(xeu);

err_avantu = norm(xeu - u)/norm(xeu)
err_arriereu = norm(b-U*u)/(norm(U)*norm(u))

disp("erreur avant")
disp(err_avantu)
disp("erreur arriere")
disp(err_arriereu)

disp("l = ");
disp(l);
disp(xel);

err_avantl = norm(xel - l)/norm(xel)
err_arrierel = norm(b-L*l)/(norm(L)*norm(l))

disp("erreur avant")
disp(err_avantu)
disp("erreur arriere")
disp(err_arriereu)
