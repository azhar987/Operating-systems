#!/bin/bash
num="1 2 3 4 5 6 7 8 9"
for n in $num
do
  remainder=$(($n % 2))
  if [ $remainder == 0 ]
  then
      even=$(($even+1))
      echo "Even number:$n"
      continue
  fi
  odd=$(($odd+1))
  echo "odd no:$n"
done
echo "Total even:$even"
echo "Total odd:$odd"
