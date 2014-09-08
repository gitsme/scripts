#~/.bash_aliases
alias mimo='cd ~/.wine/drive_c/Program\ Files\ \(x86\)/Mimo/ && wine Mimo.exe'
alias sc2='cd ~/.wine/drive_c/StarCraft\ II/ && wine StarCraft\ II.exe'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then                                      
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some ls aliases
alias ll='ls -alFh'
alias lt='ls -alFhtr'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# df - sorted by free size, and is human readable2
#df -B 1 | sort -n -k4 | awk '{if ($1~"^/dev/sda"){print $1 "\t" ($2/1024^3)"G\t" ($3/1024^3)"G\t" ($4 / 1024^3)"G\t" $5 "\t" $6}}'
alias dfh='df -B 1 | sort -n -k4 | humanread'

humanread()
{ 
    awk \
    '{ \
        if($1~"^/dev/sda") \
            print $1, $2/1024^3"G", $3/1024^3"G", $4/1024^3"G", $5, $6 \
    }';
}

alias PMS='/home/stig/pms/pms-current/PMS.sh'

