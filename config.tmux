#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
	tmux bind-key '|' split-window -h
	tmux bind-key - split-window -v
}

main
