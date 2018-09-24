#!/bin/bash

# MPC doesn't know what to connect to (I think)
# export MPD_HOST="/home/nani/.mpd/socket"
BLACK=#282a2e
WHITE=#c0c1b3
GREEN=#a3be8c
BLUE=#648187
BROWN=#2B303B
{
tab=" "
clock="$tab%{T1}%{T-}$tab"

PR="%{T2}%{T-}"
PL="%{T2}%{T-}"


desktop(){
  color=$BROWN
  title="$(bspc query -D -d --names | cut -c1-3)"
  index="$(bspc query -D -d --names | cut -c4)"
  if [ $index -eq 2 ]; then
    color=$BLACK
  fi
  case $title in
    "dev") dev="%{F$color}dev%{F$BLACK}";;
    "web") web="%{F$color}web%{F$BLACK}";;
    "mus") mus="%{F$color}mus%{F$BLACK}";;
    "mov") mov="%{F$color}mov%{F$BLACK}";;
    "img") img="%{F$color}img%{F$BLACK}";;
  esac;
  echo "%{B$WHITE}%{F$BLACK}%{T1}$tab$dev$web$mus$mov$img$tab%{T-}%{B$BLUE}%{F$WHITE}$PR%{F-}"
}

app(){
  # 's/\(.*\)-//' - strip everything before last slash
  # 's/\(.*\)–//' - Can you tell the difference? GIMP uses a real EM lol
  # 's/^[ \t]*\([[:alnum:]]*\)/\L\1/' - Remove white space and lowercase
  # title="$(bspc query -W -w | xtitle | sed 's/\(.*\)-//' | sed 's/\(.*\)–//' | sed 's/^[ \t]*\([[:alnum:]]*\)/\L\1/')"
  title=$(bspc query -W -w | xtitle)
  echo "%{F$WHITE}$tab$title %{B-}%{F$BLUE}$PR%{F-}"
}

music(){
  symbol=""
  if [[ $(mpc | grep -q 'playing') ]]; then
    symbol=""
  else
    symbol=""
  fi
  if ! mpc | grep -q 'playing|paused'; then
    echo "%{F$WHITE}$PL%{B$WHITE}%{F$BLACK}$tab$symbol$tab$(mpc current)"
  fi
}

volume(){
  symbol=""
  dev_id=$(pactl list short sinks | grep 'RUNNING' | cut -c 1)
  if [[ $dev_id != 1 ]]; then
    symbol=""
  else
    symbol=""
  fi
  echo "%{F$BLACK}%{B$WHITE}%{T1}$tab$symbol%{T2} $(pamixer --get-volume)%$tab%{T-}"
}

dat(){
  echo "%{F$BLUE}$PL%{B$BLUE}%{F$WHITE}$tab$(date "+%H:%M")$tab$PL%{B$WHITE}%{F$BLACK}$clock%{F$BLUE}$PL%{B$BLUE}%{F-}$tab$(date "+%Y-%m-%d")%{F-}%{B-}"
}

while :; do
  printf "%s\n" "$(desktop)$(app)%{r}$(music)%{A:exec pavucontrol:}$(volume)%{A}$(dat)"
  sleep 1
done
} 2> /dev/null | lemonbar -p -g 1880x16+18+8 -B $BLACK -F $WHITE  -f "Font Awesome"  -f "Anonymice Powerline Nerd Font-11" | sh ~/.config/bar/spawn.sh
