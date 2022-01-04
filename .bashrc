# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
HISTSIZE=
HISTFILESIZE=

#Prompt magic
export PS1="\h:\W \u\$"
PROMPT_COMMAND=__prompt_command # Function to generate PS1 after commands
__prompt_command() {
	local EXIT="$?"
	PS1=""
	local RCol='\[\e[0m\]'
	local Red='\[\e[0;31m\]'
	local Gre='\[\e[0;32m\]'
	local BYel='\[\e[0;33m\]'
	local BBlu='\[\e[0;34m\]'
	local Pur='\[\e[0;35m\]'
	if [ $EXIT != 0 ]; then
		PS1+="${Red}\u${RCol}" # Red if exitcode non 0
	else
		PS1+="${Gre}\u${RCol}"
	fi
	PS1+="${RCol}@${BBlu}\h ${Pur}\W${BYel}$ ${RCol}"
}
