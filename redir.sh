#!/bin/bash
exec 3>&1
exec 1>test.txt
pwd
date
ls
exec 1>&3
who
cat test.txt

