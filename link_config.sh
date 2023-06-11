GITHUB_LOCATION="$HOME/code"
DOTFILES_LOCATION="$GITHUB_LOCATION/.files"

ln -s "$DOTFILES_LOCATION/.vim" "$HOME/."
ln -s "$DOTFILES_LOCATION/.vimrc" "$HOME/."
ln -s "$DOTFILES_LOCATION/tmux-config/.tmux.config" "$HOME/."
ln -s "$DOTFILES_LOCATION/tmux-config/.tmux.config.local" "$HOME/."
[[ ! -d "$HOME/.work_bash" ]] && ln -s $DOTFILES_LOCATION/work_bash "$HOME/.work_bash"
[[ ! -d "$HOME/.trbaxter" ]] && ln -s $DOTFILES_LOCATION/trbaxter "$HOME/.trbaxter"

