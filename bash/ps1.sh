RED="\[$(tput setaf 1)\]"
ORANGE="\[$(tput setaf 208)\]"
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

export PS1="$ORANGE\u@\h:\w\n\$$RESET "
