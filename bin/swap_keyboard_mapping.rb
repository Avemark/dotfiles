#! /home/christian/.rbenv/shims/ruby
def notify(msg)
  img = File.join File.dirname(__FILE__), 'keyboard.png'
  `notify-send -i #{img} KeyboardSwapper "#{msg}"`
end

ALT_LAYOUT = 'tarmak2'

if `xmodmap -pke | grep " 57" | cut -d '=' -f 2 | cut -c 2`.chomp == 'k'
  # we are running tarmak already
  notify 'reset to qwerty'
  `xmodmap ~/.config/xmodmap/reset.xmodmap`
else
  # we want to run tarmak
  notify "set to #{ALT_LAYOUT}"
  `xmodmap ~/.config/xmodmap/#{ALT_LAYOUT}.xmodmap`
end
