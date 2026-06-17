-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Was: monitor=NAME,RESOLUTION@HZ,POSITION,SCALE in hyprland.conf

hl.monitor({ output = "eDP-1", mode = "1920x1200@60.00", position = "0x1440", scale = 1 })
hl.monitor({ output = "DP-5",  mode = "2560x1440@75.00", position = "2560x0", scale = 1 })
hl.monitor({ output = "DP-6",  mode = "2560x1440@59.95", position = "0x0",    scale = 1 })
