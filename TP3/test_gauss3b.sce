exec ./gausskij3b.sci

taille = 20;
iter = 1000;
[fic, mod] = mopen("gausskij3b.dat", "w");
for t = 1:taille
    err_av = 0;
    err_arr = 0;
    condg = 0;
    disp(string(t)+"/"+string(taille));
    for  i = 1:iter
        A = rand(t,t) + ones(t,t);
        b = rand(t,1) + ones(t,1);

        xex = A\b;
        x = gausskij3b(A,b);

        err_av = err_av + norm(xex-x)/norm(xex);
        err_arr = err_arr + norm(b-A*x)/(norm(A)*norm(x));
        condg = condg + cond(A);
    end
    mfprintf(fic, "%.17lf %.17lf %.17lf %d\n", err_av/iter, err_arr/iter, condg/iter, t);
end
mclose (fic);
