function smart_wd(){
  if [[ -z $(pwd | grep /mnt) ]]; then
    echo %~
  else
    echo %2d
  fi
}

PROMPT="%{$fg[yellow]%}%n::%m%{$fg[red]%}:$(smart_wd): %{$reset_color%}"
RPROMPT="%{$fg[green]%}$(git_prompt_info)%{$reset_color%}"
