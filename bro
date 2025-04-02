#!/bin/bash

do_usual(){
	echo "Adding, committing with goofy message and pushing to main..."
	git add .
	git commit -m "Updated file"
	git push origin main
}

create_repo() {
	echo "Creating repository $1 on github bro."
}

if [ -z $1 ]; then {
		echo "Yo bro! Use this like this: bro <command 1> <command 2> <command 3>..."
	}
elif [ $1 == "do" ]; then 
	do_usual
else
	echo "Hello"
fi

