# Define colors
DARK_GREY='\[\033[38;5;242m\]'
LIGHT_GREY='\[\033[38;5;247m\]'
LIGHTER_GREY='\[\033[38;5;250m\]'
WHITE='\[\033[38;5;255m\]'

BLUE='\[\033[0;34m\'
LIGHT_ORANGE='\[\033[1;31\]'
RESET='\[\033[0m\]'

# PS1 setup first is a bit spacious second is alot simpler
# uncomment following line for a different look
# PS1="${DARK_GREY}\u${LIGHT_GREY}@${LIGHTER_GREY}\h - ${WHITE}[\w]${RESET} \n   > "
PS1="${LIGHT_GREY}[\w] ${LIGHT_GREY}➤ ${RESET}"

# probably won't care to fix later
# LS Colors
# LS_COLORS="di=1;34:fi=0;34:"
# export LS_COLORS='di=1;34:fi=0:ln=1;36:pi=40;33:so=1;35:bd=40;33;01:cd=40;33;01:or=1;31:ex=1;32:*.tar=1;31:*.zip=1;31:*.jpg=1;35:*.png=1;35:*.gif=1;35:'
 #Apply LS Colors
# alias ls='ls --color=auto'

alias nv=nvim
alias vim=nvim

alias cl=clear
alias d=exit
alias power='sudo poweroff'

alias build='cargo build'
alias run='cargo run'

alias rm='gio trash'

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

. "$HOME/.cargo/env"

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    # alias dir='dir --color=auto'
    # alias vdir='vdir --color=auto'

    # alias grep='grep --color=auto'
    # alias fgrep='fgrep --color=auto'
    # alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi
