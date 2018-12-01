#!/bin/bash

echo "*************Going to install the Shreel's set up*****************\n"
echo "Installing Vundle\n"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#TODO : Need to seperate depencies according to the distro.
echo "Installing all the dependencies\n"
sudo apt install fonts-powerline exuberant-ctags cscope build-essential cmake3 cmake python3-dev ack-grep


echo "Replacing the .vimrc files\n"
rm ~/.vimrc
ln ./rc_files/vimrc ~/.vimrc

echo "Installing all the plugins\n"
vim +PluginClean +qal
vim +PluginInstall +qal

echo "Installing YCM engine and updating it.\n"
cd ~/.vim/bundle/YouCompleteMe
./install.py --all

echo "Putting in the .ackrc files\n"
ln ./rc_files/ackrc ~/.ackrc

echo "Installing the C syntax file\n"
ln ./syntax/c.vim ~/.vim/after/syntax/c.vim

echo "Setting up the colorschemes\n"
ln ./colors/heroku-terminal.vim ~/.vim/bundle/vim-colorschemes/colors/heroku-terminal.vim
ln ./colors/badwolf.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/badwolf.vim

echo "*************Shreel's set up is complete *****************\n"
