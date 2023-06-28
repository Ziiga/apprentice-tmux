#!/bin/bash
pure_black="#000000"
black="#252525"
blue="#8fafd7"
orange="#ff8700"
red="#800000"
light_red="#af5f5f"
white="#aab2bf"
green="#87875F"
visual_grey="#585858"
comment_grey="#585858"
light_green="#87875f"

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}


set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"
set "status-style" "fg=$white,bg=$black"
set "status-attr" "none"
set "status-left-attr" "none"

set "mode-style" "fg=$black,bg=$blue"

set "pane-border-style" "fg=$white,bg=$pure_black"
set "pane-active-border-style" "fg=$light_green,bg=$pure_black"

set "display-panes-active-colour" "$light_red"
set "display-panes-colour" "$blue"

set "@prefix_highlight_fg" "$black"
set "@prefix_highlight_bg" "$green"
set "@prefix_highlight_copy_mode_attr" "fg=$black,bg=$green"
set "@prefix_highlight_output_prefix" "  "


set "status-right" "#[fg=$green,bg=$black,nobold,nounderscore,noitalics]#[fg=$black,bg=$green,bold] #h"

set "status-left" "#[fg=$black,bg=$green,bold] #S #{prefix_highlight}#[fg=$green,bg=$visual_grey,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$black,bg=$visual_grey] #I #W "

set "window-status-current-format" "#[fg=$visual_grey,bg=$green,nobold,nounderscore,noitalics]#[fg=$black,bg=$green,nobold] #I #W #[fg=$green,bg=$black,nobold,nounderscore,noitalics]"

set "window-status-separator" ""
