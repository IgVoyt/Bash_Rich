#!/bin/bash
backup=$".bak"
timestamp=$".200323"
file=$1
time=$(date +%y%m%d)
while [ "$1" != "" ]; do
 
case "$2" in
	-a) echo "Appending $1 with $backup extension"
		 cp "$file"{,.bak}
           if [ -f=="$file".bak ]
		   then
		   	 echo "Success in making backup"
		   else
             echo "Your option failed"
		   fi
		   break
		 ;;
	-b) echo "Timestamp appending '$timestamp' to file $1"
         cp "$file"{,."$time"}
		 shift
         if [ -f=="$file".200323 ]
            then
               echo "Success in making timestamp file"
           else
               echo "Your option failed"
           fi
		   break
           ;;         
   *)  echo "Unknown option, Error"
       ;;
	esac
	shift
done
