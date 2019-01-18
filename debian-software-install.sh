#!/bin/bash

sudo apt-get install -y xorg i3 zsh sakura lightdm ttf-wqy-zenhei volumeicon-alsa fcitx-sunpinyin dbus-x11 xcompmgr feh conky-all

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' ~/.zshrc
