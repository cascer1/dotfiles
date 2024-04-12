alias ..='cd ../'
alias cls='clear; exa --long --header'
alias hacker='dmesg | pv -qL 64'
alias removegps='exiftool -gps:all= -xmp:geotag= -m'
alias tohex='printf "%x\n"'
alias hextime='tohex $(date +%s)'
alias usernames='apg -a 0 -m 6 -x 6 -n 40 -M L'
alias compresspdf='gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -sOutputFile=compressed.pdf'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias ls='exa'
alias ll='exa --long --header'
alias lsa='exa --long --header --all'
