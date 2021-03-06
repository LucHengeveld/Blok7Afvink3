#!/bin/bash

# Opdracht 2:
printf "Opdracht 2:\n"

regex='^[0-9]+$'

printf "Wat is de snelheid in km/uur?\n"
read snelheid
if ! [[ "$snelheid" =~ $regex ]]; then
	printf "Alleen mogelijk om positieve getallen in te voeren!"
	exit 1
fi

printf "Wat is de reistijd in uren?\n"
read uur
if ! [[ "$uur" =~ $regex ]]; then
	printf "Alleen mogelijk om positieve getallen in te voeren!"
	exit 1
fi

bereken_spaties () {
    spaties=$((8-${#1}))
    for getal in $(seq 1 $spaties); do
        printf " "
    done
    echo "$1 $2"
}

printf "Uurafstand\n"

for (( i = 1; i <= $uur; i++ )); do
	afstand=$(($snelheid*$i))
	printf "$i"
	bereken_spaties $afstand
done
