#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shit to make iterm faster
launchctl remove com.apple.suggestd
launchctl remove com.apple.followupd
find ~/Library/Logs/DiagnosticReports -mindepth 1 -delete > /dev/null 2>&1

# brew stuff
mkdir -p /tmp/.abarnett-brew-locks

export EDITOR='nvim'
export MAIL=alanbarnett328@gmail.com

PATH=$HOME/clones/valgrind:$HOME/clones/color-scripts/color-scripts:$HOME/bin:$HOME/dotfiles/bin:$HOME/.brew/bin:$HOME/cadet/projects/ft_ls:$PATH
HISTIGNORE="history:ls:pwd:fg:bg:clear:exit"
HISTCONTROL=ignoreboth

CFLAGS='-Wall -Wextra -Werror'

mkcd ()
{
	mkdir -p -- "$@" && cd -- "$@"
}

rm ()
{
	mv -iv -- "$@" ~/Trash
}

norminator ()
{
	norminette $1 | GREP_COLOR='1;38;5;40' egrep --color=always "^Norme|$" | GREP_COLOR='1;38;5;33' egrep --color=always '^Warning|$' | GREP_COLOR='1;38;5;196' egrep --color=always '^Error|$'
}

git_branch_prompt ()
{
	OUTPUT=$(git branch 2> /dev/null | sed -n "s/^\* //p")

	if [ ! -e $OUTPUT ]; then
		printf "\e[1;37m:\e[1;31m$OUTPUT\e[m"
	fi
}

PS1='\[\e[1;37m\]\342\224\214[\[\e[1;36m\]\u@\h\[\e[1;37m\]]\342\224\200(\[\e[1;32m\]\w$(git_branch_prompt)\[\e[1;37m\])\342\224\200(\[\e[1;34m\]$(date "+%I:%M %p")\[\e[1;37m\])\n\[\e[m\]'

# quality of life improvements
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias mv='mv -iv'
alias cp='cp -iv'
alias gcc='gcc $CFLAGS'

# shortcut aliases
alias proj='cd ~/cadet/projects'
alias gproj='cd ~/cadet/git'
alias pdfs='cd /nfs/intrav2cdn/pdf/pdf'
alias cs='clear; screenfetch 2> /dev/null'
alias 42fc='bash ~/clones/42FileChecker/42FileChecker.sh'
alias 42fcnoi='bash ~/clones/42FileChecker/42FileChecker.sh --project "ft_printf" --path "~/cadet/projects/ft_printf"'

# git shortcuts
alias g='git'
alias gs='git status'
alias gl='git log --oneline --graph'
alias gd='git diff'
alias gc='git commit'
alias gp='git push'