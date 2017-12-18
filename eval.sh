#!/bin/bash

doc=$1

if [ -r "$file" ]
	then
		echo "Unreadable Document"
		exit -1
fi

c=0
count=0

while read -r no fun || [[ -n "$line" ]];
do 
	if [ fun -eq "+" ]
	    then
		c=$((c+no))
		count=$((count+1))
	elif [ fun -eq "-" ]
	    then
		c=$((c-no))
		count=$((count+1))
	elif [ fun -eq "*" ]
	    then 
		c=$((c*no))
		count=$((count+1))
	elif [ fun -eq "/" ]
	    then 
		c=$((c/no))
		count=$((count+1))
	elif [ fun -eq "\" ]
	    then 
		c=$((c/no))
		count=$((count+1))	
	else 
	    echo "Invalid function on line: $count"
fi


done < $doc

echo "The total is $c"
