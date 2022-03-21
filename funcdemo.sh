#!/bin/bash

val=5

function foo(){
	local val=4
	echo "hello $1 $val"
}

foo 3
