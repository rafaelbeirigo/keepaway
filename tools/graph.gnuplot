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

set yrange [4:35]
set ylabel "Episode Duration (seconds)"

# Plot Data
plot \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121201-LTI-PROJETO-TM.kwy.out" title '4v3 From Scratch - PRQL', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303151446-LTI-PROJETO-TM.kwy.out"    title '3v2 From Scratch - PRQL', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303151846-LTI-PROJETO-TM.kwy.out"    title '3v2 From Scratch - PRQL'



     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121201-LTI-PROJETO-TM.kwy.out" title '4v3 From Scratch - PRQL', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121238-LTI-PROJETO-TM.kwy.out" title '4v3 From Scratch - PRQL', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303151136-LTI-PROJETO-TM.kwy.out" title 'delta; 0.005'
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303140117-LTI-PROJETO-TM.kwy.out" title 'delta; 0.05', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303141359-LTI-PROJETO-TM.kwy.out" title 'delta; 0.05', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303142007-LTI-PROJETO-TM.kwy.out" title 'delta; 0.009', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303142049-LTI-PROJETO-TM.kwy.out" title 'delta; 0.009', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303142135-LTI-PROJETO-TM.kwy.out" title 'delta; 0.005', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303151005-LTI-PROJETO-TM.kwy.out" title 'delta; 0.005', \

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302131649-LTI-PROJETO-TM.kwy.out" title '201302141237-LTI-PROJETO-TM', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302141237-LTI-PROJETO-TM.kwy.out" title '201301301752-LTI-PROJETO-TM'

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261807-LTI-PROJETO-TM.kwy.out" title 'From Scratch - epsilon Fernandez 1 - 201302261807-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261847-toulon.kwy.out"         title 'From Scratch - epsilon Fernandez 2 - 201302261847-toulon', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302161522-LTI-PROJETO-TM.kwy.out" title '3v2 (pesos reusados)', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303042104-LTI-PROJETO-TM.kwy.out" title '', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303042241-LTI-PROJETO-TM.kwy.out" title ''
