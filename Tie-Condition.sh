#! /bin/bash
heads=0
tails=0
count=1
function coinFlip() {
	 coinFlip=$((RANDOM%2))
   if [ $coinFlip -eq 0 ]
   then
      ((heads++))
   else
      ((tails++))
   fi
   ((count++))
}
function displayWinner() {
	if [ $heads -gt $tails ]
	then
   	echo "Heads won by $(($heads-$tails))"
	else
   	echo "Tails won by $(($tails-$heads))"
	fi
}
while [ $heads -lt 21 ] && [ $tails -lt 21 ]
do
	coinFlip
done
if [ $heads -eq 21 ] && [ $tails -eq 21 ]
then
	while [ $(($heads-$tails)) -lt 2 ] && [ $(($tails-$heads)) -lt 2 ]
	do
		coinFlip
	done
	displayWinner
else
	displayWinner
fi
