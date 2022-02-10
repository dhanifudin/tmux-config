#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  tmux set -g default-terminal "xterm-256color"
  tmux set -g history-limit 10000

  # Mouse
  tmux set -g mouse on

  # Enable Vi Mode
  tmux setw -g mode-keys vi
  # Mouse Scrolling
  tmux bind-key -T root WheelUpPane   if-shell -F -t = "#{alternate_on}" "send-keys -M" "select-pane -t =; copy-mode -e; send-keys -M"
  tmux bind-key -T root WheelDownPane if-shell -F -t = "#{alternate_on}" "send-keys -M" "select-pane -t =; send-keys -M"

  # Start windows and panes at 1
  tmux set -g base-index 1
  tmux setw -g pane-base-index 1

  # Set prefix to Ctrl + Space
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

  # Setup copy mode
  tmux bind-key -T copy-mode-vi v send-keys -X begin-selection
  tmux bind-key -T copy-mode-vi y send-keys -X copy-selection
  tmux bind-key -T copy-mode-vi r send-keys -X rectangle-toggle
}

main
