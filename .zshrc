# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=4096
SAVEHIST=16384
setopt INC_APPEND_HISTORY autocd complete_aliases
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/avr/.zshrc'


autoload -Uz compinit
compinit
# End of lines added by compinstall

# highlight selection
zstyle ':completion:*' menu select

# environment
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

export GOBIN='/home/avr/.go/bin'
export GOPATH='/home/avr/.go:/home/avr/lab/conifer'

# aliases
source ~/.zsh/aliases

# prompt
PROMPT='%F{blue}%n@%F{green}%m%f:%~: '
