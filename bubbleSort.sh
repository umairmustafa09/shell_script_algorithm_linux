arr=(5 9 8 12 2) 
echo "unsorted array: ${arr[*]}" 

for ((i=0; i<5; i++)) 
do
	for((j=i; j<5-i-1; j++)) 
	do
      		if ((${arr[j]} > ${arr[$((j+1))]})) 
        	then
            		temp=${arr[$j]} 
            		arr[$j]=${arr[$((j+1))]}   
            		arr[$((j+1))]=$temp 
        	fi
    	done
done
echo "sorted array: ${arr[*]}" 
