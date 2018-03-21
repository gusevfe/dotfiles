source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

. $HOME/.shellrc.load

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "\en" backward-char
bindkey "\ei" forward-char
bindkey "\el" backward-word
bindkey "\ey" forward-word
bindkey "\ej" beginning-of-line
bindkey "\e;" end-of-line
bindkey "\eu" up-line-or-beginning-search
bindkey "\ee" down-line-or-beginning-search

bindkey "^n" backward-delete-char
# bindkey "^i" delete-char # this collides with TAB
bindkey "^l" backward-delete-word
bindkey "^y" delete-word
bindkey "^j" backward-kill-line
bindkey "^;" kill-line
