# Zhang Yan zsh config file
# updated 2016.08.27
#
# Path to your oh-my-zsh installation.
export ZSH=/Users/zhangyan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew git mvn ruby osx z pip colored-man colored-man-pages)

# User configuration
export CLICOLOR=1
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="mvim ~/.zshrc"
alias ohmyzsh="mvim ~/.oh-my-zsh"

# prevent history sharing between several term window
# history settings
unsetopt share_history
HISTSIZE=4096
SAVEHIST=4096

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/git/bin":$PATH
export PATH="/usr/local/sbin":$PATH

# Go Env
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Java Path
export JAVA_HOME=$(/usr/libexec/java_home)

# Maven
export M2_HOME="$HOME/Tools/apache-maven"
export MAVEN_BIN="$M2_HOME/bin"
export PATH=$PATH:$MAVEN_BIN

# open-mpi
# export PATH="/usr/local/Cellar/open-mpi/1.8.4/bin":$PATH

# boost
export BOOST_ROOT="/usr/local/boost"

# gcc compiler setting
export CC="/usr/local/Cellar/gcc/5.3.0/bin/gcc-5"
export CXX="/usr/local/Cellar/gcc/5.3.0/bin/g++-5"
export C_INCLUDE_PATH="/usr/local/include:/usr/local/boost"
export CPLUS_INCLUDE_PATH="/usr/local/include:/usr/local/boost"
export MPI_LIBRARY="/usr/local/lib"

# CUDA
export PATH=/Developer/NVIDIA/CUDA-7.5/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.5/lib:$DYLD_LIBRARY_PATH

# nvm / node.js
export NVM_DIR="/Users/zhangyan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# personal functions
use_clang () {
	export CC=clang
	export CXX=clang++
	echo "Compiler has changed to clang/clang++"
}

use_gcc () {
	export CC="/usr/local/Cellar/gcc/5.3.0/bin/gcc-5"
	export CXX="/usr/local/Cellar/gcc/5.3.0/bin/g++-5"
	echo "Compiler has changed to gcc/g++"
}


# homebrew bottle source
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# personal alias
alias tailf="tail -f"
# docker alias
remove_stopped_docker () {
	docker rm $(docker ps -aq)
}

# pyenv
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
