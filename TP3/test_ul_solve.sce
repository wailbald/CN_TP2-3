exec ./usolve.sci
exec ./lsolve.sci

taille = 100;
iter = 100;

[fic1, mod1] = mopen("lsolve.dat", "w");
[fic2, mod2] = mopen("usolve.dat", "w");

for t = 1:taille
    err_avantu = 0;
    err_arriereu = 0;

    err_avantl = 0;
    err_arrierel = 0;

    condu = 0;
    condl = 0;

    disp(string(t)+"/"+string(taille));
    for x = 1:iter

        A = rand(t,t) + ones(t,t);
        U = triu(A);
        L = tril(A);

        b = rand(t,1) + ones(t,1);

        xl_ref = L\b;
        xl = lsolve(L,b);

        err_avantl = err_avantl + norm(xl_ref-xl)/norm(xl_ref);
        err_arrierel = err_arrierel + norm(b-L*xl)/(norm(L)*norm(xl));

        condl = condl + cond(L);
        
        xu_ref = U\b;
        xu = usolve(U,b);

        err_avantu = err_avantu + norm(xu_ref-xu)/norm(xu_ref);
        err_arriereu = err_arriereu + norm(b-U*xu)/(norm(U)*norm(xu));

        condu = condu + cond(U);

    end
 
    mfprintf(fic1, "%.17lf %.17lf %.17lf %d\n", err_avantl/iter, err_arrierel/iter, condl/iter, t);
    mfprintf(fic2, "%.17lf %.17lf %.17lf %d\n",  err_avantu/iter, err_arriereu/iter, condu/iter, t);

end

mclose(fic1);
mclose(fic2);
