#!/bin/bash

#Installing required packages
sudo apt install i3 lxappearance thunar compton i3blocks feh shutter blueman rofi

#Create a user command to sync i3 config files
sudo cp ~/Linux-Set-up/i3/backupi3config /usr/bin/

#Putting the configuration files in place
rm ~/.config/i3/config
cp -r ~/Linux-Set-up/i3/config ~/.config/i3/config

#Installing the fonts-awesome
rm -rvf ~/.fonts
mkdir ~/.fonts
cp -v ~/Linux-Set-up/fonts/*.ttf ~/.fonts/

#Copying i3-blocks configuration
sudo rm ~/.i3blocks.conf
sudo ln -s ~/Linux-Set-up/i3/i3blocks.conf ~/.i3blocks.conf

#Copying the compton configuration
sudo rm ~/.compton.conf
sudo ln -s ~/Linux-Set-up/i3/compton.conf ~/.compton.conf

#Material Theme
cd /tmp && wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz | tar xz
cd materia-theme-master
sudo ./install.sh

#Shadow Icons
mkdir -p ~/.icons
cd ~/.icons
git clone https://github.com/rudrab/Shadow.git

#Open the lxappearance
lxappearance
