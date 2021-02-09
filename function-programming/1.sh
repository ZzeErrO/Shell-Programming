#!/bin/bash -x

function farenheitToCelcius() {
	echo $(( ( $1 - 32 ) * 5 / 9 ))
}

function CelciusTofarenheit() {
	echo $(( ( ( $1 * 9 ) / 5 ) + 32 ))
}

read -p "Enter the type of conversion you want as F or C: " x

case $x in
	F)
		read -p "Enter the value to be converted in between 32F to 212F: " n
		result=$( farenheitToCelcius $n )
		;;
	C)
		read -p "Enter the value to be converted in between 0C to 100C: " n
		result=$( CelciusTofarenheit $n )
		;;
	*)
		echo INPUT IS NOT "F" OR "C" PLEASE TRY AGAIN
		;;
esac

echo $result
