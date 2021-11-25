exec matmat3b.sci
exec matmat2b.sci
exec matmat1b.sci
i = 10;

A = rand(i,i);
B = rand(i,i);

tic();
C = matmat3b(A,B);
temps = toc();
disp("temps matmat3b = ");
disp(temps);

tic();
C = matmat2b(A,B);
temps = toc();
disp("temps matmat2b = ");
disp(temps);

tic();
C = matmat1b(A,B);
temps = toc();
disp("temps matmat1b = ");
disp(temps);

i = 100;

A = rand(i,i);
B = rand(i,i);

tic();
C = matmat3b(A,B);
temps = toc();
disp("temps matmat3b = ");
disp(temps);

tic();
C = matmat2b(A,B);
temps = toc();
disp("temps matmat2b = ");
disp(temps);

tic();
C = matmat1b(A,B);
temps = toc();
disp("temps matmat1b = ");
disp(temps);

i = 1000;

A = rand(i,i);
B = rand(i,i);

tic();
C = matmat3b(A,B);
temps = toc();
disp("temps matmat3b = ");
disp(temps);

tic()
C = matmat2b(A,B);
temps = toc();
disp("temps matmat2b = ");
disp(temps);

tic();
C = matmat1b(A,B);
temps = toc();
disp("temps matmat1b = ");
disp(temps);
