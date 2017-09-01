```
./setup_vim.sh
cp screenrc ~/.screenrc
```

NVIDIA drivers:
```
sudo ubuntu-drivers devices
sudo apt-get install nvidia-[NUMBER] 
```

To setup an Ubuntu install execute ``setup_ubuntu.sh`` (from root):

(If necessary, uncomment sections for CUDA, CUDNN, Tensorflow, etc. or follow the relevant instructions)

```
sudo apt-get install git
git clone https://github.com/markgaynor/dotfiles
bash dotfiles/setup.sh

```
