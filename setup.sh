# install apt packages
sudo apt install tmux zsh neovim exa htop ncdu python3;
# install Rust lang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
source "$HOME/.cargo/env";
# install Rust packages
cargo install ripgrep bar bottom alacritty;
# install Fira Code nerd font
mkdir -p ~/.local/share/fonts;
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/FiraCodeNerdFontMono-Regular.ttf;
cd ~/dotfiles;
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
# install p10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k;

# Move dotfiles into home dir
cd dotfiles;
find . -mindepth 1 -maxdepth 1 -exec mv -t .. -- {} +;
cd ..; rm -r dotfiles;

source ~/.zshrc;

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
p10k configure
