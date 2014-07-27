# ~/.bashrc
#
export LC_MESSAGES=en_US.UTF-8
echo .bashrc: $PAGER
export TERM=screen-256color
#export PAGER=/usr/share/vim/vim73/macros/less.sh
export PAGER=$PAGER
export EDITOR=vim
export PATH=$PATH:/home/bigboss/.shell_scripts
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias asound.normal="sudo cp /etc/asound.normal /etc/asound.conf"
alias asound.bt="sudo cp /etc/asound.bt /etc/asound.conf"
alias bright="xrandr --output VGA1 --brightness"
alias ls='ls --color=auto'
#alias man='man -P less'
alias pacman='sudo pacman'
alias runbigbro='ssh atlant etherwake -i br-lan 00:14:85:b0:5c:da'
alias chuse='select i in *;do echo $i;done'
alias mount='gvfs-mount -d'
alias qdbus='/usr/lib/qt4/bin/qdbus'
#alias myip='curl ip.appspot.com'
alias  dn="&> /dev/null &"
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias noss='/home/bigboss/.scripts/noss'
PS1='[\u@\h \W]\$ '
alias 'runcentos=VBoxManage startvm Centos --type headless'
alias 'runarch=VBoxManage startvm arch --type headless'
alias resolveip='dig +short'
alias vp='vimpager'
alias trans='google-translate auto ru'
alias mvnc='/home/bigboss/.scripts/controlmama'
export PATH="/usr/lib/ccache/bin/:$PATH"
alias tree='tree -Cs'
alias yadisk='sudo mount -t davfs -o uid=bigboss,gid=user https://webdav.yandex.ru /home/bigboss/Mausoleum/yadisk'
alias Lindent='/home/bigboss/Mausoleum/morg/git/linux-dev/scripts/Lindent'
alias checkpatch='/home/bigboss/Mausoleum/morg/git/linux-dev/scripts/checkpatch.pl --root=/home/bigboss/Mausoleum/morg/git/linux-dev'
alias open='xdg-open'
alias vi='vim'
sudo sh -c "echo performance > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor"
sudo sh -c "echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"
