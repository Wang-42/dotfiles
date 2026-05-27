source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    cat ~/.config/fish/functions/cat_greeting.txt
end

alias gcam="git commit -a -m"
alias gcm="git commit -m"
alias wgup="sudo wg-quick up"
alias wgdown="sudo wg-quick down"
alias mr="wl-mirror eDP-1"
alias fafe="clear && fastfetch"
alias clr="clear"
alias workai=". /home/wang/VENV/python312/bin/activate.fish"

functions --erase apt
functions --erase apt-get
