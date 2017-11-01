# Brew
alias brewMyMac='brew update && brew doctor && brew upgrade && brew cleanup && brew prune
                  && brew upgrade brew-cask && brew cleanup && brew cask cleanup'

#Gradle
alias gdw='./gradlew'

alias vim='/usr/local/bin/vim'
alias emacs='/usr/local/bin/emacs'
alias emacsclient='/usr/local/bin/emacsclient'
alias python='/usr/local/bin/python2.7'
alias svn='/usr/local/bin/svn'
alias e="emacsclient -nw --alternate-editor="" -c "$@""
alias tmux='tmux -2'
alias n='nvim'
alias ls='exa'
alias loadnvm=". /usr/local/opt/nvm/nvm.sh"
