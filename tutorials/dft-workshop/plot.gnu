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
g(x) = 0
plot 'scan.dat' u 2:1 w l lw 2 t 'E(R)' , '' u  2:3 w l lt 3 lw 2 axis x1y2 t 'F(R)' , g(x) lt 4 lw 2 t ''

# to create the postscript file; run gnuplot plot.gnu from terminal
f(x) = a + b*x*exp(-c*x) + d*x**2*exp(-e*x**2)
g(x) = j + k*(x-l)**2 + m*(x-n)**4
fit f(x) 'scan.dat' u 2:3 via a,b,c,d,e
fit g(x) 'scan.dat' u 2:1 via j,k,l,m,n
# My solution from non linear curve fitting
#f(x) := -0.333322 + 13474.4*x*exp(-11.4912*x) + 49.2639*x^2*exp(-4.39108*x^2)  
#g(x) :=-109.45+1.25183*(x-1.06372)^2+14.0613*(x-1.22182)^4
