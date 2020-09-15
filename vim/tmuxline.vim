let g:tmuxline_theme = 'dracula'
let g:tmuxline_powerline_separators = 0
let g:tmuxline#themes#airline_insert = 0
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b disabled'       : '',
      \'c disabled'       : '',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W'],
      \'x'    : '#(cd #{pane_current_path}; git rev-parse --abbrev-ref HEAD)',
      \'y'    : ['%d/%m', '%H:%M'],
      \'z'    : '#(~/.dotfiles/roles/tmux/files/bin/tmux-battery)',
      \'options' : {'status-justify': 'left'}}
