#!/bin/bash

no_of_files=$(echo ls | wc -l)
let no_of_files=$no_of_files+1
# echo $no_of_files
correct=0

echo "Hi, Do you know how many files are in this directory?"

while true
do
    echo "Your guess: "
    read guess
    if [ $guess -eq $no_of_files ]
    then
        echo -e "\nGreat! You guessed correctly."
        break
    fi
    if [[ $guess -lt no_of_files ]]
    then
        echo Too low
    fi
    if [[ $guess -gt no_of_files ]]
    then
        echo Too high
    fi
    echo "Guess again (y/n)?"
#    read guess_again
    select yn in "No" "Yes"
    do
        case $yn in
            No ) exit;;
            Yes ) break;;
        esac
    done
done
echo -e "\nThanks\n  for\n   playing!"