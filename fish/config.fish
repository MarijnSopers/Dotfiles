# -----------------------------------------------------
# ~/.config/fish/config.fish
# -----------------------------------------------------

# If not running interactively, don't do anything
if not status is-interactive
    return
end
set -x PS1 '[$USER@hostname (prompt_pwd)]\$ '

# Define Editor
set -x EDITOR nvim

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias c 'clear'
alias nf 'neofetch'
alias pf 'pfetch'
alias ll 'eza -al --icons'
alias lt 'eza -a --tree --level=1 --icons'
alias shutdown 'systemctl poweroff'
alias v '$EDITOR'
alias vim '$EDITOR'
alias ts '~/dotfiles/scripts/snapshot.sh'
alias matrix 'cmatrix'
alias wifi 'nmtui'
alias od '~/private/onedrive.sh'
alias rw '~/dotfiles/waybar/reload.sh'
alias winclass 'xprop | grep "CLASS"'
alias dot 'cd ~/dotfiles'
alias cleanup '~/dotfiles/scripts/cleanup.sh'



# -----------------------------------------------------
# Window Managers
# -----------------------------------------------------

alias qtile 'startx'
# Hyprland with Hyprland

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs 'git status'
alias ga 'git add'
alias gc 'git commit -m'
alias gp 'git push'
alias gpl 'git pull'
alias gst 'git stash'
alias gsp 'git stash; git pull'
alias gcheck 'git checkout'
alias gcredential 'git config credential.helper store'

# -----------------------------------------------------
# SCRIPTS
# -----------------------------------------------------


# -----------------------------------------------------
# VIRTUAL MACHINE
# -----------------------------------------------------



# -----------------------------------------------------
# EDIT CONFIG FILES
# -----------------------------------------------------



# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------

alias notes '$EDITOR ~/notes.txt'

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------

alias update-grub 'sudo grub-mkconfig -o /boot/grub/grub.cfg'


# -----------------------------------------------------
# SCREEN RESOLUTIONS
# -----------------------------------------------------

# Qtile
alias res1 'xrandr --output DisplayPort-0 --mode 2560x1440 --rate 120'
alias res2 'xrandr --output DisplayPort-0 --mode 1920x1080 --rate 120'

set -x PATH "/usr/lib/ccache/bin/" $PATH

# -----------------------------------------------------
# DEVELOPMENT
# -----------------------------------------------------


# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
starship init fish | source

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
#cat ~/.cache/wal/sequences

# -----------------------------------------------------
# PFETCH if on wm
# -----------------------------------------------------
echo ""
if string match -r "pts" (tty)
    pfetch
else
    if test -f /bin/qtile
        echo "Start Qtile X11 with command Qtile"
    end
    if test -f /bin/hyprctl
        echo "Start Hyprland with command Hyprland"
    end
end
 #to source ~/.config/fish/alias.fish

fish_add_path /home/marijn/.spicetify
