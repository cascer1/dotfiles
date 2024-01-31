alias lsa='ls -lAh'
alias ..='cd ../'
alias cls='clear; ls'
alias hacker='dmesg | pv -qL 64'
alias removegps='exiftool -gps:all= -xmp:geotag= -m'
alias removetimestamp="sed -r 's/\[[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}\s[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}\]//g' -i --"
alias tohex='printf "%x\n"'
alias hextime='tohex $(date +%s)'
alias usernames='apg -a 0 -m 6 -x 6 -n 40 -M L'
alias compresspdf='gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -sOutputFile=compressed.pdf'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

