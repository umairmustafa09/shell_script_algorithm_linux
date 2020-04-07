#! /usr/bin/bash

echo "Enter any binary no: "
read n

dec=0
rem=0
b=1

recursive()         
{
    if [ $n -gt 0 ]
    then
	    rem=$(( n % 10 ))
        dec=$(( dec + rem * b ))
        b=$(( b * 2 ))
	    n=$(( n / 10 ))
        recursive $n
    else
        return $dec
    fi
    
}

recursive n

ans=$?

echo "decimal equivalent: $ans"