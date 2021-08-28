# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc



###########################################################################################
##                                                                                       ##
##               PAULO COSTA'S CUSTOMIZATION OF .bashrc                                  ##
##                                                                                       ##
###########################################################################################
#
#
# define custom system variables
export GIT_HOME="/mnt/PCData/git"
# some more ls aliases
alias lsd='ls -adl */'       # list directories only
alias lsa='ls -acFlh'        # show most information
alias lsas="ls -acFlhS"     # lsa sorted by size
alias lsat='ls -acFlht'      # lsa sorted by time
alias lsai="ls -acFlhi"      # lsa showing inode"
alias lsall="ls -acFlhiR"    # show it all
alias bashedit="subl ~/.bashrc"    # edit this file
alias cpa="sudo cp -apr"     # copy all
alias rma="sudo rm -fdr"     # remove all
#
# aliases to go to specific folders - all start with "go"
alias gopch="cd /mnt/PCData/PCHome"  # go to PCHome
alias gogit="cd $GIT_HOME" # go to git folder"
alias godice="cd $GIT_HOME/dice" # go to dice git folder
alias godiceData="cd $GIT_HOME/DICE/diceData" # go to diceData git folder 
alias goarak="cd $GIT_HOME/ARAKNID" # go to araknid git folder
alias gourref="cd $GIT_HOME/urref"
#
# playing around with neofetch
alias neopc="neofetch --cpu_temp C"
#
# aliases to git pull from known repos - all start with "pull"
#
alias pulldice="cd /mnt/PCData/git/DICE/dice && git pull" 
alias pulldiceData="cd /mnt/PCData/git/diceDAta && git pull" # to to diceData folder and git pull
#
# aliases to battery thresholds and related configurations
alias batfull="sudo tlp chargeonce BAT0" # start full charge immediately. Keeps the preset values.
alias battravel="sudo tlp fullcharge BAT0"  # bypass battery upper charging restrictions. Will charge everytime battery gets to low charge threshold. Resets to preset values after boot
alias batsave="sudo tlp setcharge 40 80 BAT0" # restores battery charging restrictions immediately (i.e. versus on next reboot)
alias batinfo="sudo tlp-stat -b" # shows battery status
alias batsysinfo="sudo tlp-stat" # shows power system status
#
# adding key folders  to the path:
PATH="$PATH:/mnt/PCData/PCHome/Documents/PC_prog/pcscripts"
#
# Starship install
eval "$(starship init bash)"
#
# Setting variables required by GPG
GPG_TTY=$(tty)
export GPG_TTY
#
# Setting library path required by GPG
# LD_LIBRARY_PATH=/usr/local/lib
# export LD_LIBRARY_PATH
#
# if [ -f "${HOME}/.gpg-agent-info" ]; then
#   . "${HOME}/.gpg-agent-info"
#  export GPG_AGENT_INFO
#  export SSH_AUTH_SOCK
#  export SSH_AGENT_PID
# fi
#
# Refresh gpg-agent tty in case user switches into an X session
# gpg-connect-agent updatestartuptty /bye >/dev/null
#
# Set SSH to use gpg-agent
#  unset SSH_AGENT_PID
#  if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
#    export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
#  fi

# Start the gpg-agent if not already running
# if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
#  gpg-connect-agent /bye >/dev/null 2>&1
# fi
#
# fix sound volume in thinkpad
# bash alsamax.sh
#
#
# start terminal with neofetch
#
neopc
#
#
###########################################################################################
##                                                                                       ##
##              END OF PAULO COSTA'S CUSTOMIZATION OF .bashrc                            ##
##                                                                                       ##
###########################################################################################

