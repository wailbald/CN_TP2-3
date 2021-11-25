exec ./gausskij3b.sci

A = rand(100,100) + ones(100,100);
b = rand(100,1) + ones(100,1);

xg = A\b;

x = gausskij3b(A,b);

err_avant = norm(xg - x)/norm(xg);
err_arriere = norm(b-A*x)/(norm(A)*norm(x));

disp(x);
disp(xg);
disp("erreur")
disp(err_avant);
disp(err_arriere);
disp("cond");
disp(cond(A))
