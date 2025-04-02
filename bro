#!/bin/bash

do_usual(){
	echo "Adding, committing with goofy message and pushing to main..."
	git add .
	git commit -m "Updated file"
	git push origin main
}

if [ -z $1 ];
	then {
		echo "Yo bro! Use this shit like this: bro [commit message] [branch name]"
	}
else
	echo "$1"
fi

