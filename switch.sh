#!/bin/bash
echo "Enter marks of subject 1"
read sub
echo "Enter marks of subject 2"
read sub2
echo "Enter marks of subject 3"
read sub3
echo "Enter marks of subject 4"
read sub4
MTOG(){
sub=$1
sub2=$2
sub3=$3
sub4=$4
if[( sub1>=50 && sub1<=54 )]
echo "D"
elif[( sub1>=55 && sub1<=58 )]
echo "D+"
elif[( sub1>=59 && sub1<=62 )]
echo "C-"
elif[( sub1>=63 && sub1<=68 )]
echo "C"
elif[( sub1>=69 && sub1<=72 )]
echo "C+"
elif[( sub1>=73 && sub1<=78 )]
echo "B-"
elif[( sub1>=79 && sub1<=82 )]
echo "B"
elif[( sub1>=83 && sub1<=88 )]
echo "B+"
elif[( sub1>=89 && sub1<=92 )]
echo "A-"
elif[( sub1>=93 && sub1<=96 )]
echo "A"
fi
}
MTOG 1 2 3 4
exit 0
