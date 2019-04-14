#!/bin/bash

#Installing required packages
sudo apt install i3 lxappearance thunar compton i3blocks feh

#Putting the configuration files in place
rm ~/.config/i3/config
cp -r ~/Linux-Set-up/i3/config ~/.config/i3/config

#Installing the fonts-awesome
mkdir ~/.fonts
cp ~/Linux-Set-up/fonts/*.ttf ~/.fonts/

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
