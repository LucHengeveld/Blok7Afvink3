#!/bin/bash

# Opdracht 5:
printf "Opdracht 5:\n"

printf "Vul bestandsnaam in (moet in zelfde map zitten!)\n"
read input

regelnr=0
while IFS= read -r line
do
	if ! [ -z "$line" ]; then
		regelnr=$(($regelnr+1))
		printf "Regel $regelnr: "
		echo -n "$line" | wc -c
	fi
done < "$input"
