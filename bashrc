if [ -f $HOME/.bash_profile  ]; then
  source $HOME/.bash_profile
fi

export NVM_DIR="/home/adina/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=/usr/local/bin:$NVM_DIR:$PATH
