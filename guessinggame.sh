#!/usr/bin/env bash

echo "*** Welcome to the Guessing Game ***"
echo "Guess the total number of files in the current directory..."

function readGuess {
	echo "Enter your guess: "
	read guess
}
function getTotalFiles {
	totalFiles=$(ls | wc -l)
}

readGuess
getTotalFiles

while [[ $guess -ne $totalFiles ]]
do
	echo "Oops, wrong guess!"
	if [[ $guess -gt $totalFiles ]]
	then
		echo "Please try again, your guess is too high!"
	else 
		echo "Please try again, your guess is too low!"
	fi
	readGuess
done

echo "Congratulations, your guess is correct!"
