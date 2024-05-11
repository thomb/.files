GITHUB_LOCATION="$HOME/code"
DOTFILES_LOCATION="$GITHUB_LOCATION/.files"
ARCH_CONFIG_LOCATION="$HOME/.config"

[[ ! -d "$HOME/.alacritty.yml" ]] && ln -s "$DOTFILES_LOCATION/.alacritty.yml" "$HOME/."
[[ ! -d "$HOME/.vim" ]] && ln -s "$DOTFILES_LOCATION/.vim" "$HOME/."
[[ ! -d "$HOME/.vimrc" ]] && ln -s "$DOTFILES_LOCATION/.vimrc" "$HOME/."
[[ ! -d "$HOME/.tmux.config" ]] && ln -s "$DOTFILES_LOCATION/tmux-config/.tmux.config" "$HOME/."
[[ ! -d "$HOME/.tmux.config.local" ]] && ln -s "$DOTFILES_LOCATION/tmux-config/.tmux.config.local" "$HOME/."
if [[ "$ARCH_CONFIG_LOCATION" &&  "$ARCH_CONFIG_LOCATION/i3" ]]; then
  [[ -d "$ARCH_CONFIG_LOCATION/i3/config" ]] && rm "$ARCH_CONFIG_LOCATION/i3/config"
  ln -s "$DOTFILES_LOCATION/.i3-config" "$ARCH_CONFIG_LOCATION/i3/config"
fi
