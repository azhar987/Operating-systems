#!/bin/bash

echo "While Loop"
x=5
while [ $x -ge 1 ]; do
	echo $x
	x=$(( $x -1))
	done
exit 0
