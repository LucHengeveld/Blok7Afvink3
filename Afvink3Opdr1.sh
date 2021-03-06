#!/bin/bash

# Opdracht 1:
printf "Opdracht 1:\n"

printf "Hoeveel dagen heb je insecten verzameld?\n"
read dagen

regex="^[0-9]+$"
if [[ -z "$dagen" || ! "$dagen" =~ $regex ]]; then
	printf "Alleen mogelijk om getallen in te vullen!\n"
	exit 1
fi

aantalinsecten=0

for (( i=1; i <= $dagen; i++ )); do
	printf "Voer het aantal insecten in van dag $i:\n"
	read verzameld
	aantalinsecten=$(($aantalinsecten+$verzameld))
done

printf "In totaal $aantalinsecten insecten verzameld\n"
