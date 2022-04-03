# Git
alias gc='git commit'

## if you want to commit without running the `make prepare` git hook
alias gcv='git commit --no-verify'

alias gstatus='git status';
alias gitst='git status';
alias gdev='git checkout dev; git pull';

gcam () {
	git commit -am "$1"
}

gdel () {
    git branch -d $1
}

gfdel () {
    git branch -D $1
}

gbranch () {
  git checkout dev;
  git pull;
  git checkout -b $1
}

getdev () {
  cwb=$(git branch --show-current)
  test cwd != 'dev' && git checkout dev
  echo ">> PULLING DEV CHANGES"
  git pull
  test cwd != 'dev' && git checkout $cwb
}
