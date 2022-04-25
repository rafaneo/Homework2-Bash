#!/bin/bash

echo "The file you selleced is $1"

for i in $(ls); do
	if [ $i == $1 ]
	then
		echo "Type yes if you want to delete the given file";
		read var; 
		if [ $var == "yes" ]
		then
			rm $1;
		fi
	fi
done
