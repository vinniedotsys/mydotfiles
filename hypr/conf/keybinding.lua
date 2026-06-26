-- ----------------------------------------------------- 
-- Key bindings
-- ----------------------------------------------------- 

-- SUPER KEY

local mainMod = "SUPER"
local HYPRSCRIPTS = "~/.config/hypr/scripts"
local SCRIPTS = "~/.config/ml4w/scripts"

-- Applications
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("~/.config/ml4w/settings/terminal.sh"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("~/.config/ml4w/settings/browser.sh"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("~/.config/ml4w/settings/filemanager.sh"))
hl.bind(mainMod .. " + CTRL + E", hl.dsp.exec_cmd("~/.config/ml4w/settings/emojipicker.sh"))
hl.bind(mainMod .. " + CTRL + C", hl.dsp.exec_cmd("~/.config/ml4w/settings/calculator.sh"))

-- Windows
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/toggleallfloat.sh"))
--bind = $mainMod, J, togglesplit # Toggle split
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
hl.bind(mainMod .. " + G", hl.dsp.group.toggle())
--bind = $mainMod, K, swapsplit # Swapsplit

-- Actions
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/toggle-animations.sh"))
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/screenshot.sh"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/screenshot.sh"))
hl.bind(mainMod .. " + CTRL + Q", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("waypaper --random"))
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("waypaper"))
hl.bind(mainMod .. " + ALT + W", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/wallpaper-automation.sh"))
hl.bind(mainMod .. " + CTRL + RETURN", hl.dsp.exec_cmd("rofi -show drun -replace -i"))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/keybindings.sh"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("~/.config/waybar/launch.sh"))
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd("~/.config/waybar/toggle.sh"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/loadconfig.sh"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(SCRIPTS .. "/cliphist.sh"))
hl.bind(mainMod .. " + CTRL + T", hl.dsp.exec_cmd("~/.config/waybar/themeswitcher.sh"))
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd("~/.config/ml4w/apps/ML4W_Dotfiles_Settings-x86_64.AppImage"))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/hyprshade.sh"))
hl.bind(mainMod .. " + ALT + G", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/gamemode.sh"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("missioncenter"))

-- Workspaces
hl.bind(mainMod .. " + code:10", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + code:11", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + code:12", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + code:13", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + code:14", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + code:15", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + code:16", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + code:17", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + code:18", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + code:19", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT + code:10", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + code:11", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + code:12", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + code:13", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + code:14", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + code:15", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + code:16", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + code:17", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + code:18", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + code:19", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.focus({ workspace = "m-1" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + CTRL + down", hl.dsp.focus({ workspace = "empty" }))

-- Passthrough SUPER KEY to Virtual Machine
hl.bind(mainMod .. " + P", hl.dsp.submap("passthru"))
hl.define_submap("passthru", function()
    hl.bind("SUPER + Escape", hl.dsp.submap("reset"))
end)

-- Fn keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -q s +10%"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -q s 10%-"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl set-source-mute @DEFAULT_SOURCE@ toggle"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("~/.config/ml4w/settings/calculator.sh"))
hl.bind("XF86Lock", hl.dsp.exec_cmd("hyprlock"))
hl.bind("XF86Tools", hl.dsp.exec_cmd("alacritty --class dotfiles-floating -e ~/.config/ml4w/apps/ML4W_Dotfiles_Settings-x86_64.AppImage"))

hl.bind("code:238", hl.dsp.exec_cmd("brightnessctl -d smc::kbd_backlight s +10"))
hl.bind("code:237", hl.dsp.exec_cmd("brightnessctl -d smc::kbd_backlight s 10-"))

-- Discord
hl.bind("code:49", hl.dsp.send_shortcut({ mods = "CTRL+SHIFT", key = "key:47", window = "class:^(WebCord)$" }))
