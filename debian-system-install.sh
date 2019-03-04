#!/bin/bash

# debian 8 jessie sources list
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo touch /etc/apt/sources.list
sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/debian/ jessie main contrib non-free" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb http://security.debian.org/debian-security jessie/updates main contrib non-free" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/debian/ jessie-updates main contrib non-free" >> /etc/apt/sources.list'

# debian 9 stretch sources list
#sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo touch /etc/apt/sources.list
#sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/debian/ stretch main contrib non-free" >> /etc/apt/sources.list'
#sudo sh -c 'echo "deb http://security.debian.org/debian-security stretch/updates main contrib non-free" >> /etc/apt/sources.list'
#sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/debian/ stretch-updates main contrib non-free" >> /etc/apt/sources.list'

# raspbian 9 stretch sources list
#sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo touch /etc/apt/sources.list
#sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/raspbian/raspbian/ stretch main contrib non-free rpi" >> /etc/apt/sources.list'
#sudo sh -c 'echo "# deb-src http://mirrors.ustc.edu.cn/raspbian/raspbian/ stretch main contrib non-free rpi" >> /etc/apt/sources.list'
#sudo mv /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
#sudo touch /etc/apt/sources.list.d/raspi.list
#sudo sh -c 'echo "deb http://mirrors.ustc.edu.cn/archive.raspberrypi.org/debian/ stretch main ui" >> /etc/apt/sources.list.d/raspi.list'
#sudo sh -c 'echo "# deb-src http://mirrors.ustc.edu.cn/archive.raspberrypi.org/debian/ stretch main ui" >> /etc/apt/sources.list.d/raspi.list'

sudo apt-get update

sudo apt-get install -y git vim ctags cscope screenfetch
git clone http://github.com/kadinu/Chen.git
cp -R ./Chen/.config ~
cp -R ./Chen/.vim ~
cp ./Chen/.vimrc ~
# raspbian 9 stretch report ip
#sudo mv ./Chen/speak_ip.py /var/
#echo "/usr/bin/python /var/speak_ip.py &" | sudo tee -a /etc/rc.local
rm -rf ./Chen
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
