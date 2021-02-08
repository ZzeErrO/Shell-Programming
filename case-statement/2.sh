#!/bin/bash -x
read -p "WRITE A NUMBER FROM 1 TO 7 : " x

case $x in
	1)echo MONDAY
	;;
	2)echo TUESDAY
	;;
	3)echo WEDNESDAY
	;;
	4)echo THURSDAY
	;;
	5)echo FRIDAY
	;;
	6)echo SATURDAY
	;;
	7)echo SUNDAY
	;;
esac
