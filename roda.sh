#!/bin/bash

# Utilizado para rodar o Keepaway com diversos parametros.
# Feito originalmente para testes do ENIAC 2013.

pkill rcssserver
sleep 10

rm para_plotar.txt

lineColor=1
for minAction in `seq 0 3`
do
    for maxAction in `seq $minAction 3`
    do
	for minKeeper in `seq 0 3`
	do
	    for maxKeeper in `seq $minKeeper 3`
	    do
		echo "$minAction $minKeeper $maxKeeper" > ./player/parameters.txt
		for i in `seq 2`
		do
		    ./keepaway.sh $minAction $minKeeper $maxKeeper $lineColor
		    sleep 15m

		    pkill rcssserver
		    sleep 10
		done
		lineColor=`expr $lineColor + 1`
	    done
	done
    done
done
