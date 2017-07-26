First, if necessary, install NVIDIA drivers:
```
sudo ubuntu-drivers devices
sudo apt-get install nvidia-[NUMBER] 
```

Then execute the script (from root):

(If necessary, uncomment sections for CUDA, CUDNN, Tensorflow, etc. or follow the relevant instructions)

```
sudo apt-get install git
git clone https://github.com/markgaynor/dotfiles
bash dotfiles/setup.sh

```
