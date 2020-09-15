#!/bin/bash

set -a
source ~/settings.conf
set +a
cd "$dir"

tar -czvf $file_name ./

ln -s -f "$file_name" "$link"

settings.conf
dir=/home/user_name/dir_name

file_name=/home/user_name/backup_dir_name/backup-$(whoami)-$(date +'%d_%m_%Y__%I_%M_%p').tar.gz

link=/home/user_name/backups/name.tar.gz