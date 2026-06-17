#! /usr/bin/fish
set target /etc/sysctl.d/50-unrestrict_dmesg
if test -L $target
    exit 0
end

if test -e $target
    echo "Target $target exists and is not a symlink"
    exit 1
end

echo "symlinking $target => ./sysctl/50-unrestrict_dmesg"
sudo ln -s (pwd)/sysctl/50-unrestrict_dmesg $target
