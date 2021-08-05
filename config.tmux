#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
	tmux set -g base-index 1
	tmux setw -g pane-base-index 1

	tmux set -g prefix C-Space
	tmux bind-key '|' split-window -h
	tmux bind-key - split-window -v

	# Switch windows alt + number
	tmux bind-key -n M-1 select-window -t 1
	tmux bind-key -n M-2 select-window -t 2
	tmux bind-key -n M-3 select-window -t 3
	tmux bind-key -n M-4 select-window -t 4
	tmux bind-key -n M-5 select-window -t 5
	tmux bind-key -n M-6 select-window -t 6
	tmux bind-key -n M-7 select-window -t 7
	tmux bind-key -n M-8 select-window -t 8
	tmux bind-key -n M-9 select-window -t 9
	tmux bind-key -n M-0 select-window -t 0
}

main
