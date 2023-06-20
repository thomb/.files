echo "Starting bootstrapping..."
GITHUB_LOCATION="$HOME/code"
DOTFILES_LOCATION="$GITHUB_LOCATION/.files"

# Clone .tmux.conf
echo "Cloning .tmux.conf..."
git clone https://github.com/gpakosz/.tmux.git  $HOME/$GITHUB_LOCATION/.tmux
ln -s -f $GITHUB_LOCATION/.tmux/.tmux.conf

# Clone prettyping
echo "Cloning prettyping..."
git clone https://github.com/denilsonsa/prettyping.git $HOME/$GITHUB_LOCATION/prettyping
chmod +x $HOME/$GITHUB_LOCATION/prettyping/prettyping

# Clone thomb/dotfiles
echo "Configuring Environment for trbaxter..."
[[ ! -d $HOME/$GITHUB_LOCATION ]] && mkdir $HOME/$GITHUB_LOCATION

[[ ! -d $HOME/$DOTFILES_LOCATION ]] && mkdir "$HOME/$DOTFILES_LOCATION"
git clone https://github.com/thomb/.files.git "$HOME/$DOTFILES_LOCATION"
pushd $DOTFILES_LOCATION
git submodule update --init --recursive
popd



echo "Creating folder structure..."
[[ ! -d "$HOME/.work_bash" ]] && ln -s $DOTFILES_LOCATION/work_bash $HOME/.work_bash
[[ ! -d "$HOME/.trbaxter" ]] && ln -s $DOTFILES_LOCATION/trbaxter $HOME/.trbaxter
[[ ! -d "$HOME/.vim" ]] && ln -s $DOTFILES_LOCATION/.vim $HOME/.vim
[[ ! -d "$HOME/.vimrc" ]] && ln -s $DOTFILES_LOCATION/.vimrc $HOME/.vimrc
[[ ! -d "$HOME/.tmux.conf.local" ]] && ln -s $DOTFILES_LOCATION/.tmux.conf $HOME/.tmux.conf.local

echo "Creating .bash_profile..."
if [[ ! -d $HOME/.bash_profile ]]; then 
	cat > $HOME/.bash_profile << EOL

export LOCAL_GITHUB="$HOME/code"
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
. "$HOME/.asdf/asdf.sh"

if [ -f $HOME/.trbaxter/main.bash ]; then
	source $HOME/.trbaxter/main.bash
fi

if [ -f $HOME/.work_bash/main.bash ]; then
	source $HOME/.work_bash/main.bash
fi

[ -f /usr/share/autojump/autojump.sh ] && . /usr/share/autojump/autojump.sh

EOL
fi

echo "Bootstrapping complete!"
