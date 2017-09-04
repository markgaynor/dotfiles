#!/bin/bash

# Yum
echo "Installing Yum packages..."
sudo yum --enablerepo=cr update
sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/g/gtk-murrine-engine-0.98.2-10.el7.x86_64.rpm
sudo yum install autoconf automake gtk-murrine-engine libgtk-3-dev curses-devel mercurial paco lua lua-devel tcl tcl-devel ruby ruby-  devel
sudo yum -y update
sudo yum install python-setuptools python-setuptools-devel
sudo easy_install pip

# Arc-Theme
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install
