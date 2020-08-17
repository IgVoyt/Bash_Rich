#!/bin/bash
#echo "Size of the square? "
#	read size
clear
a=5
b=22
for (( i=0; i<$a; i++ )); do
	for (( j=0; j<$b; j++ )); do
		printf "*"
	done
	printf "\n"
done

