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
set data style lines
set nokey
set border 3
set xtics nomirror
set ytics nomirror
set multiplot

# Axes
set xrange [-0.5:400]
set xlabel "Training Time (hours)"

set yrange [5.5:30]
set ylabel "Episode Duration (seconds)"

# Plot Data
plot "./1.out", "../logs/201304161620-LTI-PROJETO-TM.kwy.out"

# valores utilizados para inicializar weights[i]:
# 0.0 (inicial)
# 1.0
# 0.5
# 10.0
