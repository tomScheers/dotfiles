# Adds aliases
alias update='sudo apt update && echo Update Complete && sudo apt dist-upgrade -y && sudo apt full-upgrade -y && echo Upgrade Complete && sudo apt autoremove -y && sudo apt clean -y && echo Cleanup Complete'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias c="clear"
alias bashrc="nvim ~/.bashrc && source ~/.bashrc"
alias s="sudo !!" # enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'



# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# Adds alias functions
cd_to() {
  cd "$1"
  if [ -n "$2" ]; then
    cd "$2"
  fi
}
cdp() {
  cd_to "/home/tom/Programming" "$1"
}

cdn() {
  cd_to "/home/tom/.config/nvim" "$1"
}

cda() {
  cd_to "/home/tom/.config/alacritty" "$1"
}

weather() {
  local city="${1:-Doesburg}" # Default to 'Doesburg' if no argument is provided
  curl -s "wttr.in/$city?format=3"
}
