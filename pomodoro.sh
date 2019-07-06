#!/bin/bash

workdir=$(pwd)
real_workdir=$(realpath $workdir)
timer_work=$1
timer_rest=$2

if [ "$timer_work" == "" ]; then
	echo "Please specify timer duration!"
	exit
fi

screen -dmS Pomodoro bash $real_workdir/start_timer.sh $real_workdir $timer_work $timer_rest
