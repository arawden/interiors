alias irc='weechat'
alias yolo='pacaur -Syu'
alias music="ncmpcpp"
alias mutracker="rtorrent -n -o import=~/.mutracker.rc"
alias whatcd="rtorrent -n -o import=~/.whatcd.rc"
alias demonoid="rtorrent -n -o import=~/.demonoid.rc"
alias muradio="mpd ~/.mpd/mutant.conf"
alias tar-gz="tar -xzvf"
alias compile-cpp="g++ -o"
alias yolo="pacaur -Syyu"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias wifi="nm-applet & nmgui"
alias irc="weechat"
alias tmuxh="tmux new-session -c ~/"
alias slack="scudcloud"
alias pyserver="python -m http.server 8000 &>/dev/null"
alias vscode="visual-studio-code"
alias flux="xflux -l 49 &"

oxo () {
  curl -F'file=@$1' https://0x0.st
}

