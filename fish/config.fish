set -x PATH $HOME/.bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
    
if test -e ~/.rbenv
    set -x PATH $HOME/.rbenv/bin $PATH
    status --is-interactive; and . (rbenv init -|psub)
end

[ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish
type -q starship; and starship init fish | source

set fish_greeting
set -x EDITOR vim

set -x PATH .git/safe/../../bin $PATH