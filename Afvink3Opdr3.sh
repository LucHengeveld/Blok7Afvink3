#!/bin/bash

# Opdracht 3:
printf "Opdracht 3:\n"

regex='^-?[0-9]\d*(\.\d+)?$'

totaal=0
aantalgetallen=0
while [ i=0 ]; do
	printf "Vul een positief nummer in of negatief nummer om te stoppen:\n"
	read getal
	if ! [[ "$getal" =~ $regex ]]; then
		printf "Alleen mogelijk om getallen in te voeren!"
		exit 1
	fi
	
	if (($getal >= 0)); then
		totaal=$(($totaal+$getal))
		aantalgetallen=$(($aantalgetallen+1))
	else
		printf "Negatief getal ingevoerd. Loop wordt gestopt.\n"
		gem=$(($totaal/$aantalgetallen))
		printf "Totaal: $totaal\n"
		printf "Gemiddelde: $gem"
		break
	fi
done

