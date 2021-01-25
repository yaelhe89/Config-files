# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.local/bin/zotero:$HOME/.local/bin/lanhep400:$HOME/.local/bin/micromegas:$HOME/.local/share/application:$HOME/.local/share/applications:/usr/local/bin

export PATH

# Default programs:
export READER="zathura"
export TERMINAL="st"
export EDITOR="vimx"
#export EDITOR="nvim"
export FILE="ranger"
