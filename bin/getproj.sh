#!/bin/bash
echo This will be placed in the \'~/Documents/projects/homework\' directory. Make sure it is empty.
echo Continue?
OPTIONS="Yes No"
select opt in $OPTIONS; do
	if [ "$opt" = "No" ]; then
	 exit
	elif [ "$opt" = "Yes" ]; then
	 echo Enter project number
	 read NUM
	 scp abarnett@px1.cs.ohio.edu:/home/jdolan/cs2401/projects/project$NUM/* ~/Documents/projects/homework
	 exit
	else
	 echo Bad option. Try again.
	fi
done
