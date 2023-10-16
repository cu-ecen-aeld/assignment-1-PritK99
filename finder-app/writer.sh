#!/bin/bash

if [ $# == 2 ]
then
	dir=$(dirname "$1")
	filename=$(basename "$1")
	if [ -d $dir ]
	then
		touch $1
	else
		mkdir -p $dir
		touch $1
	fi
	echo "$2" > "$1"
else
	return 1
fi
