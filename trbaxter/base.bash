export EDITOR=vim
export VISUAL=vim

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


export PATH="/usr/local/bin:$PATH" 
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
# Skinny
# export PS1='\n[\[$(tput sgr0)\]\[\033[38;5;220m\]\D{%F %T}$(tput sgr0)\]\[\033[38;5;15m\]] $(parse_git_branch) $(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n[\[$(tput sgr0)\]\[\033[38;5;200m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;171m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\]:\[\033[38;5;82m\]\w\[$(tput sgr0)\]]\\$ '
export PS1='\n[\[$(tput sgr0)\]\[\033[38;5;220m\]\D{%F %T}$(tput sgr0)\]\[\033[38;5;15m\]] $(parse_git_branch) $(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n[\[$(tput sgr0)\]\[\033[38;5;200m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;171m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\]:\[\033[38;5;82m\]\w\[$(tput sgr0)\]]\\$ '
export GOPATH=$HOME/go


# Personal Plugin Related 
[ -f "$CUSTOM_SCRIPT_LOCATION/fzf.bash" ] && source "$CUSTOM_SCRIPT_LOCATION/fzf.bash"
[ -f "$CUSTOM_SCRIPT_LOCATION/misc.bash" ] && source "$CUSTOM_SCRIPT_LOCATION/misc.bash"



allow_ufw_ssh () {
  sudo ufw allow from $1 to any port 22 proto tcp 
}

