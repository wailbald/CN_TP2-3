set term png size 700,700

set output "exo7_err_av.png"

set grid

set ylabel "erreur avant"
set xlabel "matrice de taille n*n"

plot "exercice7.dat" using 4:1 t "erreur avant" w lp;

set output "exo7_err_arr.png"

set ylabel "erreur arrière"

plot "exercice7.dat" using 4:2 t "erreur arrière" w lp;

set output "exo7_cond.png"

set ylabel "conditionnement"

plot "exercice7.dat" using 4:3 t "conditionnement" w lp;