source /etc/bashrc

export PATH=$PATH:/home/cfrederickson/bin
export EDITOR='vi'
alias tmuxa='tmux attach -t'
alias tmuxn='tmux new -s'

#Make the history only go on what I've typed
bind '"\e[B":history-search-forward'
bind '"\e[A":history-search-backward'

source ~/.git-completion.sh
source ~/.git-prompt.sh
PS1='\n\u@\h $(__git_ps1 "[%s] ")\w\$ '

shopt -s cmdhist # Try to save multiline commands as a single unit.
shopt -s histappend # Append to, rather than overwrite, the history file when bash closes
shopt -s cdspell # Attempt to correct misspellings
shopt -s dirspell 2>/dev/null # Attempt to correct more misspellings
shopt -u mailwarn # I don't care about new mail.
shopt -s globstar 2>/dev/null # Make ** do a recursive wildcard.
shopt -s checkwinsize # Checks the window size after each command and, if necessary, updates the values of LINES and COLUMNS.

# Enable colored man pages. Stolen from http://fahdshariff.blogspot.com/2011/03/my-bash-profile-part-i.html
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

