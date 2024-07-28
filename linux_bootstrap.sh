echo "Starting bootstrapping..."
GITHUB_LOCATION="$HOME/code"
DOTFILES_LOCATION="$GITHUB_LOCATION/.files"


# Clone thomb/dotfiles
echo "Configuring Environment for thomb..."
[[ ! -d $HOME/$GITHUB_LOCATION ]] && mkdir $HOME/$GITHUB_LOCATION

[[ ! -d $HOME/$DOTFILES_LOCATION ]] && mkdir "$HOME/$DOTFILES_LOCATION"
git clone https://github.com/thomb/.files.git "$HOME/$DOTFILES_LOCATION"
pushd $DOTFILES_LOCATION
git submodule update --init --recursive
popd



echo "Creating folder structure..."
[[ ! -d "$HOME/.work_bash" ]] && ln -s $DOTFILES_LOCATION/work_bash $HOME/.work_bash
[[ ! -d "$HOME/.vim" ]] && ln -s $DOTFILES_LOCATION/.vim $HOME/.vim
[[ ! -d "$HOME/.vimrc" ]] && ln -s $DOTFILES_LOCATION/.vimrc $HOME/.vimrc
[[ ! -d "$HOME/.tmux.conf.local" ]] && ln -s $DOTFILES_LOCATION/.tmux.conf $HOME/.tmux.conf.local

echo "Creating .bash_profile..."
if [[ ! -d $HOME/.bash_profile ]]; then 
	cat > $HOME/.bash_profile << EOL

export LOCAL_GITHUB="$HOME/code"
export DOTFILES_LOCATION="$LOCAL_GITHUB/.files"
export NVM_DIR="$HOME/.nvm"

[[ -f $DOTFILES_LOCATION/thomb/main.bash ]] && source $DOTFILES_LOCATION/thomb/main.bash
# This is where any contract specific bash scripts would live
[[ -f $HOME/.work_bash/main.bash ]] && $HOME/.work_bash/main.bash

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
[[ -s "$HOME/.asdf/asdf.sh" ]] && . "$HOME/.asdf/asdf.sh"
[[ -s "$HOME/.asdf/completions/asdf.bash" ]] && . "$HOME/.asdf/completions/asdf.bash"



EOL
fi


echo "Bootstrapping complete!"
