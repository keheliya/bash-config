export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export EDITOR=sublime

#Add color to grep
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

if [ $TERM_PROGRAM = "iTerm.app" ]
then
	export CLICOLOR=1
	export LSCOLORS=GxFxCxDxBxegedabagaced
else
	export CLICOLOR=1
	export LSCOLORS=ExFxBxDxCxegedabagacad
fi

#Add git bash completion
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Add color to man pages
man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

#Aliases & functions

pyserve() {
  python -m SimpleHTTPServer $1
}

function hgrep {
    history | grep "$*"
}

alias mvnci='mvn clean install'
alias mvncinotest='mvn clean install -Dmaven.test.skip=true'
alias mvncinotestoffline='mvn clean install -Dmaven.test.skip=true -o'
alias mvncinotestforce='mvn clean install -U -Dmaven.test.skip=true'
alias mvnciforce='mvn clean install -U'

alias mvnx='mvn clean install -Dwebdriver.chrome.driver=/Users/keheliya/dev/chomedriver/chromedriver'