--  _   _                  _                 _
-- | | | |_   _ _ __  _ __| | __ _ _ __   __| |
-- | |_| | | | | '_ \| '__| |/ _` | '_ \ / _` |
-- |  _  | |_| | |_) | |  | | (_| | | | | (_| |
-- |_| |_|\__, | .__/|_|  |_|\__,_|_| |_|\__,_|
--        |___/|_|
--
-- -----------------------------------------------------
-- Lua configuration (Hyprland 0.55+).
-- Parallel port of the legacy hypr*.conf files.
-- Full documentation: https://wiki.hypr.land
--
-- This is NOT auto-loaded: Hyprland only auto-loads ~/.config/hypr/hyprland.lua.
-- To try it out:  Hyprland -c ~/.config/hypr/lua/hyprland.lua
-- (or move this file up to the config root once you're happy with it).

require("conf/monitors")
require("conf/autostart")
require("conf/cursor")
require("conf/environments")
require("conf/input")
require("conf/general")
require("conf/decoration")
require("conf/animations")
require("conf/gestures")
require("conf/misc")
require("conf/windowrules")
require("conf/binds")
