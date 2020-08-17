#!/bin/bash
read -r -p "Please enter the width of rectangle: " W
read -r -p "Please enter the height of rectangle: " H
function areaRect() {

area=$((W*H))
# return area;


# echo "Area of the rectangle = $area"

}
areaRect

function perRect() {

per=$((2*(W+H)))
# return per;
# echo "Perimetr = $per"
}
perRect
echo "You enter the width = $W and the Height = $H "
echo "Area of the rectangle = $area"
echo "Perimetr = $per"
