export PS1="\\$ "

# plan9port
PLAN9=$HOME/plan9port-master export PLAN9
PATH=$PATH:$PLAN9/bin export PATH

# ccache
export PATH="/usr/lib/ccache/:$PATH"
export CCACHE_DIR="/var/ccache/ccache"

export LD_LIBRARY_PATH="/usr/lib"

# acme font
alias acme="acme -f /mnt/font/'DejaVu Sans Mono'/10a/font"

extract() {
    if [ -z ${1} ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
        echo "Usage: extract <archive> [directory]"
        echo "Example: extract presentation.zip."
        echo "Valid archive types are:"
        echo "tar.bz2, tar.gz, tar.xz, tar, bz2, gz, tbz2,"
        echo "tbz, tgz, lzo, iso, rar, zip, 7z, xz, txz, lzma and tlz"
    else
        case "$1" in
            *.tar.bz2|*.tbz2|*.tbz)         tar xvjf "$1" ;;
            *.tgz)                          tar zxvf "$1" ;;
            *.tar.gz)                       tar xvzf "$1" ;;
            *.tar.xz)                       tar xvJf "$1" ;;
            *.tar)                          tar xvf "$1" ;;
            *.zip)                          unzip "$1" ;;
            *.7z|*.rar|*.iso)		        7z x "$1" ;;
            *.lzo)                          lzop -d  "$1" ;;
            *.gz)                           gunzip "$1" ;;
            *.bz2)                          bunzip2 "$1" ;;
            *.Z)                            uncompress "$1" ;;
            *.xz|*.txz|*.lzma|*.tlz)        xz -d "$1" ;;
            *) echo "Sorry, '$1' could not be decompressed." ;;
        esac
    fi
}

# make directory and cd there
mcd() { [[ "$1" ]] && mkdir -p "$1" && cd "$1"; }
