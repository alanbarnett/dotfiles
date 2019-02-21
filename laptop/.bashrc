#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set tabs to 4 spaces
tabs -4

# figlet for funsies
#figlet alan@x200
#printf "\n"

export EDITOR=nvim
export EMAIL=alanbarnett328@gmail.com

# Enable git information in my prompt
export GIT_PROMPT=1

PATH=$PATH:~/bin:~/dotfiles/bin:~/color-scripts/color-scripts
HISTIGNORE="history:ls:pwd:fg:bg:clear:exit"
HISTCONTROL=ignoreboth

mkcd ()
{
	mkdir -p -- "$@" && cd -- "$@"
}

rm ()
{
	mv -iv -- "$@" ~/Trash
}

btc ()
{
	curl -s http://api.coindesk.com/v1/bpi/currentprice.json | python -c "import json, sys; value=json.load(sys.stdin)['bpi']['USD']['rate']; print(value.split('.')[0])"
}

# ascii art command prompts. {{{
#PS1="        \[\e[1;36m\]_            \[\e[1;35m\]____       \[\e[0;35m\]___ __   __\n   \[\e[1;36m\]__ _| |__ _ _ _  \[\e[1;35m\]/ __ \\\[\e[0;35m\]__ __|_  )  \ /  \\\n\[\e[1;37m\]\342\224\200(\[\e[1;34m\]$(decimaltime.sh)\[\e[1;37m\])\n\[\e[1;37m\]\342\224\214\342\224\200\[\e[1;36m\]/ _\` | / _\` | ' \\\[\e[1;35m\]/ / _\` \ \[\e[0;35m\]\ / / / () | () |\[\e[1;37m\]\342\224\200($(battery)\[\e[1;37m\])\n\[\e[1;37m\]\342\224\202 \[\e[1;36m\]\__, |_\__, | ||_\[\e[1;35m\]\ \__,_/\[\e[0;35m\]_\_\/___\__/ \__/\[\e[1;37m\]\342\224\200(\[\e[1;34m\]\w\[\e[1;37m\])\n\[\e[1;37m\]\342\224\224\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\[\e[1;35m\]\\____/\[\e[1;37m\]\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200\342\224\200(\[\e[1;36m\]$\[\e[1;37m\]> \[\e[m\]"

# '            __            ______      ___   ____  ____\n'
# '     ____ _/ /___ _____  / ____ \_  _|__ \ / __ \/ __ \__<\w>\n'
# '  _ / __ `/ / __ `/ __ \/ / __ `/ |/_/_/ // / / / / / /\n'
# ' / / /_/ / / /_/ / / / / / /_/ />  </ __// /_/ / /_/ /__<\t>\n'
# '/  \__,_/_/\__,_/_/ /_/\ \__,_/_/|_/____/\____/\____/\n'
# '\_______________________\____/_________________________> '

# PS1='            \[\e[1;36m\]__            \[\e[1;35m\]______      \[\e[0;35m\]___   ____  ____\n     \[\e[1;36m\]____ _/ /___ _____  \[\e[1;35m\]/ ____ \\\[\e[0;35m\]_  _|__ \ / __ \/ __ \\\[\e[1;37m\]__<\[\e[1;32m\]\w\[\e[1;37m\]>\n  \[\e[1;37m\]_ \[\e[1;36m\]/ __ \`/ / __ \`/ __ \\\[\e[1;35m\]/ / __ \`/ \[\e[0;35m\]|/_/_/ // / / / / / /\n \[\e[1;37m\]/ \[\e[1;36m\]/ /_/ / / /_/ / / / \[\e[1;35m\]/ / /_/ /\[\e[0;35m\]>  </ __// /_/ / /_/ /\[\e[1;37m\]__<\[\e[1;34m\]\t\[\e[1;37m\]>\n\[\e[1;37m\]/  \[\e[1;36m\]\__,_/_/\__,_/_/ /_/\[\e[1;35m\]\ \__,_/\[\e[0;35m\]_/|_/____/\____/\____/\n\[\e[1;37m\]\_______________________\[\e[1;35m\]\____/\[\e[1;37m\]_______________________\[\e[1;36m\]($>\[\e[m\] '
# }}}

PS1='\[\e[1;37m\]\342\224\214[\[\e[1;36m\]\u@\h\[\e[1;37m\]]\342\224\200(\[\e[1;32m\]\w$(git_branch_prompt.sh)\[\e[1;37m\])\342\224\200($(battery)\[\e[1;37m\])\342\224\200(\[\e[1;34m\]$(date "+%I:%M %P")\[\e[1;37m\])$(need_to_reboot.sh)\n\[\e[1;37m\]\342\224\224\342\224\200(\[\e[1;36m\]$\[\e[1;37m\]> \[\e[m\]'

# quality of life improvements
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias mv='mv -iv'
alias cp='cp -iv'
alias grep='grep --color=auto'

# shortcut aliases
alias weather='curl http://wttr.in/94555'
alias cn='clear;neofetch'
alias 42fc='bash ~/clones/42filechecker/42FileChecker.sh'
alias journal='journalctl -xe'
alias setv='pactl set-sink-volume 0 '

# vim: foldmethod=marker foldmarker={{{,}}}
