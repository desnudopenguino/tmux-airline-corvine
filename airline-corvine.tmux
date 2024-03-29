#!/usr/bin/env bash

main() {

  ## Colors
  black="#3A3A3A"
  white="#EEEEEE"
  gray="#C6C6C6"
  dark_gray="#626262"
  light_purple="#87AFD7"
  dark_purple="#AFAFD7"
  cyan="#87D7D7"
  pink="#AFAFD7"
  orange="#FFAFAF"
  green="#87AF5F"
  red="#D78787"

  ## Icons
  left_sep=''
  right_sep=''
  right_alt_sep=''

  tmux set-option -g status on
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  tmux set-option -g status-bg "${dark_gray}"
  tmux set-option -g pane-active-border-fg "${green}"
  tmux set-option -g pane-border-fg "${gray}"
  tmux set-option -g message-bg "${gray}"
  tmux set-option -g message-fg "${white}"
  tmux set-option -g message-command-bg "${gray}"
  tmux set-option -g message-command-fg "${white}"
  tmux set-option -g status-left " #[bold]#I #[fg=${dark_gray},reverse,nobold]${right_sep}"
  tmux set-option -g status-left-style "fg=${dark_gray},bg=${dark_purple}"
  tmux set-option -g status-right "#[fg=${green},bg=${dark_gray}]${left_sep}#[bg=${black},reverse] #S #[bg=${dark_gray},reverse]${left_sep}#[fg=${dark_gray},bg=${light_purple}]${left_sep}#[fg=${light_purple},bg=${black}] #(hostname -s) #[bg=${dark_gray},fg=${light_purple}]${left_sep}#[bg=${dark_purple},fg=${dark_gray}]${left_sep}#[bg=${dark_gray},bold,fg=${dark_purple}] %Y-%m-%d %H:%M "
  tmux set-option -g status-right-style "fg=${light_purple},bg=${dark_gray}"
  tmux set-window-option -g window-status-activity-style "fg=${white},bg=${gray}"
  tmux set-window-option -g window-status-separator ""
  tmux set-window-option -g window-status-format ' #I #W '
  tmux set-window-option -g window-status-style "fg=${white},bg=${dark_gray}"
  tmux set-window-option -g window-status-last-style "fg=${orange},bg=${dark_gray}"
  tmux set-window-option -g window-status-current-format \
    "#[fg=${dark_gray},bg=${cyan}]${right_sep}#[fg=${black}] #I ${right_alt_sep} #W#F #[fg=${cyan},bg=${dark_gray}]${right_sep}"
  tmux set-window-option -g window-status-current-style "fg=${dark_gray},bg=${light_purple}"
}

main

# vim: set filetype=bash
