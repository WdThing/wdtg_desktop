# Aliases

if set -q EDITOR
    alias editor="$EDITOR "
else
    alias editor="nvim "
end
alias fishconfig="editor ~/.config/fish/config.fish"
alias dropcache="sync && sudo sysctl -w vm.drop_caches=3"
alias cleancoredump="sudo rm -f /var/lib/systemd/coredump/*"
alias cleanjournal="sudo journalctl --vacuum-size=5M"
alias freespace="cleancoredump; cleanjournal; echo 'y' | yay -Scc; sudo pacman -Rns (pacman -Qtdq)"
alias mgh="editor ~/.config/MangoHud/MangoHud.conf"
alias swayconfig="editor ~/.config/sway/config"
alias i3config="editor ~/.config/i3/config"
alias hyprconfig="editor ~/.config/hypr/hyprland.conf"

# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons' # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons' # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -e '^\.'" # show only dotfiles

# Common use
alias grubup="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='hwinfo --short' # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl" # Sort installed packages according to size in MB
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias update='sudo pacman -Syu'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
