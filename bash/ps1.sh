RED="\[$(tput setaf 1)\]"
MAGENTA="\[$(tput setaf 5)\]"
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

export PS1="\u@\h:\w\n$MAGENTA\$$RESET "
