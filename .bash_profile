if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# history settings
. "${HOME}"/dotfiles/history

# prompt settings
. "${HOME}"/dotfiles/prompt

# global environment variables
. "${HOME}"/dotfiles/env_vars

# local environment variables
if [ -f "${HOME}"/.local_env_vars ]
then
    . "${HOME}"/.local_env_vars
fi

# global aliases
. "${HOME}"/dotfiles/aliases

# local aliases
if [ -f "${HOME}"/.local_aliases ]
then
    . "${HOME}"/.local_aliases
fi

# global functions
. "${HOME}"/dotfiles/functions

# local functions
if [ -f "${HOME}"/.local_functions ]
then
    . "${HOME}"/.local_functions
fi

# global commands
. "${HOME}"/dotfiles/commands

# local commands
if [ -f "${HOME}"/.local_commands ]
then
    . "${HOME}"/.local_commands
fi


# set PATH based on the lines in $HOME/.local_path
# (you can reference previously exported env vars from the above file)
if [ -f "${HOME}"/.local_path ]
then
    while read line
    do
        PATH="${PATH}":"$line"
    done < "${HOME}"/.local_path
fi
export PATH

# load rvm if present
[ -f "${HOME}"/.rvm/scripts/rvm ] && . "${HOME}"/.rvm/scripts/rvm

