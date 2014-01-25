set size 0.75,0.75
set key title ""
set xlabel 'R (\305)'
set ylabel 'E(R) (a.u.)'
set y2label 'F(R) (a.u.)'
set ytics nomirror
set y2tics nomirror
set term post enhanced color solid "Times,Bold" 18
set output 'pbepbe.ps'
set encoding iso_8859_1
f(x)=0
plot 'scan.dat' u 2:1 w l lw 2 t 'E(R)' , '' u  2:3 w l lt 3 lw 2 axis x1y2 t 'F(R)' ,f(x) lt 4 lw 2 t '' axis x1y2
