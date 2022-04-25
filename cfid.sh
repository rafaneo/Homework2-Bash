#!/bin/bash

echo "The file you sellected is $1" 

for i in $(ls); do 
	if [ $i == $1 ]
	then
		if [ -d $i ]
		then
			cd $i 
			for j in $(ls); do
				if [ -d $j ]
				then
					cd $j
					echo $(ls | wc -l)
					cd ..
				fi
			done
		else
			echo "This file doesn't exist or is not a directory"
		fi
	fi
done
