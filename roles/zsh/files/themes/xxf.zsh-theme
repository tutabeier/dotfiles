# Copy and self modified from ys.zsh-theme, the one of default themes in master repository
# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and 007.
# http://xiaofan.at
# 2 Jul 2015 - Xiaofan
PROMPT=''
# Directory info.
local current_dir='${PWD/#$HOME/~}'

# VCS
YS_VCS_PROMPT_PREFIX1="%{$FG[007]%}@%{$reset_color%} "
YS_VCS_PROMPT_PREFIX2=":%{$FG[006]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%} "
YS_VCS_PROMPT_DIRTY=" %{$FG[001]%}✗"
YS_VCS_PROMPT_CLEAN=" %{$FG[002]%}✔︎"

# Git info.
local git_info='$(git_prompt_info)'
local git_last_commit='$(git log -n 5 --format="%<(80,trunc)%s" -1 2> /dev/null)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}git${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

# Prompt format: \n # TIME USER at MACHINE in [DIRECTORY] on git:BRANCH STATE \n $
NEWLINE=$'\n'
CURRENT_DIR=%{$terminfo[bold]$FG[039]%}[${current_dir}]%{$reset_color%}
GIT_INFO=${git_info}
LINE=%{$terminfo[bold]$FG[007]%}'$ '%{$reset_color%}

PROMPT=${CURRENT_DIR}' '${GIT_INFO}${NEWLINE}${LINE}
