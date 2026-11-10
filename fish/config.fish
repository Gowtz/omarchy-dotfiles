function fish_greeting
end
function fish_right_prompt
end

# Ctrl+Backspace sends 0x08 (same byte as Ctrl+H) and fish binds neither by default,
# so it does nothing. Map both to delete the previous word, matching Alt+Backspace.
bind ctrl-backspace backward-kill-word
bind ctrl-h backward-kill-word

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
alias imdb "~/.scripts/.venv/bin/python ~/.scripts/obsidian_media.py movie"
# add movies/books to the Obsidian vault (IMDb/OMDb + Goodreads)
alias md "~/.scripts/.venv/bin/python ~/.scripts/obsidian_media.py"
alias dy="dig +short $argv @dns.toys"

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

#pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

pyenv init - fish | source
pyenv virtualenv-init - | source


# Added by Antigravity CLI installer
set -gx PATH "/home/gowtz/.local/bin" $PATH

# Add UV package amnager
source $HOME/.local/share/../bin/env.fish
