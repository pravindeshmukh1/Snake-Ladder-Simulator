#!/bin/bash -x

echo "welcome Snake & Ladder Simulator"

#constant
START_POSITION=0

NO_PLAY=0
LADDER=1
SNAKE=2

playerPosition=0
endPosition=10


function getNumber() {
	rno=$((RANDOM%6+1))
	echo $rno
}
getNumber

function getExactPosition() {

	if [ $playerPosition -lt $START_POSITION ]
	then
		playerPosition=$START_POSITION
	fi

	if [ $playerPosition -gt $endPosition ]
	then
		playerPosition=$((playerPosition-$rno))
	fi
}

function checkOption () {

	while [[ $playerPosition -lt $endPosition ]]
	do
		choice=$((RANDOM%3))
		case $choice in
			$NO_PLAY) playerPosition=0 ;;
			$LADDER) playerPosition=$(( $playerPosition+$rno )) ;;

			$SNAKE) if [[ $playerposition -lt 0 ]]
					  then
					  		playerPosition=0
				  	  else
							playerPosition=$(( $playerPositon-$rno ))
					  fi ;;
		esac
		getExactPosition
	done
		echo "Player Position:- " $playerPosition
}
checkOption
