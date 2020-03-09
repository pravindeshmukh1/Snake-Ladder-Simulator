
#!/bin/bash -x

echo "welcome Snake & Ladder Simulator"

#constant
START_POSITION=0

NO_PLAY=0
LADDER=1
SNAKE=2

playerPosition=0
endPosition=100

function getNumber() {
	rno=$((RANDOM%6+1))
	echo $rno
}
getNumber

function checkOption () {

while [[ $playerPosition -lt $endPosition ]]
do
	choice=$((RANDOM%3))
	case $choice in
		$NO_PLAY) playerPosition=$(($playerPosition+0)) ;;
		$LADDER) playerPosition=$(( $playerPosition+$rno )) ;;
		$SNAKE) if [[ $playerposition -lt 0 ]]
				  then
						playerPosition=0
				  else
						playerPosition=$(( $playerPositon-$rno ))
				  fi ;;
	esac
done
		echo $playerPosition
}
checkOption
