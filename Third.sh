#!/bin/bash
echo "Script for function call"
Sum(){
	x=$1
	y=$2
	k=0
	k=$(($x +$y))
	return $k
}
Sum 7 5
echo "Sum of the two no is:$?"
exit 0
