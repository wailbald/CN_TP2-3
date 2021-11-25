x = [1,2,3,4]
y = [1;2;3;4]

s = x*y

//z = y + y va causer une erreur car les dimensions des deux vecteurs ne permettent pas l'addition

//pour l'addition on change y.

y = [1,2,3,4]
z = x + y

sx = size(x)
sy = size(y)

norme_2_x = norm(x,2)

A = [1,2,3;4,5,6;1,2,3;4,5,6]

B = A'

A = [1,2;3,4]
B = [4,3;2,1]

C = A + B
D = A - B
E = A * B

condA = cond(A)
