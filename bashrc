[ -e /etc/bashrc ] && . /etc/bashrc

#PS1='\u@[\w] >> '
PS1='\[\e[01;32m\]\u@\[\e[00m\]\[\e[01;34m\][\w]\[\e[00m\] >> '
export PS1

alias ls="ls --color=auto"
alias l="ls"
alias la="ls -a"
alias ll="ls -l"
alias grep="grep --color=auto"
#alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

export W='/auto/CHS-CCSP/peli3/ControlPlane'
export LD_LIBRARY_PATH='/auto/CHS-CCSP/peli3/ControlPlane/build/pc/bbhm/cc/':$LD_LIBRARY_PATH
export cc='/auto/CHS-CCSP/peli3/ControlPlane/build/pc/bbhm/cc/'

####  enable the colour display in man  by payne -8-13
export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[01;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'
####################################
export PATH='/auto/CHS-CCSP/peli3/apps/klocwork/bin/':$PATH

fefeffgfojrigjorgjprgprpgrg
