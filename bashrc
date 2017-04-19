export PATH=/usr/local/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source $HOME/.bash_prompt

set -o vi
alias bashupdate="source ~/.bash_profile"
alias v="vim"
alias c="clear"
alias e="exit"
alias u="cd ../"
alias rs="~/Voicethread/rsyncscript"
alias r="rails"
alias bprof="v ~/.bash_profile"
alias vprof="v ~/.vimrc"
alias l="ls"
alias be="bundle exec"
alias ga="git add -A"
alias gc="git checkout"
alias g="git"
alias gb="git branch"
alias gs="git status"
alias ss="spring stop"
alias gcm="git commit -m"

function cs() {
    cd "$@" && ls
}

set completion-ignore-case On

export SLACK_API_KEY=xoxp-9851937330-42847095028-50265605762-99f48ea6c
export GITHUB_APP_ID=61cb250b4b51f1ef76e4
export GITHUB_APP_SECRET=bcc6cdcb5d8f17c32f9180cae44def3e43a15d9f
export PUBLISHABLE_KEY=pk_test_tjk2cHZ6lwXmkgnSnLnTwFnw
export SECRET_KEY= sk_test_0rLkQJdnecx9SYlOgOMFBAMe
export YOUR_CONSUMER_KEY=XZyIjpREILra5QUx79_ejQ
export YOUR_CONSUMER_SECRET=YTaCLKGHeXkYj5Cjq3K_nDqIscM
export YOUR_TOKEN=cofuzeA9VisOtUYLOHlgMwKwKkD2SJq5
export YOUR_TOKEN_SECRET=X0FvRrKmgEbWD0LoP6tR3essJJQ

export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[ -s "/home/adina/.jabba/jabba.sh" ] && source "/home/adina/.jabba/jabba.sh"
