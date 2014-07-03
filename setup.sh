timestamp=`date +%s`
backup_dir="$HOME/.dotfiles_backup_$timestamp"

echo "creating backup directory: $backup_dir"
mkdir $backup_dir

files=".exrc .emacs .bash_profile"
for file in $files
do
    old_file_path="$HOME/$file"
    new_file_path="$HOME/dotfiles/$file"

    if [ -f $old_file_path ]
    then
        echo "backing up file: $old_file_path"
        mv $old_file_path $backup_dir/
    fi

    echo "linking new file: $old_file_path"
    ln -s $new_file_path $old_file_path
done

