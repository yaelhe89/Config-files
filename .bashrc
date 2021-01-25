# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

HISTSIZE=HISTFILESIZE= # Infinite history.
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
shopt -s autocd
# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
# Setting up Intel MKL enviroment for bash
. ~/intel/compilers_and_libraries_2019.5.281/linux/mkl/bin/mklvars.sh intel64

# Setting up FORTRAN enviroment for bash
. ~/intel/compilers_and_libraries_2019.5.281/linux/bin/compilervars.sh intel64



# User specific aliases and functions
alias dany2='sudo killall wpa_supplicant ; sudo killall dhclient ; sudo wpa_supplicant -B -c /etc/wpa_supplicant/dany2.conf -i wlo1 ; sudo dhclient wlo1'
alias dany1='sudo killall wpa_supplicant ; sudo killall dhclient ; sudo wpa_supplicant -B -c /etc/wpa_supplicant/dany1.conf -i wlo1 ; sudo dhclient wlo1'
alias ifuap='sudo killall wpa_supplicant ; sudo killall dhclient ; sudo wpa_supplicant -B -c /etc/wpa_supplicant/ifuap.conf -i wlo1 ; sudo dhclient wlo1'
alias hdmi='sudo xrandr --output HDMI1 --auto --right-of eDP-1 --mode 1024x768; pactl set-card-profile 0 output:hdmi-stereo  '
alias laptopsound='pactl set-card-profile 0  output:analog-stereo+input:analog-stereo'
alias tvsound='pactl set-card-profile 0 output:hdmi-stereo'
alias bolo='sudo killall wpa_supplicant ; sudo killall dhclient ; sudo wpa_supplicant -B -c /etc/wpa_supplicant/bolo.conf -i wlo1 ; sudo dhclient wlo1'
alias bolo2='sudo killall wpa_supplicant ; sudo killall dhclient ; sudo wpa_supplicant -B -c /etc/wpa_supplicant/bolo3.conf -i wlo1 ; sudo dhclient wlo1'
alias tv='xrandr --output HDMI1 --auto --transform 0.8,0,-18,0,1.04,-19,0,0,1 --right-of eDP1' 
alias hdmioff='xrandr --output HDMI1 --off; pactl set-card-profile 0 output:analog-stereo+input:analog-stereo'
alias suspend='systemctl suspend'
alias off='systemctl poweroff'
alias hiber='systemctl hibernate'
alias reboot='systemctl reboot'
alias david='sudo killall wpa_supplicant ; sudo killall dhclient ; sudo wpa_supplicant -b -c /etc/wpa_supplicant/david2.conf -i wlo1 ; sudo dhclient wlo1'
alias hp='sudo killall wpa_supplicant ; sudo killall dhclient ; sudo wpa_supplicant -B -c /etc/wpa_supplicant/hp.conf -i wlo1 ; sudo dhclient wlo1'
alias lalo='sudo killall wpa_supplicant ; sudo killall dhclient ; sudo wpa_supplicant -B -c /etc/wpa_supplicant/lalo.conf -i wlo1 ; sudo dhclient wlo1'
