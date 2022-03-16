

# Setup git branch
get_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}




# Set prompt
setopt PROMPT_SUBST # ensures that branch is re-evaluated
PS1=$'%{\033[92m%}[%m]: 我是%n在%{\033[0;34m%}(%~)%{\033[96m%} $(get_git_branch)%{\033[92m%}\n└─ > %{\033[0m%}'

# Set aliases
alias ls="ls -FG"


# Set common variables (MUST BE BOX-AGNOSTIC)
EDITOR=vim
VISUAL=vim
CLICOLOR=1

CANSAT=/Users/stephen/Desktop/俱乐部/CanSat
CLUBS=/Users/stephen/Desktop/俱乐部
FUN=/Users/stephen/Desktop/fun

PATH="/Users/stephen/bin:$PATH"

# Configure terminal niceties
autoload -U compinit && compinit
setopt autopushd
premd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

