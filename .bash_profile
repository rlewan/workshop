# Add custom utilities directory to the path
export PATH="$PATH:~/bin"


# Bash completion
if [ -n "$(command -v brew)" ]
then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
	. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

if [ -f .maven_bash_completion.bash ]; then
	. .maven_bash_completion.bash
fi


# Aliases
alias la='ls -a'
alias ll='ls -lha'
alias l='ls -lh'


# Terminal colors
export CLICOLOR=1
export LSCOLORS="GxFxCxDxBxegedabagaced"
alias grep='grep --color=auto'


# Prompt customization
export PS1="\[\033[32m\]\u@\h: \[\033[33;1m\]\w\[\033[m\]\n\$ "