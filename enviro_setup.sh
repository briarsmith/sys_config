# Create hardlink from these files to filesystem ones
ln vimrc ~/.vimrc
ln tmux.conf ~/.tmux.conf 

sudo apt-get update
# Install Zsh and set it as default shell
sudo apt-get install zsh -y
sudo usermod -s /usr/bin/zsh $(whoami)
# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Vundle, a Vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


