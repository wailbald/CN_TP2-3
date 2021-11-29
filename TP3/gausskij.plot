set term png size 700,700

set output "gausskij_err_av.png"

set grid

set ylabel "erreur avant"
set xlabel "matrice de taille n*n"

plot "gausskij3b.dat" using 4:1 t "erreur avant" w lp;

set output "gausskij_err_arr.png"

set ylabel "erreur arrière"

plot "gausskij3b.dat" using 4:2 t "erreur arrière" w lp;

set output "gausskij_cond.png"

set ylabel "conditionnement"

plot "gausskij3b.dat" using 4:3 t "conditionnement" w lp;
