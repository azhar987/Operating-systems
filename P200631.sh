#!/bin/bash
touch taskk.c
cat P200631.txt>taskk.c
echo "Question 2"
Func(){
x=$1
if [ $x -eq 1 ] ; then
	gcc taskk.c -o output
else
	if  [ $x -eq 2 ] ; then
		gcc task.c -o output && ./output
	else
				
			if [ $x -eq 3 ] ; then
				cat P200631.sh
			else
				cat ls
			fi
	fi

fi
}
exit 0



