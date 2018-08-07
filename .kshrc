#
# .kshrc 
#

# Vi mode
#set -o vi

# Prompt

PS1='${USER:=$(id -un)}'".:\$PWD $(
	if (( USER_ID )); then print \$; else print \#; fi) "

# Export sbcl core location
#export SBCL_HOME=/usr/lib/sbcl

# Aliases
alias reload='source ~/.kshrc'
alias c='clear'
alias r='ranger'
alias ..='cd ..'
alias ed='ed -p\*'
alias elv='elvish'
alias ll='ls -l'
alias mkdir='mkdir -p -v'
alias sx='startx'
alias su='su -'
alias rd='rm -r'
alias :q='exit'
alias n='nnn'
alias ka='killall'
alias p3='python3'

# git aliases
alias g='git'
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gc='git commit'

# nnn
#export NNN_DE_FILE_MANAGER=thunar
export NNN_USE_EDITOR=1

# List files and grep to search
function lg {
	ls | grep "$1"
}

# Make a directory and cd there
function mkcd {
	mkdir -pv "$1" && cd "$1"
}

# Extract archives 
function extract {
        case "$1" in
            *.tar.bz2|*.tbz2|*.tbz)         tar xvjf "$1" ;;
            *.tgz)                          tar zxvf "$1" ;;
            *.tar.gz)                       tar xvzf "$1" ;;
            *.tar.xz)                       tar xvJf "$1" ;;
            *.tar)                          tar xvf "$1" ;;
            *.rar)                          7z x "$1" ;;
            *.zip)                          unzip "$1" ;;
            *.7z|*.iso)                     7z x "$1" ;;
            *.lzo)                          lzop -d  "$1" ;;
            *.gz)                           gunzip "$1" ;;
            *.bz2)                          bunzip2 "$1" ;;
            *.Z)                            uncompress "$1" ;;
            *.xz|*.txz|*.lzma|*.tlz)        xz -d "$1" ;;
            *) echo "Sorry, '$1' could not be decompressed." ;;
        esac
}

# Compress a directory and create a *.tar.Z archive
# For learning purposes. Use tar.xz to archive things. 
function Z {
	tar cvf - "$1" | compress -c > "$2".tar.Z
}

# Create a tar.xz archive
function tarxz {
	tar cf - "$1" | xz -z - > "$1".tar.xz
}

# Create a backup file
function bk { 
	cp -r "$1" "$2".bk 
} 

# Restore backup file
function rbk {
	cp -r "$1".bk "$2"
}

# Cd to a directory and list contents
function cls {
	cd -- "$1" && ls
}

function ii {
    echo -e "\n${RED}Kernel Information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Memory stats :$NC " ; free
    echo -e "\n${RED}Disk Usage :$NC " ; df -Th
    echo
}

# Extract rpms
function erpm {
	rpm2cpio "$1" | cpio -idmB
}

# Use go package 'waveform' to generate  wavefrom from wav or flac
function mkwave {
	cat "$1" | waveform -x 5 -y 2 > "$2".png
}

# word count with grep
function grepwc {
	grep -o "$1" "$2" | wc -l
}

# Compiling C programs with pcc
function cpcc {
	pcc "$1" && mv a.out "$2"
}
