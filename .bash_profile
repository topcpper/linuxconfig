# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
export PATH

PATH=$PATH:~/sbin/adt-bundle-linux-x86/sdk/tools:/home/cpper/sbin/adt-bundle-linux-x86/eclipse
export PATH

PATH=$PATH:/opt/EmbedSky/4.3.3/bin
