################
# 1. Aliases   #
################

fpath=(~/.zsh $fpath)
alias ls='ls -C -G -l --color=auto'
alias grep='grep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias c='clear'
alias less='less --quiet'
alias s='cd ..'
alias df='df -h'
alias du='du -h'
alias m='mutt -y'
alias md='mkdir'
alias rd='rmdir'

#######################################
# 2. Prompt and key binings           #
#######################################

bindkey '^A'    beginning-of-line       # Home
bindkey '^E'    end-of-line             # End
bindkey '^D'    delete-char             # Del
bindkey '[3~' delete-char             # Del
bindkey '[2~' overwrite-mode          # Insert
bindkey '[5~' history-search-backward # PgUp
bindkey '[6~' history-search-forward  # PgDn

autoload -Uz vcs_info
precmd_vcs_info() {
    vcs_info
    if [[ -z ${vcs_info_msg_0_} ]]; then
        vcs_info_msg_0_=''
    fi
}
precmd_functions=()
precmd_functions+=(precmd_vcs_info)
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats ' [%b]'

setopt PROMPT_SUBST

CL_NORMAL='%{[0m%}'	# %{[0m%} = normal
CL_GREY='%{[0;30m%}'	# %{[0;30m%} = grey
CL_RED='%{[0;31m%}'	# %{[0;31m%} = red
CL_GREEN='%{[0;32m%}'	# %{[0;32m%} = green
CL_YELLOW='%{[0;33m%}'	# %{[0;33m%} = yellow
CL_BLUE='%{[0;34m%}'	# %{[0;34m%} = blue
CL_VIOLET='%{[0;35m%}'	# %{[0;35m%} = violet
CL_CYAN='%{[0;36m%}'	# %{[0;36m%} = cyan
CL_SPECIAL='%{[1;30m%}'	# %{[1;30m%} = bold grey
PR_USER="[${CL_GREY}%n${CL_NORMAL} @"
PR_HOST=" ${CL_YELLOW}%m${CL_NORMAL}] %# "
PR_USER="${CL_CYAN}%n${CL_NORMAL}"
PR_HOST=" ${CL_YELLOW}%m${CL_NORMAL} %# "
PROMPT="${PR_USER}${PR_HOST}"
RPROMPT="%(?..[$CL_VIOLET%B%?%b]) [${CL_RED}%~${CL_NORMAL}]\${vcs_info_msg_0_}"

# In screen or rxvt
if [ "$TERM" = "linux" -o "$TERM" = "screen" -o "$TERM" = "rxvt" ]
then
  bindkey '[1~' beginning-of-line       # Home
  bindkey '[4~' end-of-line             # End
fi

# xterm
if [ "$TERM" = "xterm" ]
then
  bindkey '[H'  beginning-of-line       # Home
  bindkey '[F'  end-of-line             # End
fi

# gnome-terminal
if [ "$COLORTERM" = "gnome-terminal" ]
then
  bindkey '^[OH'  beginning-of-line       # Home
  bindkey '^[OF'  end-of-line             # End
fi

# xterm window title
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%n@%m: %~\a"}
    ;;
esac

# ls colors
if [ -x /usr/bin/dircolors ]
then
  if [ -r ~/.dir_colors ]
  then
    eval "`dircolors ~/.dir_colors`"
  elif [ -r /etc/dir_colors ]
  then
    eval "`dircolors /etc/dir_colors`"
  else
    eval "`dircolors`"
  fi
fi


###########################################
# 3. zsh options (cf 'man zshoptions')    #
###########################################

# no beeps
unsetopt beep
unsetopt hist_beep
unsetopt list_beep
# prevent overriding of files
unsetopt clobber
# log out with ^D
unsetopt ignore_eof
# display exit errors of programs
setopt print_exit_value
# ask for confirmation when doing rm *
unsetopt rm_star_silent
setopt nullglob

# Autocompletion settings
setopt auto_remove_slash
setopt chase_links
setopt hist_verify
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home

unsetopt bg_nice
unsetopt hup


###############################################
# 4. Command history settings                 #
###############################################

export HISTORY=1000
export SAVEHIST=1000
export HISTFILE=$HOME/.history
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_find_no_dups

###########################################
# 5. Command options completion           #
###########################################

zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' use-compctl false

autoload -U compinit
compinit

export FULLNAME="Adrien CONRATH"
export EDITOR=vim
export PATH=$PATH:/home/adrien/bin
export MANPATH=/opt/local/share/man:$MANPATH
export PAGER=less

umask 066
alias l='ls -l -H'
alias c='clear'
alias less='less --quiet'
alias s='cd ..'
alias df='df -h'
alias du='du -h'
alias m='mutt -y'
alias md='mkdir'
alias rd='rmdir'
alias tree='tree -C'

export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias v=vim

export FULLNAME="Adrien CONRATH"
export EMAIL="adrienconrath@gmail.com"

###########################################
# 6. Other things                         #
###########################################

# Vim bindings
set -o vi

# Source a second config file in case I want some stuff to not be committed
if [[ -f ~/.zshrc-2 ]]; then
    source ~/.zshrc-2
fi


