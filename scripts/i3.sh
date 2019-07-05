#!/bin/bash

packages="i3 lxappearance thunar compton i3blocks feh shutter blueman rofi arandr conky-all w3m jshon"

echo "Installing required packages for i3"
sudo apt -y install $packages

echo "Create a user command to sync i3 config files"
sudo cp ~/Linux-Set-up/i3/backupi3config /usr/bin/

echo "Putting the configuration files in place"
rm ~/.config/i3/config
mkdir -p ~/.config/i3/
cp -r ~/Linux-Set-up/i3/config ~/.config/i3/config

echo "Installing the fonts-awesome"
rm -rvf ~/.fonts
mkdir ~/.fonts
cp -v ~/Linux-Set-up/fonts/*.ttf ~/.fonts/

echo "Copying i3-blocks configuration"
sudo rm ~/.i3blocks.conf
sudo ln -s ~/Linux-Set-up/i3/i3blocks.conf ~/.i3blocks.conf

echo "Copying rofi configuration"
sudo rm ~/.config/rofi/*
mkdir -p ~/.config/rofi/
sudo ln -s ~/Linux-Set-up/i3/rofi_config ~/.config/rofi/config.rasi

echo "Copying the compton configuration"
sudo rm ~/.compton.conf
sudo ln -s ~/Linux-Set-up/i3/compton.conf ~/.compton.conf

#echo "Material Theme"
#cd /tmp && wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz | tar xz
#cd materia-theme-master
#sudo ./install.sh

echo "Shadow Icons"
mkdir -p ~/.icons
cd ~/.icons
git clone https://github.com/rudrab/Shadow.git

echo "Putting in the .conkyrc files"
rm ~/.conkyrc
ln -s ~/Linux-Set-up/rc_files/conkyrc ~/.conkyrc

