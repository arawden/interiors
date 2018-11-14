# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=8192
SAVEHIST=4096
setopt appendhistory autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/avr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Environment
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='bat'

# Aliases
source ~/.aliases

# Prompt
PROMPT='%F{blue}%n@%F{green}%m%f:%~:'
