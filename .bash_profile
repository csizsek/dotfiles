. $HOME/dotfiles/history
. $HOME/dotfiles/env_vars
. $HOME/dotfiles/prompt
. $HOME/dotfiles/aliases

# set PATH based on the lines in $HOME/.local_path
if [ -f $HOME/.local_path ]
then
    while read line
    do
        PATH=$PATH:"$line"
    done < $HOME/.local_path
fi
export PATH

# export environment variables in $HOME/.local_env_vars
if [ -f $HOME/.local_env_vars ]
then
    while read line
    do
        export "$line"
    done < $HOME/.local_env_vars
fi

