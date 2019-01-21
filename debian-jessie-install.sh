#!/bin/bash

sudo sh -c 'echo "LANG=zh_CN.UTF-8" >> /etc/environment'
sudo sh -c 'echo "LC_ALL=zh_CN.UTF-8" >> /etc/environment'

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo touch /etc/apt/sources.list
sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/debian/ jessie main contrib non-free" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb http://security.debian.org/debian-security jessie/updates main contrib non-free" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/debian/ jessie-updates main contrib non-free" >> /etc/apt/sources.list'

sudo apt-get update

sudo apt-get install -y git vim ctags cscope screenfetch
git clone http://github.com/kadinu/Chen.git
cp -R ./Chen/.config ~
cp -R ./Chen/.vim ~
cp ./Chen/.vimrc ~
rm -rf ./Chen
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
