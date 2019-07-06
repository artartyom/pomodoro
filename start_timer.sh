#!/bin/bash

real_workdir="$1"
timer_work=$2
timer_rest=$3

notify-send "Pomodoro started!" "Work for $timer_work minutes." -i "$real_workdir/tomato.png"
sleep $(( $timer_work*60 ))
notify-send "Pomodoro finished!" "You can rest now." -u critical  -i "$real_workdir/tomato.png"

if [ "$timer_rest" != "" ]; then
	sleep $(( $timer_rest*60 ))
	notify-send "Rest time is over!" "Time to get back to work."$'\n'"Don't forget to restart the pomodoro." -u critical -i "$real_workdir/tomato.png"
fi
