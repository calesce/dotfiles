export EDITOR=vim

# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=$PATH:/usr/local
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/downloads/cf-ssh_darwin_amd64:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1
export TERM=xterm-256color

# Node
export NVM_DIR="/Users/calenewman/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Java stuff
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA="/usr/bin/java"
alias setJdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

# random
alias git="hub"
alias cdc="cd ~/code"
alias tab="cd ~/code/tab-editor"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# wtfmacos
/usr/bin/ssh-add -K ~/.ssh/id_rsa

