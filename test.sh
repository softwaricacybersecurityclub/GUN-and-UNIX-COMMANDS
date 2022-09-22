#!/bin/bash

echo "Please enter your name:"
read name

echo "Do you want to continue?"
read rep

echo "We also provide some mathematical calculation."
echo "Please enter a number between 1 to 10"
read num
if [ $num -gt 0 ]
then
	if [ $num lt 10 ]
	then
		echo "You entered the right thing here! :)"

	else
		echo "Number is greater than 10. You entered $num."
	fi
fi



