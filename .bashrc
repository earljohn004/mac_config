# .bashrc

PS1='\[\e[1;33m\][ _MAC_ \w ]\[\e[1;34m\] \u \n$ \[\033[0m\]'
export LSCOLORS='xcfxcxdxcxegedabagacad'
export PATH=$PATH:/Users/pheaab/Library/Android/sdk/platform-tools:/usr/local/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export term=xterm-256color

#USER DEFINED ALIAS
alias ls="ls -G"
#alias ll="ls -gGh --color=auto"
#alias la="ls -agGh --color=auto"
alias grep="grep --color=auto"
alias reload="source ~/.bashrc && source ~/.profile"
alias ..="cd .. && ls"
alias search="find | grep "
alias attach="tmux attach-session -t"
alias ibrew='arch -x86_64 /usr/local/bin/brew'

#navigate to local home directory

#ASIC ENVIRONMENT VARIABLES

alias cleanChecksum='find `pwd` -type f | grep checksum > /tmp/files && while read line; do mv -f $line $PWD/checksum; done < /tmp/files'
#grep find text in all files

function title_change(){
	echo -ne "\033]0;"$*"\007"
}

function grepp(){
	grep -rHn "${1}" *

}

function cscope_refresh(){
	cscope -b
}

function cscope_findsourcs(){
	echo ${current_dir}
	find  ${current_dir} .

}

alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias winlogin="ssh abaquie@CPAPSAZW10-0639"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
