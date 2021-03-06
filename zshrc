# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="chieftainblackbear"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
if [ -f /usr/bin/vagrant ]; then
    if [ -f "/Applications/VMware Fusion.app/Contents/MacOS/VMware Fusion" ]; then
        export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"
    elif [ -f "/Applications/VirtualBox.app/Contents/MacOS/VirtualBox" ]; then
        export VAGRANT_DEFAULT_PROVIDER="virtualbox"
    fi
    plugins=(django git mvn pip sublime vagrant virtualenv virtualenvwrapper zsh-syntax-highlighting)
else
    plugins=(django git mvn pip sublime virtualenv virtualenvwrapper zsh-syntax-highlighting)
fi

source $ZSH/oh-my-zsh.sh

# User configuration

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH to include non-Apple git location
PATH=/usr/local/git/bin:$PATH
export PATH

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Ruby RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM function

# Python virtualenvwrapper
# http://docs.python-guide.org/en/latest/dev/virtualenvs/
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Repos
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# autoenv - https://github.com/kennethreitz/autoenv
# homebrew installs to /usr/local/opt/autoenv
if [ -f /usr/local/opt/autoenv/activate.sh ]; then
    source /usr/local/opt/autoenv/activate.sh
fi
# pip installs to /usr/local/bin
if [ -f /usr/local/bin/activate.sh ]; then
    source /usr/local/bin/activate.sh
fi

# Java env
if [ -f /usr/libexec/java_home ]; then
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
	export JAVA_OPTS="-Xmx2048m -XX:MaxPermSize=256m"
fi

# Starmount variables
export CATALINA_HOME="$HOME/Repos/Starmount/apache-tomcat-7.0.59"
export CATALINA_BASE="$HOME/Repos/Starmount/apache-tomcat-7.0.59"
export CATALINA_OPTS="-Xmx4096m -XX:MaxPermSize=512M"
export CASSANDRA_HOME="$HOME/Repos/Starmount/apache-cassandra-2.1.4"
export CONNECT_HOME="$HOME/Repos/Starmount"
export INVENTORY_HOME="$HOME/Repos/Starmount/inventory-hub"
export ENACT_HOME="$HOME/Repos/Starmount/enact"
