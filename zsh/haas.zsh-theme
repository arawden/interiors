function ssh_status(){
  if [[ -n "$SSH_CLIENT" ]] || [ -n "$SSH_TTY" ]; then
    echo "%{$fg[red]%}ssh:"
  fi
}

PROMPT="$(ssh_status)%{$fg[green]%}%n%{$fg[blue]%}@%m:%{$fg[green]%}%~: %{$reset_color%}"

RPROMPT="%{$fg[green]%}$(git_prompt_info)%{$reset_color%}"
