#!/bin/sh

for i in `seq 1 9`
do
    for j in `seq 1 $i`
    do
        echo -ne  "$j * $i = $[i*j] \t"
    done
    echo
done
