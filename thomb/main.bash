#!/usr/bin/env bash

# This will include _all_ of the scripts in this folder, this is provided for convenience
# but more often than not you will probably find yourself wanting to include only
# certain scripts, so ... you've been warned

export EDITOR="vim"
export TERMINAL=alacritty
TMUXINATOR_CONFIG_LOCATION="$HOME/.thomb/tmuxinator"
WEB_BASE="$HOME/thomb"
LOCAL_GITHUB="$HOME/code"
DOTFILES_LOCATION="$LOCAL_GITHUB/.files"
CUSTOM_SCRIPT_LOCATION="$DOTFILES_LOCATION/thomb"


[[ -s $DOTFILES_LOCATION/git-prompt.sh ]] && . "$DOTFILES_LOCATION/git-prompt.sh"
	source $CUSTOM_SCRIPT_LOCATION/base.bash;
# Include the basic environment
if [ -f $CUSTOM_SCRIPT_LOCATION/base.bash ]; then
	source $CUSTOM_SCRIPT_LOCATION/base.bash;
else
	echo "Cannot find: $CUSTOM_SCRIPT_LOCATION/base.bash";
fi

# Include all of the react  related scripts
if [ -f $CUSTOM_SCRIPT_LOCATION/react/main.bash ]; then
	source $CUSTOM_SCRIPT_LOCATION/react/main.bash;
else
	echo "Cannot find: $CUSTOM_SCRIPT_LOCATION/react/main.bash";
fi

# Include all of the jira related scripts
if [ -f $CUSTOM_SCRIPT_LOCATION/jira/main.bash ]; then
	source $CUSTOM_SCRIPT_LOCATION/jira/main.bash;
else
	echo "Cannot find: $CUSTOM_SCRIPT_LOCATION/jira/main.bash";
fi

# Include all of the docker related scripts
if [ -f $CUSTOM_SCRIPT_LOCATION/docker/main.bash ]; then
	source $CUSTOM_SCRIPT_LOCATION/docker/main.bash;
else
	echo "Cannot find: $CUSTOM_SCRIPT_LOCATION/docker/main.bash";
fi

# Include all of the git related scripts
if [ -f $CUSTOM_SCRIPT_LOCATION/git/main.bash ]; then
	source $CUSTOM_SCRIPT_LOCATION/git/main.bash;
else
	echo "Cannot find: $CUSTOM_SCRIPT_LOCATION/git/main.bash";
fi

# Include all of the tmux related scripts
if [ -f $CUSTOM_SCRIPT_LOCATION/tmux/main.bash ]; then
	source $CUSTOM_SCRIPT_LOCATION/tmux/main.bash;
else
	echo "Cannot find: $CUSTOM_SCRIPT_LOCATION/tmuxinator/main.bash";
fi

# Include all of the tmuxinator related scripts
if [ -f $CUSTOM_SCRIPT_LOCATION/tmuxinator/main.bash ]; then
	source $CUSTOM_SCRIPT_LOCATION/tmuxinator/main.bash;
else
	echo "Cannot find: $CUSTOM_SCRIPT_LOCATION/tmuxinator/main.bash";
fi


# Include all of the utils related scripts
if [ -f $CUSTOM_SCRIPT_LOCATION/utils.bash ]; then
	source $CUSTOM_SCRIPT_LOCATION/utils.bash;
else
	echo "Cannot find: $CUSTOM_SCRIPT_LOCATION/utils.bash";
fi


# Include any local extensions
if [ -f $HOME/.thomb.local ]; then
	source $HOME/.thomb.local;
fi

