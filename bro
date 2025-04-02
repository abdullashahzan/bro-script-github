#!/bin/bash

brnch = "main"
commt_msg = "Updated files"

psh_git(){

	for (( i=1; i<"$#"; i++ )); do
		
		case "${!i}" in
			say)
				((i++))
				commt_msg="${!i}"
				;;
			on)
				((i++))
				brnch="${!i}"
		esac

	done

	echo "${brnch}"
	echo "${commt_msg}"

}






if [ -z "$1" ]; then
	echo "Yo bro! Ts how u use -> bro <command 1> <command 2>..."
elif [ "$1" == "do" ]; then
	echo "Ts cmd push chngs to ur repo (write 'bro do ts' if u srs rn)"
	echo "u cn also wrte brnch name & commt msgs gng"
	echo "e.g. bro do ts say 'sum bs commt msg'"
	echo "e.g. bro do ts on 'bs brnch name'"
	echo "e.g. bro do ts say 'sum bs commt msg' on 'brnch'"
fi