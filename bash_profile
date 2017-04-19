export PATH=/usr/local/bin:$PATH

if command -v tmux>/dev/null; then
    [[ ! $TERM =~ screen  ]] && [ -z $TMUX  ] && exec tmux
fi

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
alias src="cd ~/Voicethread/clients/browser/src/web"
alias atomhi="atom --force-device-scale-factor=1"
alias dev="ssh dev-frontend290.voicethread.net"

function cs() {
    cd "$@" && ls
}

set completion-ignore-case On

export PATH

[ -s "/home/adina/.jabba/jabba.sh" ] && source "/home/adina/.jabba/jabba.sh"
