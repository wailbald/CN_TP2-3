set term png size 700,700

set output "matmat_temps.png"

set grid

set ylabel "temps d'execution"
set xlabel "matrice de taille n*n"

plot "matmat1b.dat" using 2:1 t "matmat1b" w lp, "matmat2b.dat" using 2:1 t "matmat2b" w lp, "matmat3b.dat" using 2:1 t "matmat3b" w lp;