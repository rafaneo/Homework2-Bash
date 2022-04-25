#!/bin/bash
echo "The ip or domain you sellected is $1"; 

var=$(host $1); 
arr=($var);

if [ ${arr[-2]} == "found:" ] && [ ${arr[-3]} == "not" ]
then
	echo - 
else
	echo ${arr[-1]};
fi

