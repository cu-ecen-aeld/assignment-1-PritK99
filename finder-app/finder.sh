#!/bin/bash

if [ $# == 2 ]
then
	if [ -d $1 ]
	then
		x=$(ls "$1" | wc -l)
		y=$(grep -r "$2" "$1" | wc -l)
		echo "The number of files are $x and the number of matching lines are $y"
	else
		return 1
	fi
else
	return 1
fi
