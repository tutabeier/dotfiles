#!/bin/bash

# exit immediately if something fails
set -o nounset
set -o errexit

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

log() {
	echo "${green}$(date -u) $1${reset}"
}

DOTFILES_DIR="$HOME/.dotfiles"

log "Linking zshrc"
ln -sfn "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"

log "Linking p10k"
ln -sfn "$DOTFILES_DIR/zsh/p10k.zsh" "$HOME/.p10k.zsh"

if test ! $(which brew); then
	log "Installing Homebrew..."

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
	log "Homebrew already installed. Skipping installation."
fi

log "Installing Brewfile formulas"
brew bundle

log "Creating autoload folder"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

log "Linking Vim config"
ln -sfn "$DOTFILES_DIR/vim/vimrc" "$HOME/.vimrc"

log "Linking Neovim config"
mkdir -p $HOME/.config/nvim/
ln -sfn "$DOTFILES_DIR/vim/neovimrc" "$HOME/.config/nvim/init.vim"

log "Finished!"
