#!/bin/bash

getLine()
{
	if [ -d $1 ];then
		echo "$1 is directory"
		getLine $1
	else
		echo "$1 : $(wc -l $1)"	
	fi
}

read -p "input file(directory) name : " filename

getLine $filename

