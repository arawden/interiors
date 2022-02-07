#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# ranger cd script
source ~/.zsh/ranger-cd

# environment
export COMPOSE_HTTP_TIMEOUT=300 # docker-compose

fpath=(~/.stripe /Users/avery.rawden/.zprezto/modules/prompt/functions /Users/avery.rawden/.zprezto/modules/git/functions /Users/avery.rawden/.zprezto/modules/completion/external/src /Users/avery.rawden/.zprezto/modules/helper/functions /Users/avery.rawden/.zprezto/modules/utility/functions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/5.8/functions)

autoload -Uz compinit && compinit -i
