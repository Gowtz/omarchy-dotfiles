function fish_greeting
end
function fish_right_prompt
end

set -x OMARCHY_SCREENSHOT_DIR "$HOME/Pictures/Screenshot"

alias py "source ~/.dev/env/bin/activate.fish"
alias ll "eza -l --icons"

# alias tmux "tmux -u"

alias sql "docker exec -it db psql -u gowtz"

alias neo fastfetch
alias psss "ansible-vault view ~/.dev/pass/PASS.csv"
alias please sudo
alias f-conf "nvim ~/.config/fish/config.fish"
alias disp " ddcutil setvcp 10 "
alias btc "bluetoothctl connect"
alias lz "lazygit"
alias CleanDownloads "python ~/.scripts/cleanDownloads.py"
alias imdb "~/.scripts/.venv/bin/python ~/.scripts/MovieMeta.py"


# set -gx pnpm_home "/home/gowtham/.local/share/pnpm"
# if not string match -q -- $pnpm_home $path
#     set -gx path "$pnpm_home" $path
# end
# set -ux path $path $home/.flutter/bin

# opencode
# fish_add_path /home/gowtz/.opencode/bin

# pnpm
# set -gx pnpm_home "/home/gowtz/.local/share/pnpm"
# if not string match -q -- $pnpm_home $path
#   set -gx path "$pnpm_home" $path
# end
# pnpm end
