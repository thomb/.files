export EDITOR=vim
export VISUAL=vim

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

branch_icon() {
  echo "ᛦ"
}


BRANCH_ICON_TWO="𝞇"

DEFAULT_COLOR="\e[0m"
TEAL="\e[38;5;159m"
RED="\e[91m"
BOLD_LIGHT_GREEN="\e[38;5;159m"
ITALIC_DARK_GREEN=""




export PATH="/usr/local/bin:$PATH" 
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"



PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " $TEAL($BRANCH_ICON_TWO$DEFAULT_COLOR $RED%s$DEFAULT_COLOR)")';
export CORE_PS1='\n[\[$(tput sgr0)\]\[\033[38;5;220m\]\D{%F %T}$(tput sgr0)\]\[\033[38;5;15m\]] ${PS1_CMD1} $(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n[\[$(tput sgr0)\]\[\033[38;5;200m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;171m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\]:\[\033[38;5;82m\]\w\[$(tput sgr0)\]]\\$ '
export CONTRACT_PS1='\n[\[\e[38;5;159m\]\D{%Y-%m-%d %H:%M:%S}\[\e[0m\]]${PS1_CMD1}\n[\[\e[38;5;192;1m\]\u\[\e[0m\]@\[\e[92;3m\]\H\[\e[0m\]:\[\e[95m\]\w\[\e[0m\]]\$ '
export LOCAL_PS1='[\[\e[38;5;159m\]\D{%m/%d/%y %H:%M:%S}\[\e[0m\]]\[\e[91m\]${PS1_CMD1}\n\[\e[0m\][\[\e[38;5;134;1m\]\u\[\e[0m\]@\[\e[38;5;135m\]\H\[\e[0m\]:\[\e[95m\]\w\[\e[0m\]]\$ '

# export PS1='\n[\[\e[38;5;159m\]\D{%m/%d/%y %H:%M:%S}\[\e[0m\]] $(parse_git_branch) \n[\[\e[38;5;192;1m\]\u\[\e[0m\]@\[\e[92m\]\H\[\e[0m\]:\[\e[95m\]\w\[\e[0m\]]\$ '

PS1=$LOCAL_PS1
export GOPATH=$HOME/go


# Personal Plugin Related 
[ -f "$CUSTOM_SCRIPT_LOCATION/fzf.bash" ] && source "$CUSTOM_SCRIPT_LOCATION/fzf.bash"
[ -f "$CUSTOM_SCRIPT_LOCATION/misc.bash" ] && source "$CUSTOM_SCRIPT_LOCATION/misc.bash"



allow_ufw_ssh () {
  sudo ufw allow from $1 to any port 22 proto tcp 
}

