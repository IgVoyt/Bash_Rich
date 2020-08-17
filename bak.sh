#!/bin/bash
backup=$".bak"
timestamp=$".200323"
file=$1
time=`date +%y%m%d`
while [[ -n "$1" ]]
#while [ $# -gt 0 ]
do
	case "$2" in
		-a) echo "Appending $2 with $backup extension"
		    cp "$file"{,. bak}
 	#		cp $file $file.bak
	#		shift
	#			if [ -f == "$file.bak" ]
	#			then
	#				echo "Success in making backup"
	#			else	
	#				echo "Your option failed"
	#			fi
    	#		break
				;;
		-b) echo "Timestamp appending `$timestamp` to file $1"
#			cp "$file"{,."$time"}
 #           cp "$file{,.`date +%y%m%d`}" 
#			echo "$date"
	#			if [ -f == $file.200323 ]
	#			then
	#				echo "Success in making timestamp file"
	#			else
	#				echo "Your option failed"
	#			fi
	#			shift
	#			break
				;;         
		*)  echo "Unknown option, Error"
#			break
			 ;;
	esac
	shift
done
