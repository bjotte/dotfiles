#!/bin/bash

# Find all dot files then if the original file exists, create a backup
# Once backed up to {file}.dtbak symlink the new dotfile in place
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ -e ~/$file ]; then
        mv -f ~/$file{,.dtbak}
    fi
    ln -s $PWD/$file ~/$file
done

# Check if vim-addon installed, if not, install it automatically
if hash vim-addon  2>/dev/null; then
    echo "vim-addon (vim-scripts)  installed"
else
    echo "vim-addon (vim-scripts) not installed, installing"
    sudo apt update && sudo apt -y install vim-scripts curl
fi
# Check if curl is installed, if not install it automatically
if hash curl 2>/dev/null; then
    echo "curl installed"
else
    echo "curl not installed, installing"
    sudo apt update && sudo apt -y install curl

#starship

curl -fsSL https://starship.rs/install.sh | bash
ln -s $PWD/starship.toml ~/.config/starship.toml

echo "Installed.... FIN."
