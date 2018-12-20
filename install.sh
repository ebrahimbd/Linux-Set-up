#!/bin/bash

if [ $# -ne 1 ]; then
    echo $0: usage: sudo ./install.sh username
    exit 1
fi

echo "*************Going to install the Shreel's set up***************** "
echo "Installing Vundle "
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#TODO : Need to seperate depencies according to the distro.
echo "Installing all the dependencies "
sudo apt install fonts-powerline exuberant-ctags cscope build-essential cmake3 cmake python3-dev ack-grep

echo "Replacing the .vimrc files "
rm ~/.vimrc
ln ./rc_files/vimrc ~/.vimrc

rm -rvf ~/.vim/undo 
mkdir ~/.vim/undo
chown $1 ~/.vim/undo

echo "Installing all the plugins "
vim +PluginInstall +qal

echo "Putting in the .ackrc files "
rm ~/.ackrc
ln ./rc_files/ackrc ~/.ackrc

echo "Copying Ultisnips"
rm ~/.vim/my-snippets/c.snippets
mkdir ~/.vim/my-snippets
chown $1 ~/.vim/my-snippets
ln ./ultisnips/c.snippets ~/.vim/my-snippets/c.snippets

echo "Installing the C syntax file "
rm ~/.vim/after/syntax/c.vim
mkdir -p ~/.vim/after/syntax/
chown $1 ~/.vim/after
chown $1 ~/.vim/after/syntax
ln ./syntax/c.vim ~/.vim/after/syntax/c.vim

echo "Setting up the colorschemes "
rm ~/.vim/bundle/vim-colorschemes/colors/heroku-terminal.vim
ln ./colors/heroku-terminal.vim ~/.vim/bundle/vim-colorschemes/colors/heroku-terminal.vim
rm ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/badwolf.vim
ln ./colors/badwolf.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/badwolf.vim

echo "Resetting .viminfo to remove ownership of root"
#rm ~/.viminfo
chown $1 ~/.viminfo

#echo "Adding the git config"
#ln ./rc_files/gitconfig ~/.gitconfig

echo "Installing YCM engine and updating it. "
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

echo "*************Shreel's set up is complete ***************** "
