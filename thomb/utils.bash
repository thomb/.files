# aliases
alias cd..='cd ..'
alias ll="ls -alh"
alias vi="vim"


src_env() {
	source ~/.bash_profile
}

update_env_osx () {
	echo "Updating Homebrew..."
	brew update

	echo "Updating Homebrew packages..."
	brew upgrade ${HOMEBREW_PACKAGES[@]}

	echo "Cleaning up Homebrew..."
	brew cleanup

	echo "Updating .thomb submodules..."
	pushd $DOTFILES_LOCATION
	git submodule update --init --recursive
	popd
}

update_env_apt () {
	echo "Updating packages..."
	sudo apt update

	echo "Updating packages..."
	sudo apt upgrade

	echo "Updating .thomb submodules..."
	pushd $DOTFILES_LOCATION
	git submodule update --init --recursive
	popd
}

update_env_pacman() {
	echo "Updating packages..."
	sudo pacman -S

	echo "Updating packages..."
	sudo yay -S

	echo "Updating .thomb submodules..."
	pushd $DOTFILES_LOCATION
	git submodule update --init --recursive
	popd
}

alias update_env="update_env_apt"

file_count () {
    find . -type f | wc -l
}

