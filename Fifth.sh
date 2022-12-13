#!/bin/bash
echo "if.else(Conditional statement)"
big_num(){
	x=$1
	y=$2
	z=$3	
if [ %x -gt $y ]; then
if [ %x -gt $z]; then
echo "Biggest no is:$x"
else
echo "Biggest no is:$z"
fi
else
if [ $y -gt $z ]; then
echo "Biggest no is:$y"
else
echo "biggest no is:$z"
fi
fi
}
	big_num 234
	exit 0
		
