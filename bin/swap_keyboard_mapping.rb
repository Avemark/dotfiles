#! /usr/bin/env ruby

if `xmodmap -pke | grep " 57" | cut -d '=' -f 2 | cut -c 2`.chomp == 'k'
  # we are running tarmak already
  `xmodmap ~/.config/xmodmap/reset.xmodmap`
else
  # we want to run tarmak
  `xmodmap ~/.config/xmodmap/tarmak2.xmodmap`
end
