set term png size 700,700

set output "ulsolve_err_av.png"

set grid

set ylabel "erreur avant"
set xlabel "matrice de taille n*n"

plot "lsolve.dat" using 4:1 t "lsolve erreur avant" w lp, "usolve.dat" using 4:1 t "usolve erreur avant" w lp;

set output "ulsolve_err_arr.png"

set ylabel "erreur arrière"

plot "lsolve.dat" using 4:2 t "lsolve erreur arriere " w lp, "usolve.dat" using 4:2 t "usolve erreur arriere" w lp;

set output "ulsolve_cond.png"

set ylabel "conditionnement des matrices"

plot "lsolve.dat" using 4:3 t "lsolve conditionnement" w lp, "usolve.dat" using 4:3 t "usolve conditionnement" w lp;