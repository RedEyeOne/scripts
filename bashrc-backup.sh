#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


cmatrix -s
echo "WELCOME"
echo ""
cowsay -f beavis.zen "Stay up to date on your system with the command updateme" 

export PATH="$HOME/.scripts/boot:$PATH"
export PATH="$HOME/.scripts/vitals:$PATH"

alias torbrowser="flatpak run org.torproject.torbrowser-launcher 2>/dev/null &"
alias spotify="flatpak run com.spotify.Client 2>/dev/null &"
alias discord="flatpak run com.discordapp.Discord >/dev/null 2>&1 &"
alias bottles="flatpak run com.usebottles.bottles >/dev/null 2>&1 &"
alias fixmon="$HOME/.scripts/boot/force-right-monitor.sh"
alias updateme="$HOME/.scripts/vitals/system-update.sh"
alias runkali="sudo docker run --tty --interactive kalilinux/kali-rolling"
alias heroicgames="flatpak run com.heroicgameslauncher.hgl"
