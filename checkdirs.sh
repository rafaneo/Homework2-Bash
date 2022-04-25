#!/bin/bash

echo "The file you sellectted is $1"

for i in $(ls); do
	if [ -d $i ] && [ $i == $1 ]
	then
		cd $i
		for j in $(ls); do
			if [ ! -d $j ]
			then
				echo "$(file $j)";
			fi
		done
		cd ..
	else
		if [ ! $i == $1 ]
		then 
			true
		fi
	fi
done
