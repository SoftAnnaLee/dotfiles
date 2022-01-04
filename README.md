```
                    ▄▆▄▝
                   ▐███▋ ▄▆▄▝
                    ▀█▀ ▐███▋
               ▁▂▄▅▅▅▄▄▂ ▀█▀▄▆▄▝
              ▟██████████▄ ▐███▋
             ▐████████████▙ ▀▄▆▄▝
              ▝▀▜██████████ ▐███▋
       _         ▐████████▛  ▀█▀        ____                      68b
      dM.         ▜██████▛              `MM'                      Y89
     ,MMb          ▔▀▀▀▀▔                MM                        9
     d'YM.   ___  __  ___  __      ___    MM        ____     ____  /   ____
    ,P `Mb   `MM 6MMb `MM 6MMb   6MMMMb   MM       6MMMMb   6MMMMb    6MMMMb\
    d'  YM.   MMM9 `Mb MMM9 `Mb 8M'  `Mb  MM      6M'  `Mb 6M'  `Mb  MM'    `
   ,P   `Mb   MM'   MM MM'   MM     ,oMM  MM      MM    MM MM    MM  YM.
   d'    YM.  MM    MM MM    MM ,6MM9'MM  MM      MMMMMMMM MMMMMMMM   YMMMMb
  ,MMMMMMMMb  MM    MM MM    MM MM'   MM  MM      MM       MM             `Mb
  d'      YM. MM    MM MM    MM MM.  ,MM  MM    / YM    d9 YM    d9  L    ,MM
_dM_     _dMM_MM_  _MM_MM_  _MM_`YMMM9'Yb_MMMMMMM  YMMMM9   YMMMM9   MYMMMM9
               ___                     __    ___                   
               `MM                    69M68b `MM                   
                MM            /      6M' Y89  MM                   
            ____MM   _____   /M     _MM_____  MM   ____     ____   
           6MMMMMM  6MMMMMb /MMMMM  MMMMM`MM  MM  6MMMMb   6MMMMb\ 
          6M'  `MM 6M'   `Mb MM      MM   MM  MM 6M'  `Mb MM'    ` 
          MM    MM MM     MM MM      MM   MM  MM MM    MM YM.      
          MM    MM MM     MM MM      MM   MM  MM MMMMMMMM  YMMMMb  
          MM    MM MM     MM MM      MM   MM  MM MM            `Mb 
          YM.  ,MM YM.   ,M9 YM.  ,  MM   MM  MM YM    d9 L    ,MM 
           YMMMMMM_ YMMMMM9   YMMM9 _MM_ _MM__MM_ YMMMM9  MYMMMM9  
```
# My Dotfiles
### powered by [chezmoi](https://chezmoi.io)

## Overview
These are my dotfiles that I use to help setup and keep setting consistent across my devices.

I work in Windows with WSL2 but I also have a bare metal machine that runs Ubuntu, so my settings have been automated to install certain utilities only if they don't detect WSL2.

Anyways here is a summary of the programs I have set up so far;

### Shell
- [zsh](https://zsh.sourceforge.io/)
- [oh-my-zsh](https://zsh.sourceforge.io/) 
### Terminal
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Windows Terminal](https://github.com/Microsoft/Terminal)
### Applications
- [chezmoi](https://chezmoi.io): Dotfiles manager
- [Neovim](http://neovim.io/): Text editor
- [Neofetch](https://github.com/dylanaraps/neofetch): System information tool
- [Ranger](https://github.com/ranger/ranger): TUI file manager

## Downloading
You can download chezmoi and update to this repo by running these command in a terminal;

bitwarden-cli is a prerequisite so that needs to be installed first;
```
sudo apt install -y unzip
wget --no-check-certificate https://github.com/bitwarden/cli/releases/download/v1.20.0/bw-linux-1.20.0.zip
unzip bw-linux-1.20.0.zip -d $HOME/bin/
chmod +x $HOME/bin/bw
rm bw-linux-1.20.0.zip
export PATH="$HOME/bin/:$PATH"
bw login
export BW_SESSION="<SESSION-ID>"
```
Then finally run this to automate installation;
```
pushd ~
sh -c "$(wget -qO- git.io/chezmoi)" -- init --apply SoftAnnaLee
popd
```
