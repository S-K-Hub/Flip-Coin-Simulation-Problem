#! /bin/bash -x
heads=0
tails=0
count=1
while [ $heads -lt 21 ] && [ $tails -lt 21 ]
do
	coinFlip=$((RANDOM%2))
	if [ $coinFlip -eq 0 ]
	then
		((heads++))
	else
		((tails++))
	fi
	((count++))
done
if [ $heads -eq 21 ] && [ $tails -eq 21 ]
then
	echo "It's a tie!"
elif [ $heads -eq 21 ]
then
	echo "Heads won by $(($heads-$tails))"
else
	echo "Tails won by $(($tails-$heads))"
fi
