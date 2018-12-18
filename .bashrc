#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source /etc/profile.d/vte.sh

alias ls='ls --color=auto'
export EDITOR=vim

alias lock='/usr/bin/i3lock-fancy-rapid 4 4'

alias private-mount='ecryptfs-mount-private'
alias private-unmount='ecryptfs-umount-private '

W='\[\e[0m\]'
BW='\[\e[1;37m\]'
BY='\[\e[1;33m\]'

function emoji()
{
	if [ "$?" -eq "0" ]
	then
		EMOJIS='👌💦'
	else
		EMOJIS='🙅🔥'
	fi

	PS1="[${BW}\u${W}@${BY}\h${W} ${EMOJIS} \W]\$ "
}

PROMPT_COMMAND=emoji
#export QT_SCALE_FACTOR=2

export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

# Temporary alias'
alias ssh-413='ssh -i /home/chris/Documents/ece/ece413/awskey.pem ec2-user@ec2-54-219-141-28.us-west-1.compute.amazonaws.com'
