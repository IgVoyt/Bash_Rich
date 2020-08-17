#!/bin/bash
n1=0
n2=0
guess=1
while true; do

n1=$[($RANDOM % 10) + 1]
echo "I've picked a number between 1 and 10, see if you can guess it!"
echo -n "Enter a number and I'll tell you higher or lower: "

while read n2; do
	if [[ $n2 -eq $n1 ]]; then
		break;
	else
	echo
		if [[ $n2 -gt $n1 ]]; then
			echo -n "Sorry, higher:"
	elif [[ $n2 -lt $n1 ]]; then
			echo -n "Sorry, lower "
		fi
	fi
#	guess=$[[ $guess +1 ]]

done
echo
echo "Good job!"
testCase ()
{

read -r -p "Play again? Enter Y or N: " tryAgain
case $tryAgain in
	[Yy]*) guess=1;;
	[Nn]*)	echo "Bay!"
			exit 0
	;;

	*    ) echo "Please answer yes or no."
	testCase
	;;
esac
}
testCase
done
