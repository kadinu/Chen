#!/bin/bash

sudo echo "LANG=zh_CN.UTF-8" >> /etc/environment
sudo echo "LC_ALL=zh_CN.UTF-8" >> /etc/environment

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo touch /etc/apt/sources.list
sudo echo "deb http://mirrors.ustc.edu.cn/debian/ stretch main contrib non-free" >> /etc/apt/sources.list
sudo echo "# deb-src http://mirrors.ustc.edu.cn/debian/ stretch main contrib non-free" /etc/apt/sources.list
sudo echo "deb http://security.debian.org/debian-security stretch/updates main contrib non-free" /etc/apt/sources.list
sudo echo "# deb-src http://security.debian.org/debian-security stretch/updates main contrib non-free" /etc/apt/sources.list
sudo echo "deb http://mirrors.ustc.edu.cn/debian/ stretch-updates main contrib non-free" /etc/apt/sources.list
sudo echo "# deb-src http://mirrors.ustc.edu.cn/debian/ stretch-updates main contrib non-free" /etc/apt/sources.list
sudo echo "# deb http://mirrors.ustc.edu.cn/debian stretch-backports main contrib non-free" /etc/apt/sources.list
sudo echo "# deb-src http://mirrors.ustc.edu.cn/debian stretch-backports main contrib non-free" /etc/apt/sources.list

sudo apt-get update

sudo apt-get install git
git clone http://github.com/kadinu/Chen.git
cp -R ~/Chen/.config ~
cp -R ~/Chen/.vim ~

sudo apt-get install xorg i3 zsh sakura lightdm ttf-wqy-zenhei vim ctags cscope volumeicon-alsa fcitx-sunpinyin dbus-x11 xcompmgr feh conky-all
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
