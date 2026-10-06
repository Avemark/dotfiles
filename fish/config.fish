set -x PATH $HOME/.bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
    
if test -e ~/.rbenv
    set -x PATH $HOME/.rbenv/bin $PATH
    status --is-interactive; and . (rbenv init -|psub)
end

type -q starship; and starship init fish | source

set fish_greeting
set -x EDITOR vim

set -x PATH .git/safe/../../bin $PATH
# Created by `pipx` on 2025-09-03 14:06:28
set PATH $PATH /home/avis/.local/bin

# opencode
fish_add_path /home/avis/.opencode/bin
