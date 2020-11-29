alias lt='ls -lhtr'
export PS1='\[\e[32m\][\u@\h $PWD]\[\e[34;1m\]$\[\e[0m\] '
alias grep='grep --color'
alias rm='rm -i'

alias jn='jupyter notebook --no-browser --port=8889'
alias jl='jupyter-lab --no-browser --port=8890'

alias find='find . -maxdepth 1 -type f'

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# added by qinyi on June 29, 2020 to get two-line prompts
PS1="[\[\033[0m\]\w]\[\033[0m\]\n\[\033[1;34m\]\u\[\033[1;34m\]@\[\033[34m\]\h:\[\033[34;1m\]-> \[\033[0m\]"
