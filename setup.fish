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

if not test -e /etc/fonts/conf.avail/*-ttf-inconsolata.conf
	echo "installing inconsolata font"
	pacman -S ttf-inconsolata --noconfirm
end

if not type -q git
	echo "installing git"
	pacman -S git --noconfirm
end

# untested, fix when running on next machine without yay
if not type -q yay
	echo "installing yay AUR helper"
	git clone https://aur.archlinux.org/yay/yay.git
	cd yay
	makepkg -si
	cd ..
	rm -rf yay
end

if not test -e /usr/share/icons/Flat-Remix-Red/index.theme
	echo "installing flat-remix icon package"
	yay -S flat-remix --noconfirm
end

if not type -q vim
	echo "installing vim"
	yay -S vim --noconfirm
end

if not type -q dunst
	echo "installing dunst"
	yay -S dunst --noconfirm
end

if not type -q blueman-manager
	echo "installing blueman manager"
	yay -S blueman --noconfirm
end
