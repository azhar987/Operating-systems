#!/bin/bash
echo "Switch statement"
x=$1
case $x in
	1)
	  echo "This is level 1"
	  ;;
	2)
	  echo "This is level 2"
	  ;;
	3)
	  echo "This is level 3"
	  ;;
	*)
	  echo "This is the default level"
	  ;;
esac
exit 0
