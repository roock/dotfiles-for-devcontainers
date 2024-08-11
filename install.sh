#!/bin/bash

# Install ZSH syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
# Install ZSH auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions "${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
# Install Powerlevel 10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${HOME}/.oh-my-zsh/custom/themes/powerlevel10k"

# Create symlinks
ln -nfs "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
ln -nfs "$HOME/dotfiles/.p10k.zsh" "$HOME/.p10k.zsh"

# properly set timezone
# TODO: improve this to work on more linux distributions
# https://github.com/microsoft/vscode-dev-containers/issues/307
if [[ -f /usr/share/zoneinfo/Europe/Vienna ]]; then
    sudo ln -sf /usr/share/zoneinfo/Europe/Vienna /etc/localtime
fi

# Copy user gitconfig
# cp ./.gitconfig ~
