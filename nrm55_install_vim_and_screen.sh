#!/bin/bash

echo "Running apt-get install for git, vim, screen"
sudo apt-get install -y git vim screen
echo "Done running apt-get"
echo ""

echo "Cloning screenrc script in"
git clone https://github.com/nbla/screenrc.git
echo "Creating sym link to screenrc/.screenrc in home dir"
ln -s screenrc/.screenrc ~/.screenrc

echo "Cloning vimrc script in"
git clone https://github.com/nrm55/vimrc.git
echo "Creating sym link to vimrc/.vimrc in home dir"
ln -s vimrc/.vimrc ~/.vimrc

echo "Creating ~/tmp dir for vim's swap files"
mkdir ~/tmp

echo "Adding the screenx alias to .bashrc"
echo "alias screenx='screen -RaAd -S x'" >> ~/.bashrc
source ~/.bashrc

echo "Done done"
