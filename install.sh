#!/bin/bash

# exit immediately if something fails
set -o nounset
set -o errexit

green=`tput setaf 2`
reset=`tput sgr0`

log() {
	echo "${green}$(date -u) $1${reset}"
}

if test ! $(which brew); then
	log "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
	log "Homebrew already installed. Skipping."
fi

log "Updating Brew formulas"
brew update
log "Installing Brew formulas"
brew bundle
log "Upgrading Brew formulas"
brew upgrade

log "Installing Spacevim"
curl -sLf https://spacevim.org/install.sh | bash

log "Removing default Spacevim config"
rm ~/.SpaceVim.d/init.toml

log "Linking custom Spacevim config"
ln -s ~/.dotfiles/spacevim.config.toml ~/.SpaceVim.d/init.toml

log "Finished!"
