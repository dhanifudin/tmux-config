#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
	tmux set -g base-index 1
	tmux setw -g pane-base-index 1

	tmux set -g prefix C-Space
	tmux bind-key '|' split-window -h
	tmux bind-key - split-window -v
}

main
