export PATH=/usr/local/bin:$PATH

source $HOME/.bash_prompt

export VISUAL=vim
export EDITOR="$VISUAL"

set -o vi
alias bashupdate="source ~/.bashrc"
alias v="vi"
alias c="clear"
alias web="cd ~/vt/clients/browser/src/web"
alias site="cd ~/vt/site"
alias e="exit"
alias u="cd ../"
alias bprof="v ~/.bashrc"
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
alias vpn="tmux attach-session -t 0"
alias atomhi="atom --force-device-scale-factor=1"
alias dev="ssh dev-adina.voicethread.net"
alias staging="ssh staging-auth1.voicethread.net"
alias prod="ssh prod-auth1.voicethread.net"
alias copy="xclip -selection c"
alias startsync="~/vt/site/libexec/autorsync.py . dev-adina.voicethread.net:/opt/site"
alias ai="ag -o -i --ignore *node_modules* --ignore *build*"
alias usage="du -chs ./*"

set completion-ignore-case On

function vtbuild() {
  gulp dist --app "$@" && gulp publish --app "%@" --local ~/vt/site/app/ && echo 'N'
}

function vtdev() {
  gulp dev --app "$@"
}



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export PATH
