First, if necessary, install NVIDIA drivers:
```
sudo ubuntu-drivers devices
sudo apt-get install nvidia-[NUMBER] 
```

Then execute the script (from root):
(First, if necessary, uncomment/fill in sections CUDA, CUDNN, Tensorflow, etc.)
```
sudo apt-get install git
git clone https://github.com/markgaynor/dotfiles
bash dotfiles/setup.sh

```
