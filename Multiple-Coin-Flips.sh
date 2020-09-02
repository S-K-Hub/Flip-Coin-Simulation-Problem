#! /bin/bash
heads=0
tails=0
for((count=1; count<=10; count++))
do
	coinFlip=$((RANDOM%2))
	if [ $coinFlip -eq 0 ]
	then
		((heads++))
	else
		((tails++))
	fi
done
echo "Numbers of heads = $heads"
echo "Numbers of tails = $tails"
