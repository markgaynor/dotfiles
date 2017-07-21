First, if necessary, install NVIDIA drivers:
```
sudo ubuntu-drivers devices
sudo apt-get install nvidia-[NUMBER] 
```

Uncomment/fill in sections if necessary for CUDA, CUDNN, Tensorflow, etc.

Then execute the script (from root):
```
sudo apt-get install git
git clone https://github.com/markgaynor/dotfiles
bash dotfiles/setup.sh

```
    

