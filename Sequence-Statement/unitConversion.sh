#!/bin/bash -x

l=60
b=40

PLOT1=$(( $l * $b ))

echo $(( $PLOT1 * 25 / 43560 )).$(( $PLOT1 * 2500000 / 43560 % 100000 ))
