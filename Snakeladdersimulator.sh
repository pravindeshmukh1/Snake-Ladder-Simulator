#!/bin/bash -x

echo "welcome Snake & Ladder Simulator"

#constant
START_POSITION=0

NO_PLAY=0
LADDER=1
SNAKE=2

playerPosition=0


function getNumber() {
	rno=$((RANDOM%6+1))
	echo $rno
}
getNumber

function checkOption () {
		choice=$((RANDOM%3))
	case $choice in
		$NO_PLAY) playerPosition=$(($playerPosition+0)) ;;
		$LADDER)	playerPosition=$(( $playerPosition+$rno )) ;;
		$SNAKE) playerPosition=$(( $playerPositon-$rno )) ;;
	esac
		echo $playerPosition
}
checkOption
