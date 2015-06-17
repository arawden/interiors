function smart_wd(){
  if [[ -z $(pwd | grep /mnt) ]]; then
    echo %~
  else
    echo %2d
  fi
}
function ssh_status(){
  if [[ -n "$SSH_CLIENT" ]] || [ -n "$SSH_TTY" ]; then
    echo "%{$fg[red]%}(ssh)"
  fi
}

PROMPT="$(ssh_status)%{$fg[yellow]%}%n::%m%{$fg[red]%}:$(smart_wd): %{$reset_color%}"
RPROMPT="%{$fg[green]%}$(git_prompt_info)%{$reset_color%}"
