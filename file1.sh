#!/bin/bash
name=$(whoami)
if [ "$name" != "root" ] ; then
	echo "Hello $name!"
else
	exit 1
fi
if [ -d "Cal" ] ; then
	echo "Cal directoty exist."
else

	mkdir -p /home/$name/Cal
#	mkdir -p Cal
fi
cd Cal
# touch -d "2018-01-01" /{jan,feb,mar}.dat
touch -d '2018-01-01' {jan,feb,mar}.dat
