set term png size 700,700

set output "mylu_erreur.png"

set grid

set ylabel "erreur"
set xlabel "matrice de taille n*n"

plot "mylu3b.dat" using 3:1 t "erreur mylu3b" w lp, "mylu1b.dat" using 3:1 t "erreur mylu1b" w lp;

set output "mylu_temps.png"

set ylabel "temps d'execution"

plot "mylu3b.dat" using 3:2 t "temps mylu3b" w lp, "mylu1b.dat" using 3:2 t "temps mylu1b" w lp;