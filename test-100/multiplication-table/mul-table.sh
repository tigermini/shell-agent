#!/bin/sh

# 功能：打印九九乘法表

for i in `seq 1 9`
do
    for j in `seq 1 $i`
    do
        echo -ne  "$j * $i = $[i*j] \t"
    done
    echo
done
