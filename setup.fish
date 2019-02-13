#! /usr/bin/env fish

if not test -e ~/.rbenv
	echo "installing rbenv..."
	git clone -q https://github.com/rbenv/rbenv.git ~/.rbenv
	echo "installing ruby-build"
	git clone -q https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
end

if not test -e /usr/share/autojump/autojump.fish
	echo "installing autojump"
	pacman -S autojump --noconfirm
end