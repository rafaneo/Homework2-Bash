#!/bin/bash

echo "The file you sellectted is $1"

for i in $(ls); do
	if [ -d $i ]
	then
		cd $i
		for j in $(ls); do
			if [ $j == $1 ]
			then
				echo "File found in $(pwd)";
			fi
		done
		cd ..
	else
		if [ $i == $1 ] 
		then
			echo "File found in $(pwd)";
		fi
	fi
done
