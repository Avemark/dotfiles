if test -e ~/.rbenv
	set -x PATH $HOME/.rbenv/bin $PATH
	status --is-interactive; and . (rbenv init -|psub)
end

set -x PATH ./.git/safe/../../bin $PATH
set -x PATH $HOME/.bin $PATH

set -x ANDROID_HOME /usr/lib/android-sdk

if test -e /usr/share/autojump/autojump.fish
	source /usr/share/autojump/autojump.fish
end

source ~/.config/fish/prompt/prompt.fish
source ~/.config/fish/git/git.fish

set fish_greeting
