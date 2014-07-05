. $HOME/dotfiles/history
. $HOME/dotfiles/env_vars
. $HOME/dotfiles/prompt
. $HOME/dotfiles/aliases

# set PATH based on the lines in $HOME/.path_items
if [ -f $HOME/.path_items ]
then
    while read line
    do
        PATH=$PATH:"$line"
    done < $HOME/.path_items
fi
export PATH

