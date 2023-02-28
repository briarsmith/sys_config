
# If OS type is darwin then it's MacOS, else it's Linux
if [[ $OSTYPE == 'darwin'* ]]; then
    brew install node
    brew install tmux # should ensure .tmux.conf file exists
else
    sudo apt-get update
    # Install Zsh and set it as default shell
    sudo apt-get install zsh -y
    sudo usermod -s /usr/bin/zsh $(whoami)

fi

echo This script will create a hard link from the vimrc and tmux files in this directory to ~/.vimrc and ~/.tmux.conf, deleting the old ones. Skip? [y/n]
read response
if [ $response == n ]
then
    echo Creating hard link with vimrc and tmux
    # Hard link ensures that there will be no differences between system and repo files. They will be up to date with eachother always (same file).
    rm ~/.vimrc
    rm ~/.tmux.conf
    # Create hardlink from these files to filesystem ones
    ln vimrc ~/.vimrc
    ln tmux.conf ~/.tmux.conf 
fi

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Vundle, a Vim plugin manager
# Broken, apparently
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


