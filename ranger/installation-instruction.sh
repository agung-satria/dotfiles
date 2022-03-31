#!/bin/bash
#Purpose: 
#Version: 
#Created Date:  Sel 11 Jan 2022 10:51:01 WIB
#Modified Date: 
#Author: Agung Satria
# START #
sudo apt install pip
sudo pip install ranger-fm
sudo pip install ueberzug
sudo apt install libimage-exiftool-perl feh zathura trash-cli

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

git clone https://github.com/mwh/dragon
sudo apt-get install libgtk-3-dev
make && sudo make install
cd dragon
sudo cp dragon /usr/bin

cp ./commands.py ~/.config/ranger
cp ./commands_full.py ~/.config/ranger
cp ./scope.sh ~/.config/ranger
chmod +x ./scope.sh

mkdir ~/.config/ranger/colorschemes
cp ./colorschemes/colorful.py ~/.config/ranger/colorschemes
echo "more colorscheme :"
echo "https://gitlab.com/agstr/dotfiles/-/blob/master/home-agung/.config/ranger/colorschemes/"
echo "Done"
# END #
