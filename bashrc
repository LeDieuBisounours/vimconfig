#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
setxkbmap -layout us_qwerty-fr -option caps:escape


PROMPT_COMMAND=psf

psf()
{
	#if test "$(echo "$?")" == "0" ; then
		#PS1="\[\033[01;32m\]\w \[\033[01;34m\]$\[\033[00m\] "
	#else
		#PS1="\[\033[01;32m\]\w \[\033[01;31m\]$?\[\033[01;34m\]$\[\033[00m\] "
        PS1="42sh$ "
	#fi
}
unset color_prompt force_color_prompt


alias netctl='sudo netctl'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias i3lock='i3lock -i ~/Downloads/6789350-fantastic-sleeping-cat-wallpaper.png'
alias gitl1='git log --oneline'
alias git1l='git log --oneline'
#alias evi='evin'

export QSYS_ROOTDIR="/home/chat/intelFPGA_lite/18.1/quartus/sopc_builder/bin"
export PATH="/opt/android-build:$PATH"



export JAVA_HOME="/home/chat/andro/archives/jdk1.6.0_41"
export DERBY_HOME="/home/chat/andro/archives/jdk1.6.0_41/db"
export J2SDKDIR="/home/chat/andro/archives/jdk1.6.0_41"
export PATH="$PATH:/home/chat/andro/archives/jdk1.6.0_41/bin:/home/chat/andro/archives/jdk1.6.0_41/db/bin"
