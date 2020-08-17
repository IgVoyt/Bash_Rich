#!/bin/bash

function square() {
echo
clear
# local size=0
# echo "Size of the square? "
read size
# size=5
for (( i=0; i<$size; i++ )); do
    for (( j=0; j<$size; j++ )); do
        printf "*"
    done
    printf "\n"
done

}
square
function triangle() { 
echo
clear
n=8; row="";
for(( i=0; i<n; i++ )); do
row="$row"; 
done; 
row="${row%?}*"; 
for(( i=0; i<n; i++ )); do 
echo "$row"; row="${row#?}***"
done

}
triangle
function rectangle() {
echo
clear
a=5
b=22
for (( i=0; i<$a; i++ )); do
    for (( j=0; j<$b; j++ )); do
        printf "*"
    done
    printf "\n"
done

}
rectangle



function menu() {

clear

echo

echo -e "\t\t\tMenu for choosing geometric shapes\n"
echo -e "\t1. Display square "
echo -e "\t2. Display triangle "
echo -e "\t3. Display rectangle "
echo -e "\t0. Exit menu\n\n"
echo -en "\t\t Enter your choosing: "
read -n 1 choosing
}
# menu
while [ 1 ]; do
	menu
	case $choosing in
	0) 
		break ;;
	1)
#	    echo "Size of the square? "
		square 
		 echo "Size of the square? "
#		 read size
	#	 local size=0
		 ;;
	2)
		triangle ;;
	3)
		rectangle ;;
	*)
		clear
		echo "Sorry, wrong choosing" ;;
	esac
	echo -en "\n\n\t\t\tHit any key to continue"
	read -en 1 line
done
clear
	
