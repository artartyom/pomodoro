#!/bin/bash

install_path="$0"
real_path=$(realpath "$install_path")
real_workdir=$(dirname "$real_path")

timer_work=$1
timer_rest=$2

if [ "$timer_work" == "" ]; then
	echo "Please specify timer duration!"
	exit
fi

screen -dmS Pomodoro bash "$real_workdir"/start_timer.sh "$real_workdir" $timer_work $timer_rest
