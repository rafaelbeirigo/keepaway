#!/bin/bash

cat $1 | winsum 900 0.01 30 > 1.out
mv 1.out $1.out
gnuplot graph.gnuplot
mv graph.eps $1.eps
