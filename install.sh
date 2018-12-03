#!/bin/bash

echo "*************Going to install the Shreel's set up***************** "
echo "Installing Vundle "
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#TODO : Need to seperate depencies according to the distro.
echo "Installing all the dependencies "
sudo apt install fonts-powerline exuberant-ctags cscope build-essential cmake3 cmake python3-dev ack-grep

echo "Replacing the .vimrc files "
rm ~/.vimrc
ln ./rc_files/vimrc ~/.vimrc

echo "Installing all the plugins "
vim +PluginInstall +qal

echo "Putting in the .ackrc files "
rm ~/.ackrc
ln ./rc_files/ackrc ~/.ackrc

echo "Installing the C syntax file "
rm ~/.vim/after/syntax/c.vim
mkdir -p ~/.vim/after/syntax/
ln ./syntax/c.vim ~/.vim/after/syntax/c.vim

echo "Setting up the colorschemes "
rm ~/.vim/bundle/vim-colorschemes/colors/heroku-terminal.vim
ln ./colors/heroku-terminal.vim ~/.vim/bundle/vim-colorschemes/colors/heroku-terminal.vim
rm ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/badwolf.vim
ln ./colors/badwolf.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/badwolf.vim

echo "Resetting .viminfo to remove ownership of root"
rm ~/.viminfo

#echo "Adding the git config"
#ln ./rc_files/gitconfig ~/.gitconfig

echo "Installing YCM engine and updating it. "
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

echo "*************Shreel's set up is complete ***************** "
