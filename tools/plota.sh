#!/bin/bash

KWY_FILE=$1
OUT_FILE=$KWY_FILE.out
EPS_FILE=$KWY_FILE.eps

get_eps () {
    cat $KWY_FILE | winsum 900 0.01 30 > 1.out
    mv 1.out $OUT_FILE
    gnuplot graph.gnuplot
    mv graph.eps $EPS_FILE
}

plot () {
    i=0
    while [ true ]
    do
	i=`expr $i + 1`
	echo $i
	get_eps
	sleep 1
    done
}

plot &
#gv --watch $EPS_FILE
#pkill plota.sh
