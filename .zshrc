#================================================
# history
#================================================
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000000
export SAVEHIST=10000000

#setopt BANG_HIST                 # Treat the '!' character specially during expansion.
#setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
#setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
#setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
#setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
#setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
#setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
#setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
#setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
#setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
#setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
#setopt HIST_BEEP                 # Beep when accessing nonexistent history.

#================================================
# prompt
#================================================
# if not running interactively, don't do anything
[ -z "$PS1" ] && return

# nice colors
UC=34
HC=33
PC=32

# all red for root
if [ "${USER}" = "root" ]
then
    UC=31
    HC=31
    PC=31
fi

export PS1='%F{blue}%n%F{white}@%F{yellow}nostromo%F{white}:%F{green}%~%F{white} '
export PS2='> '

#================================================
# global environment variables
#================================================
# color terminal
export CLICOLOR=1

# set default editor
export EDITOR=vim

#================================================
# global aliases
#================================================
# ls aliases
alias l='ls -1Fh'
alias ll='ls -lFh'
alias la='ls -aFh'
alias lal='ls -laFh'
alias lt='ls -laFhtr'

# grep aliases
alias gr='grep --color=always'

# other aliases
alias t='tree -FC -L 2'
alias pcat='pygmentize'
alias fn='find . -name'
alias pg='ps aux | grep'
alias sr='ssh -lroot'
alias rzp='. ~/.zshrc'

# git aliases
alias gs='git status'
alias gss='git status -s'
alias gb='git branch'
alias gd='git diff --color'
alias gl='git log --color'
alias glo='git log --color --pretty=oneline'
alias glf='git log --color --follow'
alias glof='git log --color --pretty=oneline --follow'
alias glg='git log --graph --color --abbrev-commit --pretty=oneline'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gsu='git submodule update'
alias gst='git stash'
alias gstp='git stash pop'
alias gco='git checkout'

#================================================
# functions
#================================================
#function csview {
#    cat $1 | sed 's/,,/, ,/g;s/,,/, ,/g' | column -s, -t | less -#2 -N -S
#}
#export -f csview

#================================================
# custom local stuff
#================================================
# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# local bin
export PATH="/Users/petercsizsek/.local/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"
