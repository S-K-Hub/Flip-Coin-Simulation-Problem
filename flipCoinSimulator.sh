#! /bin/bash
coinFlip=$((RANDOM%2))
if [ $coinFlip -eq 0 ]
then
	echo "Heads wins!"
else
	echo "Tails wins!"
fi
