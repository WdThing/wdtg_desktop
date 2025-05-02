## Source from conf.d and other fish files
source ~/.config/fish/conf.d/done.fish
# source ~/.config/fish/fish_aliases

## Welcome message
function fish_greeting
end

# Format man pages
set -x MANROFFOPT -c
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low

## Environment setup
# Apply .profile: use this to put fish compatible .profile stuff in
if test -f ~/.fish_profile
    source ~/.fish_profile
end

# Add ~/.local/bin to PATH
if test -d ~/.local/bin
    if not contains -- ~/.local/bin $PATH
        set -p PATH ~/.local/bin
    end
end

## Source aliases

if test -f ~/.config/fish/fish_aliases.fish
    source ~/.config/fish/fish_aliases.fish
end

# Used for user-specific aliases that are not included in https://github.com/WdThing/wdtg_desktop
if test -f ~/.config/fish/fish_aliases_ext.fish
    source ~/.config/fish/fish_aliases_ext.fish
end
