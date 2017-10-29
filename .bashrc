source ~/.nvm/nvm.sh
export LC_ALL="en_US.UTF-8"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
source ~/git-completion.bash
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
PS1="\[$GREEN\]\u\[${NORMAL}\]@\[${RED}\]\h\[${NORMAL}\] \W\$(__git_ps1) \$ "
alias ll="ls -la" 
alias grep="grep --color=auto"
export TERM=xterm-256color
export AWS_ACCESS_KEY="AKIAIF4MHF7ORQTGRKFQ"
export AWS_SECRET_KEY="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"
