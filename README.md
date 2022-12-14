# Dotfiles and new system setup

## Setup
  * open a terminal in your home folder (~)
  * clone this repo `git clone git@github.com:czonios/dotfiles.git`
  * Install packages `sudo apt install alacritty tmux zsh neovim exa htop ncdu node python3`
  * Install [Rustup and cargo](https://www.rust-lang.org/tools/install)
  * Install crates `cargo install ripgrep bat bottom #(btm)`
  * Install [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts#option-6-ad-hoc-curl-download)
  * Move all files from ~/dotfiles into ~:
    * `cd dotfiles`
    * `find . -mindepth 1 -maxdepth 1 -exec mv -t .. -- {} +`
    * `cd ..; rm -r dotfiles`
  * Install [oh-my-zsh and p10k](https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0)
  * Install [astronvim](https://astronvim.github.io)
  * maybe install [starship](https://starship.rs/guide/#🚀-installation) if ohmyzsh and p10k are not for you 

### Copyable script:

```sh
cd ~
git clone git@github.com:czonios/dotfiles.git
cd dotfiles
find . -mindepth 1 -maxdepth 1 -exec mv -t .. -- {} +
cd ..; rm -r dotfiles
sudo apt install alacritty tmux zsh neovim exa htop ncdu node python3
cargo install ripgrep bottom #(btm)
```
