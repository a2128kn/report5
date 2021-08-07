#!/bin/bash

if [ $# -ne 2 ]
then
 echo "使い方 ./report5.sh 自然数1 自然数2"
 exit 1
fi

test ()
{
 div_a=$1
 div_b=$2
 remainder=1
 until [ "$remainder" -eq 0 ]
 do
let "remainder = $div_a % $div_b"
div_a=$div_b
div_b=$remainder
 done
}

test $1 $2
# echo "$1 と $2 の最大公約数は $div_a"
echo $div_a
exit 0
