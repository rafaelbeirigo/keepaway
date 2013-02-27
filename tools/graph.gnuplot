# Gnuplot graph generation script
# Gregory Kuhlmann, 2002

# Color output
set terminal postscript eps color solid "Helvetica" 24

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

set yrange [-0.5:13]
set ylabel "Episode Duration (seconds)"

# Plot Data
plot \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302142138-LTI-PROJETO-TM.kwy.out" title 'From Scratch', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261524-LTI-PROJETO-TM.kwy.out" title 'PRQL-tau_increment=0.05', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261621-LTI-PROJETO-TM.kwy.out" title 'PRQL-tau_increment=0.0005', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261709-LTI-PROJETO-TM.kwy.out" title 'PRQL-tau_increment=0.00005', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261722-LTI-PROJETO-TM.kwy.out" title 'PRQL-tau_increment=0.00025', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261807-LTI-PROJETO-TM.kwy.out" title 'From Scratch - epsilon Fernandez 1', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261847-toulon.kwy.out"         title 'From Scratch - epsilon Fernandez 2'
