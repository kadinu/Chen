#!/bin/bash

sudo sh -c 'echo "LANG=zh_CN.UTF-8" >> /etc/environment'
sudo sh -c 'echo "LC_ALL=zh_CN.UTF-8" >> /etc/environment'
sudo apt-get install -y xorg i3 sakura lightdm ttf-wqy-zenhei volumeicon-alsa fcitx-sunpinyin dbus-x11 xcompmgr feh conky-all
