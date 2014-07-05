. $HOME/dotfiles/history
. $HOME/dotfiles/env_vars
. $HOME/dotfiles/prompt
. $HOME/dotfiles/aliases

# export environment variables in $HOME/.local_env_vars
if [ -f $HOME/.local_env_vars ]
then
    . $HOME/.local_env_vars
fi

# set PATH based on the lines in $HOME/.local_path
# (you can reference previously exported env vars from the above file)
if [ -f $HOME/.local_path ]
then
    while read line
    do
        PATH=$PATH:"$line"
    done < $HOME/.local_path
fi
export PATH

