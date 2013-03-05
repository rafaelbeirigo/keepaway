#!/bin/bash

KWY_FILE=$1
OUT_FILE=$KWY_FILE.out
EPS_FILE=$KWY_FILE.eps
JPG_FILE=$EPS_FILE.jpg;

get_eps () {
    cat $KWY_FILE | winsum 900 0.01 30 > 1.out
    mv 1.out $OUT_FILE
    gnuplot graph.gnuplot
    mv graph.eps $EPS_FILE
}

get_jpg () {
    gs -sDEVICE=jpeg -dJPEGQ=100 -dNOPAUSE -dBATCH -dSAFER -r300 -sOutputFile=$JPG_FILE $EPS_FILE
}

publish () {
    scp $JPG_FILE 143.107.165.124:public_html/a.jpg
}

plot () {
    i=0
    while [ true ]
    do
	i=`expr $i + 1`
	echo $i
	get_eps
	get_jpg
	publish
	sleep 1
    done
}

plot &
# gv --watch $EPS_FILE
# pkill plota.sh
