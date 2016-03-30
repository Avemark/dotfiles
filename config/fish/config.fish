set -x PATH $HOME/.rbenv/bin $PATH
. (rbenv init -|psub)
set -x PATH ./.git/safe/../../bin $PATH
set -x PATH $HOME/.bin $PATH

source ~/.config/fish/prompt/prompt.fish

source /usr/share/autojump/autojump.fish
