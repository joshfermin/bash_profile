PROFILES
========
Profiles I created for zsh and bash

###Highlights
```bash
# Github
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

alias gs='git status -sb'
alias ga='git add .'
alias gc='git commit -am' # requires you to type a commit message
alias gp='git push'
alias grmall='git rm $(git ls-files --deleted)'

# Misc
function cl(){ cd "$@" && ls; }
```


