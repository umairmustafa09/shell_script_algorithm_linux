#! /usr/bin/bash

echo "Enter a number: "
read n

flag=0

for((i = n - 1; i >= 1; i -= 1))
do	
	for((j = 2; j < i; j += 1))
	do	
        con=$(( i % j )) 
		if [ $con -eq 0 ]
		then
			flag=1			
		fi
    done
	if [ $flag -eq 0 ]
	then
		if [ $n -eq 1 ]
		then
			echo "Prime number starts with 2"
		fi
		echo "prime number for number before user's input number is: $i" 
		break
		fi
    flag=0;
done