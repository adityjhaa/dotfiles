# .bashrc

# eval "$(starship init bash)"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"

PS1='\[[38;5;75m\][\u@\h \[[0m\]\W\[[38;5;75m\]]\[[0m\]\$ '

# go path
export PATH="$HOME/.golang/bin:$PATH"

# fastfetch

# Frequently used
alias l='ls'
alias la='ls -a'
alias ll='ls -l'

alias open='xdg-open'
alias copy='xclip -selection clipboard'

# My projects
alias h='cd ~/code/projects/hippo/src'
alias bfk='cd ~/code/projects/brainfuck'
alias b='bfk'

# Assignments
alias bird='cd ~/code/projects/bird-species'

# IDK why it's here!
alias re='source ~/.bashrc'
alias cat='bat --paging=never'
# alias vim='nvim'
alias doom='~/code/projects/terminal-doom/zig-out/bin/terminal-doom'

export BAT_THEME="TwoDark"
eval "$(thefuck --alias)"

