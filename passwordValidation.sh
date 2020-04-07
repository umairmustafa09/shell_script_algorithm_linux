#! /usr/bin/bash
read -sp 'Enter a strong password:' pass
echo
flag=0;

len=${#pass}


# conditions

if [ $len -lt 8 ]
then
    flag=$(( flag + 1 ))
fi


if [[ $pass = ${pass,,} ]] 
then
   flag=$(( flag + 1 ))
fi


if [[ $pass = ${pass^^} ]] 
then
    flag=$(( flag + 1 ))
fi


   
if ! [[ $pass =~ [0-9] ]]
then
    flag=$(( flag + 1 ))
fi


# output 

if [ $flag -eq 0 ]
then
    echo "strong password"
else
    echo "weak password"
fi

