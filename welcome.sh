#! /bin/sh -e

timestamp=`date +%s`
backup_dir="$HOME/.dotfiles_directory_backup_$timestamp"
dotfiles_dir="$HOME/dotfiles"

if [ -d  $dotfiles_dir ]
then
    echo "directory found: $dotfiles_dir"

    echo "creating backup directory: $backup_dir"
    mkdir $backup_dir

    echo "backing up directory: $dotfiles_dir"
    mv $dotfiles_dir $backup_dir
fi

echo "cloning git repository: github.com/csizsek/dotfiles"
git clone https://github.com/csizsek/dotfiles.git $HOME/dotfiles

$HOME/dotfiles/setup.sh

