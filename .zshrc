# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

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
# plugins=(git)

# User configuration

export PATH="/usr/local/heroku/bin:/Users/joshfermin/Scala/bin/:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# to create: touch .bash_profile

PATH="$HOME/Scala/bin/:${PATH}" 
export PATH

# show/hide hidden files
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO'

# league of legends lol
alias lolping='ping 216.52.241.254'
alias league='open -a League\ Of\ Legends'
alias chrome='open -a Google\ Chrome'

# Color LS
colorflag="-G"
alias ls="command ls ${colorflag}"


# Git
# You must install Git first - ""
alias gs='git status -sb'
alias ga='git add .'
alias gc='git commit -am' # requires you to type a commit message
alias gp='git push'
alias grmall='git rm $(git ls-files --deleted)'
function lazygit() {
	blue='\033[1;34m'
	NC='\033[0m' # No Color
	echo -e "${blue}\n***********\n git add .\n***********${NC}"
    git add .
    git status
    echo -e "${blue}\n***********\n git commit -am " "\"$1\""  "\n***********${NC}"
    git commit -a -m "$1"
    echo -e "${blue}\n***********\n git push origin master\n***********${NC}"
    git push origin master
}

# awesome!  CD AND LA. I never use 'cd' anymore...
function cl(){ cd "$@" && ls; }

# file management
zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"







export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
