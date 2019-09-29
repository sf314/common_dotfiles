## Profile: for bourne-compatible shells
## Anything I'd want in an interactive command line

# Set PS1
get_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1="\[\033[92m\][\h]: 我是\u 在\[\033[0;91m\](\w)\[\033[96m\]\$(get_git_branch)\[\033[92m\]\n└─ > \[\033[0m\]"
#PS1="[\h]: 我是\u 在(\w)\$(get_git_branch)\n└─ > "
#PS1="\[\e]0;[\h]: 我是\u 在 \w\a\](\w)\$(get_git_branch)\n└─ > "


PS1="\[\033[92m\][\h]: 我是\u 在\[\033[0;94m\](\w)\[\033[96m\]\$(get_git_branch)\[\033[92m\]\n└─ > \[\033[0m\]"

#default PS1:
#PS1=\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$

# Set common variables (MUST BE BOX-AGNOSTIC)
export EDITOR=vim
export VISUAL=vim
