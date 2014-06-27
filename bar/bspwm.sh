#!/bin/bash
BG=#bebeb4
FG=#ffffff

{
desktop(){
  echo -n $(bspc query -D -d);
}

battery(){
  echo -n $(acpi --battery | awk '{gsub(/,/, "");} {print $4}')
}

dat(){
  echo -n $(date "+%H:%M %Y-%m-%d")
} 

vol(){
  echo -n $(amixer | if grep -q "off"; then echo -n "0!"; else echo -n $(amixer | awk '/Front Left: Playback/ {print $5}' | sed 's/\[//g;s/\]//g');fi)
}
mus(){
  echo -n $(mpc current)
}
paus(){
  echo -n $(mpc | if grep -q "paused"; then echo -n "▮▮"; else echo -n "♫"; fi)
}
while :; do
  printf "%s\n" "%{R} $(desktop) %{R}%{r}%{R} $(paus) %{R} $(mus) %{R} $(vol)%% %{R} $(battery)%% %{R} $(dat) %{R}"
sleep 1
done
} 2> /dev/null | bar -p -g 1920x18 -B "#bebeb4" -F "#ffffff" -f "-*-tewi-medium-*-*-*-11-*-*-*-*-*-*-*" &
