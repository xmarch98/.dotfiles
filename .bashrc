#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|

# HISTORY
# do not keep duplicate commands or commands starting with {space} in the history
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
# append to history instead of overwriting it
shopt -s histappend
# update text after each command based on window size
shopt -s checkwinsize

# set fzf defaults
export FZF_DEFAULT_OPTS='--layout=reverse --border=bold --border=rounded --margin=3% --color=dark'

# use neovim as manpager
export MANPAGER='nvim +Man!'

# set vi mode
# set -o vi
# bind -m vi-command 'Control-l: clear-screen'
# bind -m vi-insert 'Control-l: clear-screen'

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS0=''
PS1='[\A \u@\h \W]\$ '
# PS2='> '
# PS3=''
# PS4=''

# case insensitive tab complete
bind "set completion-ignore-case on"

# ALIASES

# directories
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# commands
alias grep='grep --color=auto'
alias ls='ls --group-directories-first --color=auto'
alias ll='ls -lahs --group-directories-first --color=auto'
alias ld='ls -d */'
alias vim='nvim'
alias z='zoxide'

# pacman & yay
alias pacsyu="sudo pacman -Syu"
alias yaysua="yay -Sua --noconfirm"
alias yaysyu="yay -Syu --noconfirm"
alias cleanup="sudo pacman -Rns $(pacman -Qtdq)"

# mirrors
alias mirrors="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrorsd="sudo reflector -latest 50 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrorss="sudo reflector -latest 50 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrorsa="sudo reflector -latest 50 --number 10 --sort age --save /etc/pacman.d/mirrorlist"

# games
alias enshrouded='steam://rungameid/1203620'

# set fzf keybindings and fuzzy completion
eval "$(fzf --bash)"

