#!/bin/bash

# Function to count files
function file_count {
    echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

correct=$(file_count)
guess=-1

while [[ $guess -ne $correct ]]
do
    read -p "Enter your guess: " guess
    if [[ $guess -lt $correct ]]; then
        echo "Too low!"
    elif [[ $guess -gt $correct ]]; then
        echo "Too high!"
    else
        echo "Congratulations! You guessed right 🎉"
    fi
done
