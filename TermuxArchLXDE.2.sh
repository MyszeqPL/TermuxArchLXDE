#!/bin/bash
# Update the system
pacamn -Syyu
# Install neseceary packages
pacman -S zsh git sudo fakeroot base-devel binutils
# Create a user account
useradd -m -G wheel -s /bin/zsh antoni
passwd
passwd antoni
# Add antoni to sudoers
echo "antoni ALL=(ALL:ALL) ALL" >> visudo
su antoni
# Download and install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -rf yay
# Download and install lxde
sudo pacman -S lxde
