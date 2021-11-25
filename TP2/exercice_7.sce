A = rand(3,3)
xex = rand(3,1)

b = A * xex

x = A\b

err_avant = norm(xex - x)/norm(xex)
err_arriere = norm(b-A*x)/(norm(A)*norm(x))

disp(err_avant)
disp(err_arriere)

A = rand(100,100)
xex = rand(100,1)

b = A * xex

x = A\b

err_avant = norm(xex - x)/norm(xex)
err_arriere = norm(b-A*x)/(norm(A)*norm(x))

disp(err_avant)
disp(err_arriere)

A = rand(1000,1000)
xex = rand(1000,1)

b = A * xex

x = A\b

err_avant = norm(xex - x)/norm(xex)
err_arriere = norm(b-A*x)/(norm(A)*norm(x))

disp(err_avant)
disp(err_arriere)

/*execution trop longue
A = rand(10000,10000)
xex = rand(10000,1)

b = A * xex

x = A\b

err_avant = norm(xex - x)/norm(xex)
err_arriere = norm(b-A*x)/(norm(A)*norm(x))

disp(err_avant)
disp(err_arriere)
*/