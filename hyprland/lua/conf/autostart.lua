-- Execute your favorite apps at launch.
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
-- `exec-once` in the old config maps to running commands on the
-- "hyprland.start" event.

hl.on("hyprland.start", function()
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waybar")
    hl.exec_cmd("swaync")
    hl.exec_cmd("iwgtk -i")
    hl.exec_cmd("hyprlauncher -i")
    hl.exec_cmd("ibus start --type wayland")
end)
