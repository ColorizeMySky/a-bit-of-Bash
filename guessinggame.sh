#! /bin/bash

function guess {
  local count=$(ls -l | grep "^-" | wc -l); #count files into folder

  while(true)
    do
	echo "How many files are in the current directory?";
	read number

	if [[ $number -eq $count ]]
	then 
		echo "You are win!"
		break

	elif [[ $number -lt $count ]]
	then
		echo "I need more files. These are not enough. Try again.";

	elif [[ $number -gt $count ]]
	then
		echo "Whoa! Whoa! Easy! You number is so big and... Try again."

	else 
		echo "There is no place like 127.0.0.1";
	fi
    done
}

guess
