#!/bin/bash -x

echo "welcome Snake & Ladder Simulator"

#constant
START_POSITION=0
END_POSITION=100

NO_PLAY=0
LADDER=1
SNAKE=2

playerPosition=0

diceCount=0
function getNumber()
	{
		dice=$((1+RANDOM%6))
		diceCount=$(($diceCount + 1))
		echo " Dice:- "$dice
	}


function checkOption() {

	option=$((1+RANDOM%3))
	case $option in
	$NO_PLAY)playerPosition=$playerPosition
	;;
	$LADDER)playerPosition=$(($playerPosition + $dice))
	;;
	$SNAKE)playerPosition=$(( $playerPosition - $dice))
			if [[ $playerPosition -lt 0 ]]
			then
			playerPosition=0
			fi
			;;
	esac
		echo "player Position" $playerPosition "Dice count" $diceCount
}

function checkWin() {

	while [[ $playerPosition -lt $END_POSITION ]]
	do
		getNumber
		if [[ $(($playerPosition + $dice)) -gt 100 ]]
		then
		playerPosition=$playerPosition
		else
		checkOption
		fi
		done

		if [[ $playerPosition == $END_POSITION ]]
		then
		echo "WIN"
		fi
}
checkWin
