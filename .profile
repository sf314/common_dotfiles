## Profile: for bourne-compatible shells

# Load bashrc, if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Set PS1
get_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[\033[92m\]我是\u 在\[\033[0;91m\](\w)\[\033[96m\]\$(get_git_branch)\[\033[92m\]\n└─ > "

# Set PATH
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi


# Set common variables (MUST BE BOX-AGNOSTIC)
export EDITOR=vim
export VISUAL=vim


