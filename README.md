## Pomodoro

`pomodoro n [m]`

### Synopsis

This is a very simple timer for the pomodoro technique written entirely in bash. It consists of two scripts: `pomodoro.sh`, which is used to launch the timer, and `start_timer.sh`, the actual timer.

The function runs silently in the background and does not require an open terminal using a combination of `screen`, `notify-send` and `sleep`. It sends a notification after a set amount of time telling it's time to take a break and (optionally) another notification telling it's time to get back to work.

### Installation

Clone the repo wherever you want. Then run:
```
cd /usr/bin
sudo ln -l /path/to/repo/pomodoro.sh pomodoro
```

### Usage

To start the timer run `pomodoro n`, where n is the work interval in minutes. Optionally, specify `m`, the rest interval in minutes.