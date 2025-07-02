if status is-interactive
    # Commands to run in interactive sessions can go here
set PATH /usr/bin:/usr/local/bin:/home/oksi/.bin
set -g fish_greeting
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
end

alias ls="exa -d --group-directories-first --show-symlinks --colour-scale=all --colour=always --git --icons"
alias mc="musikcube"
set --export BROWSER "/usr/bin/firefox"
set --export RUST_BACKTRACE "full"
set --export RUST_BACKTRACE "1"
set MOZ_ENABLE_WAYLAND "1"
 set XDG_CURRENT_DESKTOP "Hyprland"

