#!/bin/bash
# IFS=$'\n'

while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
	echo "User $f1 use $f7 shell"
done < /etc/passwd | sort | uniq | nl | column -t



