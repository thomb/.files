echo "Starting bootstrapping..."
GITHUB_LOCATION="~/code"
DOTFILES_LOCATION="$GITHUB_LOCATION/.files"

# Clone .tmux.conf
echo "Cloning .tmux.conf..."
git clone https://github.com/gpakosz/.tmux.git  ~/$GITHUB_LOCATION/.tmux
ln -s -f $GITHUB_LOCATION/.tmux/.tmux.conf

# Clone prettyping
echo "Cloning prettyping..."
git clone https://github.com/denilsonsa/prettyping.git ~/$GITHUB_LOCATION/prettyping
chmod +x ~/$GITHUB_LOCATION/prettyping/prettyping

# Clone thomb/dotfiles
echo "Configuring Environment for trbaxter..."
[[ ! -d ~/$GITHUB_LOCATION ]] && mkdir ~/$GITHUB_LOCATION

[[ ! -d ~/$DOTFILES_LOCATION ]] && mkdir ~/$DOTFILES_LOCATION
git clone https://github.com/thomb/.files.git ~/$DOTFILES_LOCATION
pushd $DOTFILES_LOCATION
git submodule update --init --recursive
popd



echo "Creating folder structure..."
[[ ! -d ~/.work_bash ]] && ln -s $DOTFILES_LOCATION/work_bash ~/.work_bash
[[ ! -d ~/.trbaxter ]] && ln -s $DOTFILES_LOCATION/trbaxter ~/.trbaxter
[[ ! -d ~/.vim ]] && ln -s $DOTFILES_LOCATION/.vim ~/.vim
[[ ! -d ~/.vimrc ]] && ln -s $DOTFILES_LOCATION/.vimrc ~/.vimrc
[[ ! -d ~/.tmux.conf.local ]] && ln -s $DOTFILES_LOCATION/.tmux.conf ~/.tmux.conf.local

echo "Creating .bash_profile..."
if [[ ! -d ~/.bash_profile ]]; then 
	cat > ~/.bash_profile << EOL

export LOCAL_GITHUB="$HOME/code"
if [ -f ~/.trbaxter/main.bash ]; then
	source ~/.trbaxter/main.bash
fi

if [ -f ~/.work_bash/main.bash ]; then
	source ~/.work_bash/main.bash
fi

[ -f /usr/share/autojump/autojump.sh ] && . /usr/share/autojump/autojump.sh

EOL
fi

echo "Bootstrapping complete!"
