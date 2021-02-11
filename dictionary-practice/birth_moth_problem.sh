#!/bin/bash -x

declare -A dict

FOR_YEAR_92=1
FOR_YEAR_93=0

a=1
o=0
p=0
q=0
r=0
s=0
t=0
u=0
v=0
w=0
x=0
y=0
z=0
oo=0
pp=0
qq=0
rr=0
ss=0
tt=0
uu=0
vv=0
ww=0
xx=0
yy=0
zz=0

while [ $a -le 50 ]
do
	c=1
	year=$((RANDOM%2))
	monthsForyear92=$((RANDOM%11+1))
	monthsForyear93=$((RANDOM%11+1))
	if [ $year -eq 1 ]
	then
		case $monthsForyear92 in
			1)
				o=$(( $o + $c ))
				dict[1]=$o
			;;
			2)
				p=$(( $p + $c ))
            dict[2]=$p

			;;
			3)
				q=$(( $q + $c ))
            dict[3]=$q

			;;
			4)
				r=$(( $r + $c ))
            dict[4]=$r

			;;
			5)
				s=$(( $s + $c ))
            dict[5]=$s

			;;
			6)
				t=$(( $t + $c ))
            dict[6]=$t

			;;
			7)
				u=$(( $u + $c ))
            dict[7]=$u

			;;
			8)
				v=$(( $v + $c ))
            dict[8]=$v

			;;
			9)
				w=$(( $w + $c ))
            dict[9]=$w

			;;
			10)
				x=$(( $x + $c ))
            dict[10]=$x

			;;
			11)
				y=$(( $y + $c ))
            dict[11]=$y
			;;
			12)
				z=$(( $z + $c ))
            dict[12]=$z

			;;

		esac

	else
		case $monthsForyear93 in
         1)
            oo=$(( $oo + $c ))
            dict[1]=$oo
         ;;
         2)
            pp=$(( $pp + $c ))
            dict[2]=$pp

         ;;
         3)
            qq=$(( $qq + $c ))
            dict[3]=$qq

         ;;
         4)
            rr=$(( $rr + $c ))
            dict[4]=$rr

         ;;
         5)
            ss=$(( $ss + $c ))
            dict[5]=$ss

         ;;
         6)
            tt=$(( $tt + $c ))
            dict[6]=$tt

         ;;
         7)
            uu=$(( $uu + $c ))
            dict[7]=$uu

         ;;
         8)
            vv=$(( $vv + $c ))
            dict[8]=$vv

         ;;
			9)
            ww=$(( $ww + $c ))
            dict[9]=$ww

         ;;
         10)
            xx=$(( $xx + $c ))
            dict[10]=$xx

         ;;
         11)
            yy=$(( $yy + $c ))
            dict[11]=$yy
         ;;
         12)
            zz=$(( $zz + $c ))
            dict[12]=$zz

         ;;

      esac

	fi
	a=$(($a+1))

done

echo FOR YEAR 1992 ${!dict[*]}
echo               ${dict[@]}
echo FOR YEAR 1993 ${!dict[*]}
echo               ${dict[@]}
echo $a
