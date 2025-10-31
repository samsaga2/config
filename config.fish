if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

if test -f ~/.config/fish/env.fish
    source ~/.config/fish/env.fish
end
