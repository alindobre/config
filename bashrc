# Personal ~/.bashrc file
# Alin Dobre <alinmd at gmail.com>

export PATH=$PATH:$HOME/.local/bin:$HOME/bin

# keychain (ssh and gpg agents loaded)
keychain id_dsa
if [ -f ${HOME}/.keychain/${HOSTNAME}-sh ]; then
	. ${HOME}/.keychain/${HOSTNAME}-sh
fi

alias cd-='cd -'

# Yes, I sometimes use mc. So I'm giving it some love
alias mc='source /usr/share/mc/bin/mc-wrapper.sh'

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=5000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
