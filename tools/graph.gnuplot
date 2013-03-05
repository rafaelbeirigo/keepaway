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

set yrange [5:13]
set ylabel "Episode Duration (seconds)"

# Plot Data
plot \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261807-LTI-PROJETO-TM.kwy.out" title 'From Scratch - epsilon Fernandez 1 - 201302261807-LTI-PROJETO', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261847-toulon.kwy.out"         title 'From Scratch - epsilon Fernandez 2 - 201302261847-toulon', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303042104-LTI-PROJETO-TM.kwy.out" title 'atual'
