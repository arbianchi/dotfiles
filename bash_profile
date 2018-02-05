export PATH=/usr/local/bin:$PATH

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source $HOME/.bash_prompt

export VISUAL=vim
export EDITOR="$VISUAL"

set -o vi
alias bashupdate="source ~/.bash_profile"
alias v="vi"
alias c="clear"
alias e="exit"
alias u="cd ../"
alias r="rails"
alias bprof="v ~/.bash_profile"
alias vprof="v ~/.vimrc"
alias l="ls"
alias be="bundle exec"
alias ga="git add -A"
alias gc="git checkout"
alias gpom="git pull origin master"
alias gb="git branch"
alias gs="git status"
alias ss="spring stop"
alias gcm="git commit -m"
alias startvpn="sudo openvpn --config ~/.vpn/client.ovpn"
alias festi="cd ~/Rails/festilite"
alias famtog="cd ~/Rails/families-together"
alias site="cd ~/Voicethread/site"
alias system="cd ~/Voicethread/system"
alias client="cd ~/Voicethread/clients"
alias atomhi="atom --force-device-scale-factor=1"
alias copy="xclip -selection c"

function cs() {
    cd "$@" && ls
}

set completion-ignore-case On

export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
