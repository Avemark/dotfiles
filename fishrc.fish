set -x PATH $HOME/.rbenv/bin $PATH
. (rbenv init -|psub)
set -x PATH ./.git/safe/../../bin/ $PATH

source ~/.git/git.fish
source ~/.prompt/prompt.fish
source ~/.ruby/ruby.fish

source /usr/share/autojump/autojump.fish
