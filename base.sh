export EDITOR="/opt/local/bin/mate -w"
export GEM_OPEN_EDITOR="/opt/local/bin/mate"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"

########
# Ruby #
########

export RUBYOPT="rubygems"
export RUBYLIB="test:$RUBYLIB"

function glg() {
  gem list | grep $1
}

#########
# Rails #
#########

function sc {
  if [ -x script/console ]; then
    script/console $1
  else
    if [ -x script/rails ]; then
      script/rails c $1
    else
      irb -rubygems -rmap_by_method $1
    fi
  fi
}

function gen {
  if [ -x script/generate ]; then
    script/generate $1
  else
    if [ -x script/rails ]; then
      script/rails g $1
    fi
  fi
}

function destroy {
  if [ -x script/generate ]; then
    script/destroy $1
  else
    if [ -x script/rails ]; then
      script/rails destroy $1
    fi
  fi
}

# tail log
alias taildev='tail -f log/development.log'
alias tailtest='tail -f log/test.log'
alias r='touch tmp/restart.txt'


############
# Homebrew #
############

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh


#######
# Git #
#######

alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gpa='git push-all' # see [alias] in ~/.gitconfig
alias gd='git diff | mate'
alias ga='git add'
alias gcl='git config --list'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gbc='git branch --color'
alias gba='git branch -a'
alias gco='git checkout'
alias gpatch='git diff master -p'
alias gitrm="git status | grep deleted | awk '{print $3}' | xargs git rm"
alias gitx="open -b nl.frim.GitX"

function gpall() {
  for remote in `git remote show`
  do
    `git push $remote --all`
  done
}

##########
# Heroku #
##########

alias gph='git push heroku HEAD:master'
alias h='heroku'

function heroku_transfer {
  heroku sharing:add $1
  heroku sharing:transfer $1
  git config --add heroku.email $1
  git config --add heroku.password "$2"
}

############
# TextMate #
############

alias et="mate ."
alias tm_dialog=~/"Library/Application\ Support/TextMate/PlugIns/Dialog.tmplugin/Contents/Resources/tm_dialog"

########
# Misc #
########

# increase number of files that can be open at one time
ulimit -n 6000

alias ll='ls -lah'

alias eprof='mate ~/.dotfiles/' # because i edit my bash_profile a lot with new things
alias sprof='source ~/.bash_profile' # same as previous, after editing you have to source it for the new stuff to work
alias publickey='cat ~/.ssh/id_dsa.pub | pbcopy'

function f() {
  find * -name $1
}

# replacement netstat cmd to find ports used by apps on OS X
alias netstat_osx="sudo lsof -i -P"

# from http://blog.macromates.com/2008/working-with-history-in-bash/
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend


source ~/.dotfiles/bashprompt.sh

# Last
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm