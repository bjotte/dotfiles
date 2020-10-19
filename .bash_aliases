alias gti='git'
#alias tmux='tmux -2'
alias less='less -R'
alias diff='colordiff'
alias dc='cd'
alias nethack-online='ssh nethack@nethack.alt.org ; clear'
alias tron-online='ssh sshtron.zachlatta.com ; clear'
alias glog='git log --oneline --graph --color --all --decorate'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias fdsk="sudo fdisk -l | sed -e '/Disk \/dev\/loop/,+5d'"
alias mp3="youtube-dl -x --audio-format mp3"
############################
## LIST OF CUSTOM ALIASES ##
############################
#APT SECTION
alias upgradable='sudo apt update && sudo apt list --upgradable'
alias upgrade='sudo apt update && sudo apt upgrade'
#/APT SECTION
#
#-#-#-#-#-#
#
#SANITY SECTION
alias cls='clear'
alias hist='history'
#/SANITY SECTION
#
#-#-#-#-#-#
#
#SSH SECTION
alias flitwick='ssh root@192.168.1.1'
alias harry='ssh bjotte@192.168.1.15'
alias fred='ssh root@192.168.1.8'
alias george='ssh root@192.168.1.9'
alias william='ssh root@192.168.1.10'
alias hermione='ssh root@192.168.1.55'
alias lily='ssh bjotte@192.168.1.25'
alias charlie='ssh bjotte@192.168.1.26'
#/SSH SECTION
#
#-#-#-#-#-#
#
#.SH SECTION
alias raid-stat='/home/bjotte/./raid-stat.sh'
alias btrs='/home/bjotte/./btrs.sh'
alias fasttrack='/home/bjotte/./fasttrack.sh'
#/.SH SECTION
#
#-#-#-#-#-#
#
#DOCKER SECTION
alias dls='docker container ls'
#/DOCKER SECTION
#
#-#-#-#-#-#
#
#GIT
alias gs='git status'
alias gpl='git pull'
alias gpu='git push'
alias gc='git commit'
alias ga='git add'


###########################
## END OF CUSTOM ALIASES ##
###########################
