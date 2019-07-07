## Pomodoro

### Synopsis

`pomodoro n [m]|stop`

### Description

This is a very simple timer for the pomodoro technique written entirely in bash. It consists of two scripts: `pomodoro.sh`, which is used to launch the timer, and `start_timer.sh`, the actual timer.

The function runs silently in the background and does not require an open terminal using a combination of `screen`, `notify-send` and `sleep`. It sends a notification after a set amount of time telling it's time to take a break and (optionally) another notification telling it's time to get back to work.

In a `screen -list` command output Pomodoro screens will be listed as Pomodoro-k_n, where n is the number of minutes and k is the overall number of Pomodoro screens + 1 present at timer launch.

### Installation

Clone the repo wherever you want: `git clone https://github.com/artartyom/pomodoro /path/to/repo`

To ensure simple access from the command line, place a symlink in /usr/bin:
```
cd /usr/bin
sudo ln -l /path/to/repo/pomodoro.sh pomodoro
pomodoro n m
```
Alternatively, you can just switch your working directory and run from there:
```
cd /path/to/repo
bash ./pomodoro.sh n m
```

### Usage

`pomodoro n`, where n is an int, starts a work timer of n minutes.
`pomodoro n m`, where n and m are ints, starts a work timer of n minutes and a subsequent rest timer of m minutes.
`pomodoro stop` will stop all the currently running timers.
