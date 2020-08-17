#!/bin/bash
echo "       Partial    Multiplication    Table "
echo "---------------------------------------------"
echo  -n "   | "; printf '\t%d'  {0..4}; echo
echo "---------------------------------------------"
for y in {0..9}
do echo -n "$y  |   "
	for x in {0..4}
	do echo -en "\t$((x*y))"
	done
	echo
	echo "---------------------------------------------"
done
