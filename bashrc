#.bashrc loads only in subshells. Find most configuration here.
# modified 2015-01-10

# shell variables
#PS1="\n$PS1 "   #PS1 is prompt variable
export PS1="\u:\W > "
PS2=": "

# environment variables
# the path is initially set to "/bin:/sbin:/usr/bin:/usr/sbin"
export PATH="/usr/local/bin:/Users/paulcox/bin:$PATH"
export TERM=xterm-256color
export PYTHONPATH='/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/'
export GREP_COLOR="1;32;40"
export GREP_OPTIONS='--color=auto'
# colorize ls output
export CLICOLOR=1
# use yellow for directories
export LSCOLORS=Dxfxcxdxbxegedabagacad
#export LSCOLORS=exfxcxdxbxegedabagacad


# aliases
alias ll='ls -lakh'
alias last='history | tail -15'
alias gitnew='/usr/local/git/bin/git'
alias python3='/usr/local/bin/python3'

# colorize man output
man() {
        env LESS_TERMCAP_mb=$'\E[01;31m' \
        LESS_TERMCAP_md=$'\E[01;38;5;74m' \
        LESS_TERMCAP_me=$'\E[0m' \
        LESS_TERMCAP_se=$'\E[0m' \
        LESS_TERMCAP_so=$'\E[38;5;246m' \
        LESS_TERMCAP_ue=$'\E[0m' \
        LESS_TERMCAP_us=$'\E[04;38;5;146m' \
        man "$@"
    }

#added for git autocomplete
if  [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi


# ANSI color codes
# Attributes:		Text Color:		Background:
# 	0 reset all			30 black		40 black
#	1 bright			31 red			41 red
#	2 dim				32 green		42 green
#	4 underscore		        33 yellow		43 yellow
#	5 blink				34 blue			44 blue
#	7 reverse			35 purple		45 purple
#	8 hidden			36 cyan			46 cyan
#					37 white		47 white 
