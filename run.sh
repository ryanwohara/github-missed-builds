#!/bin/bash

Continue='y'
Commits=1

while [[ $Commits -lt 1001 && $Continue = 'y' ]] ; do
	Commits=$(git log --oneline| wc -l)
	echo "git commit --allow-empty -m \"Commit $Commits\""
	git commit --allow-empty -m "Commit $Commits"
	git push
	read -n 1 -p "Continue? [y/n] " Continue
done