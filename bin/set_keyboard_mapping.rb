#! /home/christian/.rbenv/shims/ruby

# Script to set my Razer keyboard layout to colemak without changing the laptop keyboard
# includes super fancy notification

def set_env
  @user = `who | head -n 1 | cut -d ' ' -f 1`.chomp
  ENV['DISPLAY'] = ":0.0"
  ENV['XAUTHORITY'] ||= "/home/#{@user}/.Xauthority"
  unless File.file? ENV['XAUTHORITY']
    log "can't find file: #{ENV['XAUTHORITY']}"
    log "Failed to establish Xauthority information!"
    log "Ensure the XAUTHORITY env variable is set, or that the /home/#{@user}/.Xauthority file exists"
    exit
  end
end

def notify
  img = File.join File.dirname(__FILE__), 'keyboard.png'
  img_opt = File.file?(img) ? " -i #{img}" : ''
  `notify-send#{img_opt} "Keyboard recognized" "Layout set to colemak"`
end

def set_to_colemak
  @input_ids.each do |id|
    `setxkbmap -device "#{id}" se colemak`
    notify
  end
end

def set_inputs
  @input_ids = [
    `xinput -list | grep Razer | grep keyboard | cut -d "=" -f 2 | cut -f 1`.chomp
  ].reject { |s| s.size < 1}
end

set_env
3.times do
  set_inputs
  if @input_ids.count > 0
    set_to_colemak
    break
  else
    notify "faaail"
  end
  sleep 1
end
sleep 5 # while we run as a service, the service won't get started again
