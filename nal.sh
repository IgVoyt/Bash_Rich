#!/bin/bash
IFS.OLD=$IFS
IFS=$'\n'

for entry in `cat /etc/passwd`
do
	echo " $entry -"
	IFS=$':'
#	for value in $entry
	for user in $entry
	do
#		echo "    $value"
		echo "     $user"
	done
# done | sort -t ':' -k 1,1 -k 7 | uniq | cut -d ':' -f 1,7 

# done | sort -k 1,1 -k 7,7 | cut -d ':' -f 1,7 | uniq | nl 

done | cut -d ':' -f1,7 | uniq |sort -k 1,1 -k 7,7 | nl 

