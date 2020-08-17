#!/bin/bash
echo "---------------------------------------------------------------"
echo "This programm converted a Fahrenheit temprerature to Celsius. "
echo "-------------------------------------------------------------- "
printf "%13s \t %20s\t\n" "Fahrenheit" "Celsius"

sf=31
cel=0
while [ $sf -lt 52 ]
do
(( sf++ ))

function celsius(){
cel=$(bc -l << EOF
scale = 3
((($sf-32)*5/9 ))
EOF
)
} 
celsius

printf " %10.2f\t% 20.2f\t\n" $sf $cel
done



