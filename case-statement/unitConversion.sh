#!/bin/bash -x

read -p "ENTER A NUMBER: " x

echo $x foot is $(( $x * 12 )) inch

echo $x foot is $(( $x * 3048 / 10000 )).$((( $x * 3048 * 10000 / 10000 ) % 10000 )) meter

echo $x inch is $(( $x * 833333 / 10000000 )).$((( $x * 833333 * 10000000 / 10000000 ) % 10000000)) foot

echo $x meter is $(( $x * 328084 / 100000 )).$((( $x * 328084 * 100000 / 100000 ) % 100000 )) foot

