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
set arrow from 20, graph 0 to 20.1976, graph 1 nohead

set style data lines
set key bottom right
set border 3
set xtics 10
set xtics nomirror
set ytics .2
set grid ytics
set ytics nomirror
set multiplot

# set arrow 5 10 nohead

# Axes
set xrange [-0.5:10]
set xlabel "Training Time (hours)"

set yrange [4.7:6.8]
set ylabel "Episode Duration (seconds)"

# Plot Data
plot \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303221353-LTI-PROJETO-TM.kwy.out"    title 'Gerar pesos subotimos p_so para 4v3' lc 2 with points, \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303270042-LTI-PROJETO-TM.kwy.out"    title    'PRQL - 4 reuse' lc 3 with points, \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306072209-LTI-PROJETO-TM.kwy.out"    title    'PP PRQL - avaliacao' lc 3, \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306080035-LTI-PROJETO-TM.kwy.out"    title    'Pdet PRQL - avaliacao' lc 2, \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306081604-LTI-PROJETO-TM.kwy.out"    title    'rand - avaliacao' lc 1, \
     "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306081705-LTI-PROJETO-TM.kwy.out"    title    'rand2- avaliacao' lc 1

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303271632-LTI-PROJETO-TM.kwy.out"    title 'Explotar - 4v3 - Com aprendizado - Com PRQL - 3 reusam - Reuso:13/19 - tau_increment 500 vezes menor' lc 4
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306041448-LTI-PROJETO-TM.kwy.out"    title '1  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306041654-LTI-PROJETO-TM.kwy.out"    title '2  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306041919-LTI-PROJETO-TM.kwy.out"    title '3  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306041919-LTI-PROJETO-TM.kwy.out"    title '4  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306042116-LTI-PROJETO-TM.kwy.out"    title '5  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306042317-LTI-PROJETO-TM.kwy.out"    title '6  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306050117-LTI-PROJETO-TM.kwy.out"    title '7  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306050317-LTI-PROJETO-TM.kwy.out"    title '8  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306050517-LTI-PROJETO-TM.kwy.out"    title '9  PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306050718-LTI-PROJETO-TM.kwy.out"    title '10 PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306050918-LTI-PROJETO-TM.kwy.out"    title '11 PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306051118-LTI-PROJETO-TM.kwy.out"    title '12 PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306051318-LTI-PROJETO-TM.kwy.out"    title '13 PRQL - 4 reuse' lc 3, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306051636-LTI-PROJETO-TM.kwy.out"    title '1  PP PRQL - 4 reuse' lc 1, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306051933-LTI-PROJETO-TM.kwy.out"    title '2  PP PRQL - 4 reuse' lc 1, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306052134-LTI-PROJETO-TM.kwy.out"    title '3  PP PRQL - 4 reuse' lc 1, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306052334-LTI-PROJETO-TM.kwy.out"    title '4  PP PRQL - 4 reuse' lc 1, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306060134-LTI-PROJETO-TM.kwy.out"    title '5  PP PRQL - 4 reuse' lc 1, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306060335-LTI-PROJETO-TM.kwy.out"    title '6  PP PRQL - 4 reuse' lc 1, \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306060535-LTI-PROJETO-TM.kwy.out"    title '7  PP PRQL - 4 reuse' lc 1, \

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303261729-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Com aprendizado - Com PRQL - 4 reusam - 13 features - tau_increment 100 vezes menor', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303252048-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Com aprendizado - Com PRQL - 4 reusam - 13 features - tau_increment apos 900', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303261154-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Com aprendizado - Com PRQL - 4 reusam - 13 features - tau_increment 1000 vezes menor' , \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303262219-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Com aprendizado - Com PRQL - 4 reusam - 13 features - tau_increment 10 vezes menor'

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201306041410-LTI-PROJETO-TM.kwy.out"    title  'Reproducao dia 2013 06 04', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303290103-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 3v2->4v3 - Sem aprendizado - Sem PRQL - 3 reusam - 19 features - tau_increment 500 vezes menor', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303290023-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 3v2->4v3 - Sem aprendizado - Sem PRQL - 3 reusam - 13 features - tau_increment 500 vezes menor', \

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303221702-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Sem aprendizado - Sem PRQL', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303221821-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Sem aprendizado - Com PRQL - 13 features', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303221843-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Sem aprendizado - Com PRQL - 19 features', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303221916-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Com aprendizado - Com PRQL - 13 features - 4 reusam', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303251441-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Com aprendizado - Com PRQL - 13 features - 4 reusam', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303251919-LTI-PROJETO-TM.kwy.out"    title  'Explotar - 4v3 - Com aprendizado - Com PRQL - 13 features - 4 reusam', \


     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303151846-LTI-PROJETO-TM.kwy.out"    title '3v2 From Scratch - PRQL', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303201040-LTI-PROJETO-TM.kwy.out"    title '3v2 From Scratch - PRQL - super correcoes', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303201509-LTI-PROJETO-TM.kwy.out"    title '3v2 reusando 3v2 - super correcoes', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303201634-LTI-PROJETO-TM.kwy.out"    title '3v2 reusando 3v2 - super correcoes - novo log', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303202028-LTI-PROJETO-TM.kwy.out"    title '3v2 reusando 3v2 - super correcoes - novo log - psi renovado'

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201302261807-LTI-PROJETO-TM.kwy.out"    title '4v3 From Scratch - PRQL - ANTIGO', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303191441-LTI-PROJETO-TM.kwy.out"    title '4v3 Reuse - PRQL - 0.05 - 13 features - delta', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303191451-LTI-PROJETO-TM.kwy.out"    title '4v3 Reuse - PRQL - 0.05 - 13 features - reward', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303191805-LTI-PROJETO-TM.kwy.out"    title '4v3 Reuse - PRQL - 0.05 - 13 features - reward - mapeamento - ranges - resolutions'

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303191340-LTI-PROJETO-TM.kwy.out"    title '4v3 Reuse - PRQL - 0.005 - 13 features - delta', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121238-LTI-PROJETO-TM.kwy.out"    title '4v3 From Scratch - PRQL', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121201-LTI-PROJETO-TM.kwy.out"    title '4v3 From Scratch - PRQL', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303121201-LTI-PROJETO-TM.kwy.out"    title '4v3 From Scratch - PRQL', \

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303182254-LTI-PROJETO-TM.kwy.out"    title '4v3 Reuse - PRQL - 0.05', \

     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303162058-LTI-PROJETO-TM.kwy.out"    title '3v2 Reuse - PRQL - 0.005', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303162151-LTI-PROJETO-TM.kwy.out"    title '3v2 Reuse - PRQL - 0.05', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303170855-LTI-PROJETO-TM.kwy.out"    title '3v2 Reuse - PRQL - 0.05', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303181255-LTI-PROJETO-TM.kwy.out"    title '3v2 Reuse - PRQL - 0.05 - bib vazia', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303181533-LTI-PROJETO-TM.kwy.out"    title '3v2 Reuse - PRQL - 0.05 - so explota', \
     # "/home/rafaelbeirigo/ciencia/rcss/keepaway/logs/201303181636-LTI-PROJETO-TM.kwy.out"    title '3v2 Reuse - PRQL - 0.05 - so explota - bib vazia', \

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
