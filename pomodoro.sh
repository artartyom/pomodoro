#!/bin/bash

install_path="$0"
real_path=$(realpath "$install_path")
real_workdir=$(dirname "$real_path")

timer_work=$1
timer_rest=$2

if [ "$timer_work" == "" ]; then
	echo "Please use integers to specify timer duration or print pomodoro stop to stop all timers."
	exit
elif [ "$timer_work" == "stop" ]; then
	echo "Stopping all pomodoros."
	for scrnum in $(screen -list | grep Pomodoro | awk -F '.' '{print $1}'); do
		screen -XS $scrnum quit
	done
	notify-send "All pomodoros stopped." "Restart pomodoros as needed." -i "$real_workdir/tomato.png"
	exit
fi

expr $timer_work + 1 &> /dev/null
if [ $? != 0 ]; then
	echo "Please use integers to specify timer duration or print pomodoro stop to stop all timers."
	exit
fi

expr $timer_rest + 1 &> /dev/null
if [ $? != 0 ]; then
	echo "Please use integers to specify timer duration or print pomodoro stop to stop all timers."
	exit
fi

screen -dmS Pomodoro bash "$real_workdir"/start_timer.sh "$real_workdir" $timer_work $timer_rest
