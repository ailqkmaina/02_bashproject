#!/bin/bash

#Expanding script to read user input and sort by it.

echo "Would you like to sort the user processes by memory or cpu?
To sort by  memory enter 1
To sort by  CPU enter 2"
read sortkey

if [ $sortkey = 1 ]
then
	ps aux | head -1; ps aux --sort=-%mem | grep -i `whoami`
elif [ $sortkey = 2 ]
then 
	ps aux | head -1; ps aux --sort=-%cpu | grep -i `whoami`
else
	echo "Invalid input."
fi

