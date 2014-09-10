PATH="$HOME/Scala/bin/:${PATH}" export PATH

alias lolping='ping 216.52.241.254'

# Color LS
colorflag="-G"
alias ls="command ls ${colorflag}"

# Git
# You must install Git first - ""
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'

# awesome!  CD AND LA. I never use 'cd' anymore...
function cl(){ cd "$@" && ls; }