# Installation


Clone repo


## VIM

### Update Submodules

VIM Pugins are stored as git submodules, so to update all plugins (or to config this repo for the first time):

```
git submodule update --init --recursive
```

Mainly here as I constantly forget the exact syntax of the command

#### coc.nvim
This plugin will need to be built.

### Link .vimrc and .vim
`ln -s $DOTFILES_LOCATION/.vim ~/.vim`
`ln -s $DOTFILES_LOCATION/.vimrc ~/.vimrc`




## NVM
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```


## ASDF
```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3
```




## EndeavourOS Config

### Arch packages

* `pacman -S picom`
* `pacman -S flameshot`
* `pacman -S libqalculate`
* `pacman -S ranger`
* `pacman -S sxiv`
* `yay -S autojump`
* `yay -S rofi-calc`

### Login Changes

Copy the background over before updating `/etc/lightdm/slick-greeter.conf`
```
sudo cp "$DOTFILES_LOCATION/backgrounds/login.png" /usr/share/endeavouros/backgrounds/login.png
```

### Link i3 and picom

` ln -s $DOTFILES_LOCATION/.i3-config ~/.config/i3/config`
` ln -s $DOTFILES_LOCATION/.picon-config ~/.config/picom.conf`
