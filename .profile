
export ENV=$HOME/.kshrc

# Misc Plan9Port settings. 
# Browser used by web(1) and thus plumber.
BROWSER=firefox

# Plumb files instead of starting new editor.
EDITOR=E
unset FCEDIT VISUAL

# Let gs find the plan9port document fonts.
GS_FONTPATH=$PLAN9/postscript/font
        
# Make sure mpage prints in letter mode.
MPAGE="-t -bLetter"
 
# Prompt (is almost a no-op in bash)
#H=`hostname | sed 's/\..*//'`
#PS1=$H'=; '
       
# Get rid of backspace characters in Unix man output.
PAGER=nobs

#SBCL Core
export SBCL_HOME=/usr/lib64/sbcl

# Default font for Plan 9 programs.
font=$PLAN9/font/plan9fonts/terminus/ter-u14n.font

PLAN9=/opt/plan9 export PLAN9
PATH=$PATH:$PLAN9/bin export PATH

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/go/bin

# if you want to use rc instead of your shell within acme, uncomment the following line
#shell=rc

# Equivalent variables for rc(1).
home=$HOME
prompt="term % "
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
 
#$HOME/autostartx


