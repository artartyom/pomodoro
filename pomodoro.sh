#!/bin/bash

workdir=$(pwd)
real_workdir=$(realpath $workdir)

while [ "$1" != "" ]; do
	case $1 in
		--wt)
			shift
			timer_work=$1
			;;
		--rt)
			shift
			timer_rest=$1
			;;
		*)
			help=1
			;;
	esac
	shift
done

if [ "$timer_work" == "" -o "$help" == "1" ]; then
	echo "Arguments:"
	echo "	--wt	required	Work time in minutes"
	echo "	--rt 	optional	Rest time in minutes"
	exit
fi

screen -dmS Pomodoro bash $real_workdir/start_timer.sh $real_workdir $timer_work $timer_rest
