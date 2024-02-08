#!/bin/bash
pkg up
pkg in x11-repo proot-distro
pkg in  termux-x11-nightly
proot-distro install archlinux
proot-distro rename archlinux arch
proot-distro reset arch
curl -LO "https://raw.githubusercontent.com/MyszeqPL/TermuxArchLXDE/main/LXDE.sh"
proot-distro login arch -c "curl -LO 'https://raw.githubusercontent.com/MyszeqPL/TermuxArchLXDE/main/TermuxArchLXDE.2.sh' && sh TermuxArchLXDE.2.sh"
