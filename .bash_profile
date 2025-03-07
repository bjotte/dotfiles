if [ -n "$TMUX" ]; then
    # called inside tmux session, do tmux things
    . ~/.profile

fi
# Trigger ~/.bashrc commands
. ~/.bashrc
. "$HOME/.cargo/env"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/bjotte/.cache/lm-studio/bin"

#Added by me
export PATH=${PATH}:/usr/bin/mangohud
export PATH=${PATH}:/home/bjotte/.var/app
export PATH=${PATH}:/usr/bin/gamescope

