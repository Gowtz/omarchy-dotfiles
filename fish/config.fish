function fish_greeting
end
function fish_right_prompt
end
function config
  git --git-dir=$HOME/.config/dotfiles.git --work-tree=$HOME $argv
end

alias py "source ~/.dev/env/bin/activate.fish"
alias xampp "sudo /opt/lampp/manager-linux-x64.run"
alias ll "eza -lF --icons"
alias llt "eza --icons --tree -L 2"
alias mysql "sudo /opt/lampp/bin/mysql"
# alias tmux "tmux -u"
alias bsp "bspc config top_padding 0"
alias nll "nmcli device wifi list"
alias nmc "nmcli device wifi connect"
# alias ollama "docker exec -it ollama ollama run llama3.2"
alias sql "docker exec -it DB psql -U gowtz"
alias changebg "feh --bg-fil --randomize ~/Pictures/wallpaper/random/*"
alias neo fastfetch
alias psss "ansible-vault view ~/.dev/Pass/PASS.csv"
alias please sudo
alias f-conf "nvim ~/.config/fish/config.fish"
alias pn pnpm
alias vim nvim
alias bat batcat
alias disp " ddcutil setvcp 10 "
alias btc "bluetoothctl connect"
alias pc "pactl set-default-sink"

# set -gx PNPM_HOME "/home/gowtham/.local/share/pnpm"

# if not string match -q -- $PNPM_HOME $PATH
#     set -gx PATH "$PNPM_HOME" $PATH
# end
#
set -Ux PATH $PATH $HOME/.flutter/bin
set -Ux PATH $PATH $HOME/.flutter/bin

# opencode
fish_add_path /home/gowtz/.opencode/bin

# pnpm
set -gx PNPM_HOME "/home/gowtz/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
