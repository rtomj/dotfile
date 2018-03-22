# Misc Plan9Port settings. 

# Browser used by web(1) and thus plumber.
BROWSER=vivaldi-stable

# Plumb files instead of starting new editor.
EDITOR=E
unset FCEDIT VISUAL

# Let gs find the plan9port document fonts.
GS_FONTPATH=$PLAN9/postscript/font
        
# Make sure mpage prints in letter mode.
MPAGE="-t -bLetter"
 
# Prompt (is almost a no-op in bash)
H=`hostname | sed 's/\..*//'`
PS1=$H'=; '
       
alias acme="acme -f $PLAN9/font/plan9fonts/terminus/ter-u14n.font"

# Get rid of backspace characters in Unix man output.
PAGER=nobs

# Default font for Plan 9 programs.
font=$PLAN9/font/plan9fonts/terminus/ter-u14n.font
#font=$PLAN9/font/plan9fonts/tamzen/tamzen14.font

PLAN9=/usr/lib/plan9 export PLAN9
PATH=$PATH:$PLAN9/bin export PATH

SHELL=rc

# Equivalent variables for rc(1).
home=$HOME
prompt="$H=; "
user=$USER
        
export \
    BROWSER\
    EDITOR\
    FCEDIT\
	H\
    PAGER\
    PLAN9\
	PATH\
    font\
    home\
    prompt\
    user\
 
$HOME/autostartx

