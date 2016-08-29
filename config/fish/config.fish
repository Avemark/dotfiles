if test -e ~/.rbenv
	set -x PATH $HOME/.rbenv/bin $PATH
	status --is-interactive; and . (rbenv init -|psub)
end

set -x PATH ./.git/safe/../../bin $PATH
set -x PATH $HOME/.bin $PATH

source ~/.config/fish/prompt/prompt.fish

source /usr/share/autojump/autojump.fish

set fish_greeting