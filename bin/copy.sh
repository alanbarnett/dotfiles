#!/bin/bash
echo Project or Lab?
OPTIONS="Project Lab"
select opt in $OPTIONS; do
	if [ "$opt" = "Project" ]; then
		echo Enter project number
		read NUM
		scp ~/Documents/projects/homework/* abarnett@px1.cs.ohio.edu:/home/abarnett/2401_projects/project$NUM
		exit
	elif [ "$opt" = "Lab" ]; then
		echo Enter lab number
		read NUM
		scp ~/Documents/projects/lab/* abarnett@px1.cs.ohio.edu:/home/abarnett/2401_projects/Labs/Lab$NUM
		exit
	else
		echo Bad option. Try again.
	fi
done
