exec matmat3b.sci
exec matmat2b.sci
exec matmat1b.sci
iter = 50;

[fic1, mod1] = mopen("matmat3b.dat", "w");
[fic2, mod2] = mopen("matmat2b.dat", "w");
[fic3, mod3] = mopen("matmat1b.dat", "w");

for t = 10 : 10 : 100

    temps1 = 0;
    temps2 = 0;
    temps3 = 0;

    disp(string(t)+"/"+string(100));
    for i = 1 : iter

        A = rand(t,t) + ones(t,t);
        B = rand(t,t) + ones(t,t);

        tic()
        C = matmat3b(A,B);
        temps1 = temps1 + toc();

        tic()
        D = matmat2b(A,B);
        temps2 = temps2 + toc();

        tic()
        E = matmat1b(A,B);
        temps3 = temps3 + toc();

    end
    
    mfprintf(fic1, "%.17lf %d\n", temps1/iter, t);

    mfprintf(fic2, "%.17lf %d\n", temps2/iter, t);

    mfprintf(fic3, "%.17lf %d\n", temps3/iter, t);

end

mclose(fic1);
mclose(fic2);
mclose(fic3);
