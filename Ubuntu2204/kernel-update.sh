#! /bin/bash
echo -n "Old kernel verion is: " >> kernel.txt
uname -r >> kernel.txt
wget -c https://kernel.ubuntu.com/mainline/v6.7.9/amd64/linux-headers-6.7.9-060709-generic_6.7.9-060709.202403061535_amd64.deb
wget -c https://kernel.ubuntu.com/mainline/v6.7.9/amd64/linux-headers-6.7.9-060709_6.7.9-060709.202403061535_all.deb
wget -c https://kernel.ubuntu.com/mainline/v6.7.9/amd64/linux-image-unsigned-6.7.9-060709-generic_6.7.9-060709.202403061535_amd64.deb
wget -c https://kernel.ubuntu.com/mainline/v6.7.9/amd64/linux-modules-6.7.9-060709-generic_6.7.9-060709.202403061535_amd64.deb
sudo dpkg -i linux-headers* linux-image* linux-modules*
sudo apt -f install
sudo rm linux-*
sudo update-grub