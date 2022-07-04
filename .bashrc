#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Display the current Git branch in the Bash prompt.

function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "[$(git branch 2> /dev/null | awk '/\*/{print $2}')]";
    fi
}

alias ls='ls --color=auto'
PS1='\e[93m[\u]\e[32m[\W]\e[34m$(git_branch)\e[31m $ \e[37m'
