#!/bin/bash

# install apt packages
sudo apt update;
sudo apt install tmux zsh exa htop ncdu python3 ripgrep fd-find gcc snapd;

# install neovim
sudo snap install --edge nvim --classic;
# install lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim;
rm -rf ~/.config/nvim/.git;

# install Rust lang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
source "$HOME/.cargo/env";

# install Rust packages
cargo install batcat bottom;

# install Fira Code nerd font
mkdir -p ~/.local/share/fonts;
cd ~/.local/share/fonts;
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/FiraCode.zip;
unzip FiraCode.zip;
rm FiraCode.zip;
cd ~/dotfiles;

# install oh-my-zsh and p10k
zsh;
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;

# Move dotfiles into home dir
cd ~/dotfiles;
find . -mindepth 1 -maxdepth 1 -exec mv -t .. -- {} +;
cd ..; 
rm -r dotfiles;
rm -rf .git;

p10k configure;
nvim;
