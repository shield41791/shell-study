#!/bin/bash

getLine()
{
	local arg1=$1
	if [ -d $arg1 ];then
		echo "$arg1 is directory"
	
		cd $arg1
		#echo $(ls)
		for val in $(ls)
			do getLine $val
		done
	else
		echo "$arg1 : $(wc -l $arg1)"	
	fi
}

read -p "input file(directory) name : " filename

getLine $filename

