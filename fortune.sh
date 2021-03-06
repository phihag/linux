#!/bin/bash

# you need to install packages `cowsay` and `fortune` (debian/ubuntu)

function show_fortune {
	RANGE=3
	number=$RANDOM
	let "number %= $RANGE"
	case $number in
		0)
			cow="moose"
			;;
		1)
			cow="tux"
			;;
		2)
			cow="koala"
			;;
	esac

	RANGE=2
	number=$RANDOM
	let "number %= $RANGE"
	case $number in
		0)
			command="/usr/games/cowsay"
			;;
		1)
			command="/usr/games/cowthink"
			;;
	esac
	/usr/games/fortune | $command -f $cow
}

show_fortune

