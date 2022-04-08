# .bashrc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PS1='\[\e[1;33m\][ _MAC_ \w ]\[\e[1;34m\] \u \n$ \[\033[0m\]'
export LSCOLORS='xcfxcxdxcxegedabagacad'

export term=xterm-256color

#USER DEFINED ALIAS
alias ls="ls -FHG"
#alias ll="ls -gGh --color=auto"
#alias la="ls -agGh --color=auto"
alias grep="grep --color=auto"
alias reload="source ~/.bashrc && source ~/.profile"
alias ..="cd .. && ls"
alias search="find | grep "
alias attach="tmux attach-session -t"
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias winlogin="ssh abaquie@CPAPSAZW10-0639"

#navigate to local home directory

#ASIC ENVIRONMENT VARIABLES

alias cleanChecksum='find `pwd` -type f | grep checksum > /tmp/files && while read line; do mv -f $line $PWD/checksum; done < /tmp/files'
#grep find text in all files
function recurse(){
	grep -rHn "${1}" *
}


function set_contract(){
	cleos set contract blubridge /Volumes/Development/others/BluBridge/smart_contracts/wax/build/blubridge/ 
}

export PATH=$PATH:/Users/pheaab/.local/share/solana/install/active_release/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

