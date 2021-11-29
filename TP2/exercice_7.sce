iter = 20;

[fic, mod] = mopen("exercice7.dat", "w");

for t = 10: 100 : 1010
    
    err_avant = 0;
    err_arriere = 0;
    cond7 = 0;

    disp(string(t)+"/"+string(1010));
    for i = 1 : iter

        A = rand(t,t) + ones(t,t);
        xex = rand(t,1) + ones(t,1);
    
        b = A * xex;

        x = A\b;

        err_avant = err_avant + norm(xex - x)/norm(xex);
        err_arriere = err_arriere + norm(b-A*x)/(norm(A)*norm(x));
        cond7 = cond7 + cond(A);

    end

    mfprintf(fic, "%.17lf %.17lf %.17lf %d\n", err_avant/iter, err_arriere/iter, cond7/iter, t);

end

mclose(fic);
