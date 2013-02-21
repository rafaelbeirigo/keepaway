#!/bin/bash

cat $1 | winsum 900 0.01 30 > 1.out
gnuplot graph.gnuplot
mv graph.eps $1.eps
