# ~/.bashrc

PS1='\$ '
PROMPT_COMMAND='echo -ne "\033]2;${USER}@${HOSTNAME}:${PWD//~/\~}\007"'
HISTCONTROL=ignorespace
CDPATH=.:~

test -e ~/TODO.md && cat ~/TODO.md # DO NOT DELETE

