#!/bin/bash

# updating installation
sudo apt-get update && sudo apt-get upgrade -y

# adding zsh
sudo apt install zsh git curl fzf -y

# adding oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# addning zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# making a backup for zsh config
cp ~/.zshrc ~/.zshrc.bak

# cloning .zshrc from gist
curl https://gist.githubusercontent.com/zaytsevand/cc3d87b3d3dfbbbad343fd0b11ab5ad4/raw/010ae9b86529ee28c82e749e1e74ba3689cd24a3/.zshrc > ~/.zshrc
