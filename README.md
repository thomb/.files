# Installation


Clone repo


## VIM

### Update Submodules

VIM Pugins are stored as git submodules, so to update all plugins (or to config this repo for the first time):

```
git submodule update --init --recursive
```

Mainly here as I constantly forget the exact syntax of the command

## Arch packages
* `pacman -S ranger`
* `pacman -S sxiv`
* `yay -S autojump`

## coc.nvim
This plugin will need to be built.




## NVM
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```


## ASDF
```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3
```


### Login Changes

Copy the background over before updating `/etc/lightdm/slick-greeter.conf`
```
sudo cp "$DOTFILES_LOCATION/backgrounds/login.png" /usr/share/endeavouros/backgrounds/login.png
```
