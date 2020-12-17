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
fi
# STARSHIP

# .config check

if test ! -d [~/.config/]; then
    echo ".config exists"
else
    echo ".config does not exist, creating"
    mkdir ~/.config
fi

# Starship install check
if hash starship 2>/dev/null; then
    echo "starship is installed"
else
    echo "Starship is not installed"
    curl -fsSL https://starship.rs/install.sh | bash -s -- -y
fi

# Starship config check

if test -L [~/.config/starship.toml]; then
    echo "Starship config exists"
else
    echo "Starship config does not exist"
    ln -s $PWD/starship.toml ~/.config/starship.toml
fi

echo "Installed.... FIN."
