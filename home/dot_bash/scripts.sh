#!/bin/bash
# Custom scripts

# Change prompt to include username and truncated path
# source: http://stackoverflow.com/a/5687619/4385713

export MYPS='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{
if (length($0) > 14) { if (NF>4) print $1 "/" $2 "/.../" $(NF-1) "/" $NF;
else if (NF>3) print $1 "/" $2 "/.../" $NF;
else print $1 "/.../" $NF; }
else print $0;}'"'"')'
    PS1='\[\033[01;32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:$(eval "echo ${MYPS}")'

if [ `id -u` -eq 0 ]; then
    PS1="$PS1# "
else
    PS1="$PS1\$ "
fi

# Change title
# Username@host:
# echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"

# last command
#lastcmd() { LASTCMD=$(history 1 | cut -c8-); echo -ne "\e]2;$LASTCMD\a\e]1;$LASTCMD\a"; }
#PROMPT_COMMAND=lastcmd

# Change folder color to Pink - Blue is too hard to read
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS


