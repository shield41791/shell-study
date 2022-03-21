#!/bin/bash

count=0

exec 2> /Users/yohanjoo/dev/shell/logs/fordemo2_log.log

for file in $@
do
	if [ -f $file ]; then
		wc -l $file
		let count=count+1
	elif [ -d $file ]; then
		for subfile in $file/*
		do
			wc -l $subfile
			let count=count+1
		done
	fi
done >> fordemo2_result.txt

echo "Total count : $count" >> fordemo2_result.txt
