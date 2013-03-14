# Gnuplot graph generation script
# Gregory Kuhlmann, 2002

# Color output
set terminal postscript eps color solid "Helvetica" 24
set term postscript eps font ",12"

# Black & White output
#set terminal postscript eps monochrome dashed "Helvetica" 24

# Output file
set output "./graph.eps"

# Title
set title ""

# Appearance
set style data lines
set key bottom right
set border 3
set xtics nomirror
set ytics nomirror
set multiplot

# Axes
set xrange [-0.5:50]
set xlabel "Training Time (hours)"

set yrange [4:13]
set ylabel "Episode Duration (seconds)"

# Plot Data
plot \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121201-LTI-PROJETO-TM.kwy.out" title '4v3 From Scratch - PRQL', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121238-LTI-PROJETO-TM.kwy.out" title '4v3 From Scratch - PRQL', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121504-LTI-PROJETO-TM.kwy.out" title 'PRQL-0.05', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121525-LTI-PROJETO-TM.kwy.out" title 'PRQL-0.05', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121554-LTI-PROJETO-TM.kwy.out" title 'PRQL-0.009', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303140117-LTI-PROJETO-TM.kwy.out" title 'delta'

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302131649-LTI-PROJETO-TM.kwy.out" title '201302141237-LTI-PROJETO-TM', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302141237-LTI-PROJETO-TM.kwy.out" title '201301301752-LTI-PROJETO-TM'

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261807-LTI-PROJETO-TM.kwy.out" title 'From Scratch - epsilon Fernandez 1 - 201302261807-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261847-toulon.kwy.out"         title 'From Scratch - epsilon Fernandez 2 - 201302261847-toulon', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302161522-LTI-PROJETO-TM.kwy.out" title '3v2 (pesos reusados)', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303042104-LTI-PROJETO-TM.kwy.out" title '', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303042241-LTI-PROJETO-TM.kwy.out" title ''
