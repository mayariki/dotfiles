# use emacs key bind.
bindkey -e

export LANG=ja_JP.UTF-8

autoload -U compinit
compinit

# aiases
alias emacs=emacs-24.2




# setopt correct
setopt auto_cd
setopt auto_pushd
setopt auto_list
setopt list_packed
setopt auto_menu
setopt magic_equal_subst
setopt auto_param_slash
setopt noautoremoveslash
setopt nolistbeep

# color settings
autoload colors
colors

setopt prompt_subst
setopt prompt_percent
setopt transient_rprompt

login_info="%F{green}%n@%m%{%f%}"
command_date=" %D{%Y/%m/%d %H:%M}% "

PROMPT="${login_info}${command_date} %{%B%}%#%{%b%} "
RPROMPT="[%{%B%F{white}%K{magenta}%}%~%{%k%f%b%}]"

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
setopt hist_ignore_dups
setopt hist_ignore_space
setopt extended_history
setopt inc_append_history
setopt share_history
setopt no_flow_control

# auto completion
zstyle ':completion:*' format '%B%d%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:default' list-colors ""
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} r:|[._-]=*'
zstyle ':completion:*' completer \
    _oldlist _complete _match _history _approximate
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' verbose yes
zstyle ':completion:sudo:*' environ PATH="$SUDO_PATH:$PATH"
setopt complete_in_word
setopt glob_complete
setopt hist_expand
setopt no_beep
