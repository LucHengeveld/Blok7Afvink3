#!/bin/bash

# Opdracht 4:
printf "Opdracht 4:\n"

for (( i = 8; i > 0; i--)); do
	for (( j=$i; j > 0; j-- )); do
		printf "*"
	done
	printf "\n"
done

printf "\n"

for (( i = 0; i < 9; i++ )); do
	printf "#"
	for (( j = 0; j < $i; j++ )); do
		printf " "
	done
	printf "#\n"
done
