# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

 # use git-completion
source  ~/.git-completion.bash

# User specific aliases and functions
alias emacc='emacsclient -t'
alias emcc='emacsclient -t'
alias emc='emacsclient -t'
alias emd='emacs -daemon'
alias rjdl='sudo ~/sbin/rjfz/rjsupplicant/rjsupplicant.sh -d 0 -s internet -u M201272891 -p 920518 -n eth0'
alias goagent='~/sbin/goagent/local/goagent &'
alias smdir='cd /home/cpper/workspace/forklift/smartlift/src/app'
#alias eclipse='~/sbin/adt-bundle-linux-x86/eclipse/eclipse'
