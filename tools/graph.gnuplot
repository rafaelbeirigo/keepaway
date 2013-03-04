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
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261807-LTI-PROJETO-TM.kwy.out" title 'From Scratch - epsilon Fernandez 1 - 201302261807-LTI-PROJETO', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261847-toulon.kwy.out"         title 'From Scratch - epsilon Fernandez 2 - 201302261847-toulon', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303041822-LTI-PROJETO-TM.kwy.out" title 'Apos varias correcoes', \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303041841-LTI-PROJETO-TM.kwy.out" title 'K=700'



     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302271649-LTI-PROJETO-TM.kwy.out" title 'tau increment 0.05 - 201302271649-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302270325-LTI-PROJETO-TM.kwy.out" title 'tau increment 0.025 - 201302270325-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302272034-LTI-PROJETO-TM.kwy.out" title 'tau increment 0.0005 - 201302272034-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302272101-LTI-PROJETO-TM.kwy.out" title 'tau increment 0.00008 - 201302272101-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302281304-LTI-PROJETO-TM.kwy.out" title 'tau increment 0.000008 - 201302281304-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302281201-LTI-PROJETO-TM.kwy.out" title 'tau increment 0.0000008 - 201302281201-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302281322-LTI-PROJETO-TM.kwy.out" title 'psi=1.0; v=0.99 - 201302281322-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302281357-LTI-PROJETO-TM.kwy.out" title 'old selectAction - 201302281357-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302142138-LTI-PROJETO-TM.kwy.out" title 'From Scratch - 201302142138-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261524-LTI-PROJETO-TM.kwy.out" title 'PRQL-tau_increment=0.05 - 201302261524-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261621-LTI-PROJETO-TM.kwy.out" title 'PRQL-tau_increment=0.0005 - 201302261621-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261709-LTI-PROJETO-TM.kwy.out" title 'PRQL-tau_increment=0.00005 - 201302261709-LTI-PROJETO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261722-LTI-PROJETO-TM.kwy.out" title 'PRQL-tau_increment=0.00025 - 201302261722-LTI-PROJETO', \
