#!/bin/bash

# Dotfiles
echo "Linking dotfiles in ~/dotfiles to root..."
touch .bashrc
touch .vimrc
bash ~/dotfiles/makesymlinks.sh

# APT
echo "Installing APT packages..."
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/icons
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo apt-get update
sudo apt-get -y install vim-gtk3 git python3-pip build-essential cmake pkg-config \
    libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev \
    libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk-3-dev libatlas-base-dev gfortran \
    google-chrome-stable  unity-tweak-tool fluxgui arc-theme arc-icons vlc ttf-mscorefonts-installer \
    spotify-client 
sudo apt-get upgrade

# Python
echo "Configuring Python..."
pip3 install --upgrade pip
sudo pip3 install numpy scipy sklearn h5py pillow bokeh Cython imutils seaborn statsmodels jupyter

# System settings
echo "Configuring system settings..."
sudo update-pciids
xset mouse 2.0
dconf write /org/compiz/profiles/unity/plugins/unityshell/icon-size 36
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background secondary-color '#000000'
gsettings set org.gnome.desktop.background color-shading-type 'solid'
gsettings set org.gnome.desktop.background picture-uri ''
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
gsettings set org.gnome.desktop.interface icon-theme 'Arc-Icons'
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
gsettings set com.canonical.indicator.sound interested-media-players "['spotify.desktop']"
gsettings set com.canonical.indicator.sound preferred-media-players "['spotify.desktop']"

#echo "Configuring GPU..."
# NVIDIA drivers
#sudo ubuntu-drivers devices
#sudo apt-get install nvidia-[NUMBER] 

# CUDA
#sudo apt-get install freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libgl1-mesa-glx libglu1-mesa libglu1-mesa-dev
#sudo apt-get install nvidia-cuda-toolkit
#sudo apt-get install libcupti-dev

# CUDNN
#https://developer.nvidia.com/cudnn

# Tensorflow
#sudo pip3 install tensorflow-gpu

# OpenCV
#echo "Installing OpenCV..."
#wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.1.0.zip
#wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.1.0.zip
#unzip opencv.zip
#rm opencv.zip
#unzip opencv_contrib.zip
#rm opencv_contrib.zip
#cd opencv-3.1.0/
#mkdir build
#cd build
#cmake -D CMAKE_BUILD_TYPE=RELEASE \
#    -D CMAKE_INSTALL_PREFIX=/usr/local \
#    -D INSTALL_PYTHON_EXAMPLES=ON \
#    -D INSTALL_C_EXAMPLES=OFF \
#    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.1.0/modules \
#    -D PYTHON_EXECUTABLE=/usr/bin/python3 \
#    -D BUILD_EXAMPLES=ON ..
#make -j4
#sudo make install
#sudo ldconfig

echo "Done!"
