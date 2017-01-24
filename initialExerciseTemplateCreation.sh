#!/bin/sh

# Pass two args, $1 = number of directories you want, $2 = number of files in each directory.

for ((dircount = 1; dircount <= $1; dircount++)) do
	mkdir "./lrthw/chap${dircount}"
	for ((filecount = 1; filecount <= $2; filecount++))
	do
		touch "./lrthw/chap${dircount}/ex${filecount}.rb"
	done
done
