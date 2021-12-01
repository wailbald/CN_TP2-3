exec ./mylu3b.sci
exec ./mylu1b.sci
exec ./mylu.sci

[fic1, mod1] = mopen("mylu3b.dat", "w");
[fic2, mod2] = mopen("mylu1b.dat", "w");

taille = 100
iter = 5;

for t = 1 : taille
    err1 = 0;
    temps1 = 0;

    err2 = 0;
    temps2 = 0;

    disp(string(t)+"/"+string(taille))
    for i = 1 : iter

        A = rand(taille,taille) + ones(taille,taille);

        tic()
        [L,U] = mylu3b(A);
        temps1 = temps1 + toc();
        err1 = err1 + norm(A - L*U);

        tic()
        [L2,U2] = mylu1b(A);
        temps2 = temps2 + toc();
        err2 = err2 + norm(A - L2*U2);

    end

    mfprintf(fic1, "%.17lf %.17lf %d\n", err1/iter, temps1/iter, t);
    mfprintf(fic2, "%.17lf %.17lf %d\n", err2/iter, temps2/iter, t);

end

mclose(fic1);
mclose(fic2);
