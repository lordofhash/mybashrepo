#!/bin/bash

# Function to prompt the user and check their guess
guess_the_number() {
    local correct_number=$(ls -1 | wc -l)
    local guess

    while true; do
        read -p "Guess the number of files in the current directory: " guess

        if [[ $guess -lt $correct_number ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $correct_number ]]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed the correct number of files."
            break
        fi
    done
}

# Here, I am running the function
guess_the_number