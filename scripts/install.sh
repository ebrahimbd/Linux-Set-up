#!/bin/bash

if [ "$1" == "help" ] || [ $# -ne 1 ];
then
    echo "usage ./install.sh <Option>"
    echo "Options           Description"
    echo "help  :       to see this print"
    echo "vim   :       to install the vim settings only"
    echo "update:       to update the installed plugin"
    echo "ycm   :       to install clang completer for ycm"
    echo "git   :       to install the git settings only"
    echo "bash  :       to install the bash settings only"
    echo "conky :       to install the conky settings only"
    echo "packs :       to install my personal packages"
    echo "all   :       for the complete setup"
    echo "i3    :       to install the i3 setup"
    echo "clean :       to remove the complete setup"
fi

uservar=$(whoami)
packages="vim exuberant-ctags cscope build-essential cmake python3-dev python2.7-dev ack-grep silversearcher-ag curl"

echo "Installation being carried out for user $uservar only"

if [ "$1" == "clean" ];
then
    sudo rm ~/.vimrc
    sudo rm ~/.ackrc
    sudo rm -rvf ~/.vim
    sudo rm ~/.gitconfig
    sudo rm ~/.gitignore
    sudo rm ~/.bashrc
    rm ~/.conkyrc
    sudo apt-get -y remove $packages
    sudo apt-get -y autoremove
    sudo apt-get -y autoclean
    echo "When you are cleaning, why do you need me ? :'("
fi

if [ "$1" == "vim" ] || [ "$1" == "all" ] || [ $# -ne 1 ];
then
    #TODO : Need to seperate depencies according to the distro.
    echo "Installing all the dependencies "
    sudo apt-get -y install $packages

    mkdir -p ~/.vim/autoload

    # Vim set up
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    echo "Replacing the .vimrc files "
    sudo rm ~/.vimrc
    ln -s ~/Linux-Set-up/rc_files/vimrc ~/.vimrc

    echo "Installing all the plugins "
    vim --cmd silent! +PlugInstall +qal

    mkdir ~/.vim/undo
    sudo chown $uservar ~/.vim/undo

    echo "Putting in the .ackrc files "
    sudo rm ~/.ackrc
    ln -s ~/Linux-Set-up/rc_files/ackrc ~/.ackrc

    echo "Copying Ultisnips"
    sudo rm ~/.vim/my-snippets/c.snippets
    sudo rm ~/.vim/my-snippets/cpp.snippets
    mkdir ~/.vim/my-snippets
    ln -s ~/Linux-Set-up/ultisnips/c.snippets ~/.vim/my-snippets/c.snippets
    ln -s ~/Linux-Set-up/ultisnips/cpp.snippets ~/.vim/my-snippets/cpp.snippets

    echo "Installing the C syntax file "
    sudo rm ~/.vim/after/syntax/c.vim
    mkdir -p ~/.vim/after/syntax/
    sudo chown $uservar ~/.vim/after
    sudo chown $uservar ~/.vim/after/syntax
    ln -s ~/Linux-Set-up/syntax/c.vim ~/.vim/after/syntax/c.vim

    echo "Setting up the colorschemes "
    sudo rm ~/.vim/plugged/vim-colorschemes/colors/heroku-terminal.vim
    sudo ln -s ~/Linux-Set-up/colors/heroku-terminal.vim ~/.vim/plugged/vim-colorschemes/colors/heroku-terminal.vim
    sudo rm ~/.vim/plugged/vim-airline-themes/autoload/airline/themes/badwolf.vim
    sudo ln -s ~/Linux-Set-up/colors/badwolf.vim ~/.vim/plugged/vim-airline-themes/autoload/airline/themes/badwolf.vim

    echo "Resetting .viminfo to remove ownership of root"
    sudo chown $uservar ~/.viminfo
fi

if [ "$1" == "update" ];
then
    echo "Updating the installed plugin"
    vim +PlugUpdate +qal
    vim +PlugUpgrade +qal
fi

if [ "$1" == "git" ] || [ "$1" == "all" ];
then
    echo "Adding the git config"
    sudo rm ~/.gitconfig
    ln -s ~/Linux-Set-up/rc_files/gitconfig ~/.gitconfig
    sudo rm ~/.gitignore
    ln -s ~/Linux-Set-up/rc_files/gitignore ~/.gitignore
fi

if [ "$1" == "bash" ] || [ "$1" == "all" ];
then
    echo "Adding the bash config"
    sudo rm ~/.bashrc
    ln -s ~/Linux-Set-up/rc_files/bashrc ~/.bashrc
fi


if [ "$1" == "packs" ] || [ "$1" == "all" ];
then
    sudo apt-get -y install numlockx konsole meld
fi

if [ "$1" == "i3" ];
then
    ./scripts/i3.sh
fi

echo "*************Linux Set Up is complete for $uservar.Have fun :)*****************"
