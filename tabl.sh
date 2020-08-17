#!/bin/bash
DAY=$(date +%A)
MON=$(date +%B)

a="Update OS"
b="Upgrade application"
c="Backup databases"
d="Check disk usage"
e="Generate usage reports"
f="Benchmark System"
g="Review log files"
# echo "Enter mons"
# read MON
# echo "Enter day"
# read DAY
case $DAY in
	Monday) echo "You need to make $a."
	exit
	;;
	Friday) echo "You need to make $g."
	exit
	;;
	Tuesday) if [[ $MON = Jan* ]] || [[ $MON = Mar* ]] || [[ $MON = May ]] \
	|| [[ $MON = Jul* ]] || [[ $MON = Sep* ]] || [[ $MON = Nov* ]]; then
	             echo "You need to make $b."
      	    else
	             echo "You need to make $c."
	         fi
			 ;;
	Wednesday) if [[ $MON = Feb* ]] || [[ $MON = Apr* ]] || [[ $MON = Jun* ]] \
	 || [[ $MON = Aug* ]] || [[ $MON = Oct* ]] || [[ $MON = Dec* ]]; then
	 			    echo "You need to make $d."
        fi
		;;
	Thursday) if [[ $MON = Jan* ]] || [[ $MON = May ]] || [[ $MON = Sep* ]]; then
					echo "You need to make $e."
			  elif [[ $MON = Mar* ]] || [[ $MON = Jul* ]] || [[ $MON = Nov* ]]; then
					echo "You need to make $f."
     	  fi
		  ;;

	*) exit 1
       ;;
esac
