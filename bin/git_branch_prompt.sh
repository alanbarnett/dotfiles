#!/bin/sh

if [ "$GIT_PROMPT" -eq 1 ]; then
	STATUS=$(git status -sb 2> /dev/null)

	if [ -n "$STATUS" ]; then
		NUM_STATUS=$(printf "$STATUS\n" | wc -l)
		BRANCH=$(echo "$STATUS" | sed -n "s/^## \(.*\)\.\.\..*/\1/p")
		UNTRACKED=$(echo "$STATUS" | grep "^?? ")

		if [ -n "$UNTRACKED" ]; then
			NUM_UNTRACKED=$(printf "$UNTRACKED\n" | wc -l)
		else
			NUM_UNTRACKED=0
		fi

		NUM_OTHER=$(( $NUM_STATUS - $NUM_UNTRACKED - 1 ))

		if [ $NUM_OTHER -gt 0 ]; then
			printf "\e[1;37m->\e[1;31m$BRANCH\e[m"
		elif [ $NUM_UNTRACKED -gt 0 ]; then
			printf "\e[1;37m->\e[1;33m$BRANCH\e[m"
		else
			printf "\e[1;37m->\e[1;32m$BRANCH\e[m"
		fi
	fi
fi
