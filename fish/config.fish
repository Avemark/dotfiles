set PATH $PATH /home/avis/.local/bin
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.bin $PATH
set PATH .git/safe/../../bin $PATH

[ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish
type -q starship; and starship init fish | source

set fish_greeting
set -x EDITOR vim
