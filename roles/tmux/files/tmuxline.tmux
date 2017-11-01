# This tmux statusbar config was created by tmuxline.vim
# on Ter, 02 Ago 2016

set -g status-bg "colour235"
set -g message-command-fg "colour230"
set -g status-justify "left"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg "colour33"
set -g message-bg "colour239"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg "colour230"
set -g message-command-bg "colour239"
set -g status-attr "none"
set -g pane-border-fg "colour239"
set -g status-left-attr "none"
setw -g window-status-fg "colour245"
setw -g window-status-attr "none"
setw -g window-status-activity-bg "colour235"
setw -g window-status-activity-attr "none"
setw -g window-status-activity-fg "colour33"
setw -g window-status-separator ""
setw -g window-status-bg "colour235"
set -g status-left "#[fg=colour230,bg=colour33] #S #[fg=colour33,bg=colour235,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=colour239,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour245,bg=colour239] %d/%m/%y | %H:%M | %a #[fg=colour244,bg=colour239,nobold,nounderscore,noitalics]#[fg=colour235,bg=colour244] #{battery_percentage} "
setw -g window-status-format "#[fg=colour245,bg=colour235] #I |#[fg=colour245,bg=colour235] #W "
setw -g window-status-current-format "#[fg=colour235,bg=colour239,nobold,nounderscore,noitalics]#[fg=colour230,bg=colour239] #I |#[fg=colour230,bg=colour239] #W #[fg=colour239,bg=colour235,nobold,nounderscore,noitalics]"
