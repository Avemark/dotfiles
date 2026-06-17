-- See https://wiki.hypr.land/Configuring/Basics/Binds/
-- Bind-flag mapping from the old config:
--   bind   -> hl.bind(...)
--   bindm  -> { mouse = true }
--   bindl  -> { locked = true }            (works while locked)
--   bindel -> { locked = true, repeating = true }

local mainMod = "SUPER"

-- Apps
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("ghostty"))                                  -- Open Ghostty
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("dolphin"))                                        -- Open the file manager
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("pidof 1password && 1password --lock; hyprlock"))  -- Lock

hl.bind("CTRL + SPACE", hl.dsp.exec_cmd("tofi-drun --drun-launch=true"))
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.exec_cmd("1password --quick-access"))

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -zm region --clipboard-only"))

-- Actions
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())                       -- Close current window
hl.bind(mainMod .. " + M", hl.dsp.exit())                                       -- Exit Hyprland
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))          -- Toggle tiling/floating
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))   -- Fullscreen
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())                              -- dwindle pseudo

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })  -- Move window
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })  -- Resize window

-- SwayNotificationCenter
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t -sw"))

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

-- Media (requires playerctl)
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

-- Discord push-to-talk passthrough
hl.bind("ISO_Level3_Shift", hl.dsp.pass({ window = "class:discord" }))

-- Ghostty quick terminal
hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.global("toggle_quick_terminal"))

-- Brightness
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })
