alias lsa='ls -lAh'
alias ..='cd ../'
alias cls='clear; ls'
alias hacker='dmesg | pv -qL 64'
alias removegps='exiftool -gps:all= -xmp:geotag= -m'
alias tohex='printf "%x\n"'
alias hextime='tohex $(date +%s)'
alias usernames='apg -a 0 -m 6 -x 6 -n 40 -M L'
alias compresspdf='gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -sOutputFile=compressed.pdf'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

function tla () {
    tmux list-sessions | while read -r session_line ; do
        echo
        echo "session $session_line"
        window_name="$(echo "$session_line" | cut -f1 -d:)"
        tmux list-windows -t "$window_name" | while read -r window_line ; do
        echo "window $window_line"
        window_number="$(echo "$window_line" | cut -f1 -d:)"
        tmux list-panes -t "$window_name:$window_number"
        echo
        done
        echo
        done
}


