#!/bin/bash
sudo git clone https://github.com/lazydao/speak_raspi_ip.git
sudo apt-get install -y mpg123
sudo rm -rf /var/speak_raspi_ip/
sudo mv speak_raspi_ip /var/
echo "/usr/bin/python /var/speak_raspi_ip/speak_ip.py &" | sudo tee -a /etc/rc.local
echo "install finished!"

# sudo vi /etc/rc.local 
# 将 exit 0 移至文件末尾
