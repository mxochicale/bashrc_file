



#============================================================
#
#  ALIASES AND FUNCTIONS
#
#  Arguably, some functions defined here are quite big.
#  If you want to make this file smaller, these functions can
#  be converted into scripts and removed from here.
#  Lear more at http://tldp.org/LDP/abs/html/sample-bashrc.html
#  
# 
#
#============================================================

	## how to use 

#cd
#vim .bashrc 
#and add the following lines



#-------------------
# Personnal Aliases
#-------------------

alias c='clear'
alias h='history'
alias ll="ls -liah"
alias ..='cd ..'



# Setting PATH of the TeX Live binaries
export PATH=/usr/local/texlive/2015/bin/x86_64-linux/:$PATH


#http://superuser.com/questions/611538/is-there-a-way-to-display-a-countdown-or-stopwatch-timer-in-a-terminal


function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}


