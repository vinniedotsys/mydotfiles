
hl.window_rule({
    match = {
        class = "(.*org.pulseaudio.pavucontrol.*)",
    },
    float = true,
    size = "700 600",
    center = true,
    pin = true,
})

-- Waypaper
hl.window_rule({
    match = {
        class = "(.*waypaper.*)",
    },
    float = true,
    size = "900 700",
    center = true,
    pin = true,
})

-- SwayNC
hl.layer_rule({
    match = {
	namespace = "swaync-control-center",
	namespace = "swaync-notification-window",
   },
   blur = true,
   ignore_alpha = 0.5,

})

-- Blueman Manager
hl.window_rule({
    match = {
        class = "(blueman-manager)",
    },
    float = true,
    size = "800 600",
    center = true,
})

-- Gnome Calculator
hl.window_rule({
    match = {
        class = "(org.gnome.Calculator)",
    },
    float = true,
    center = true,
    size = "700 600",
})

-- Emoji Picker Smile
hl.window_rule({
    match = {
        class = "(it.mijorus.smile)",
    },
    float = true,
    pin = true,
    move = "((monitor_w*1)-window_w-40) (90)",
})

-- Hyprland Share Picker
hl.window_rule({
    match = {
        class = "(hyprland-share-picker)",
    },
    float = true,
    pin = true,
    center = true,
    size = "600 400",
})

-- General floating
hl.window_rule({
    match = {
        class = "(dotfiles-floating)",
    },
    float = true,
    size = "1000 700",
    center = true,
})

-- Floating for Ghostty
hl.window_rule({
    match = {
        class = "(ml4w.dotfiles.floating)",
    },
    float = true,
    size = "1000 700",
    center = true,
    pin = true,
})

-- Float and center file pickers
hl.window_rule({
    match = {
        class = "xdg-desktop-portal-gtk",
        title = "^(Open.*Files?|Save.*Files?|All Files|Save)",
    },
    float = true,
    center = true,
})

-- XDG Desktop Portal
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- QT
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- GDK
hl.env("GDK_SCALE", "1")

-- Toolkit Backend
-- TODO: manual review — malformed env on line 54: GDK_BACKEND,wayland,x11,*
hl.env("CLUTTER_BACKEND", "wayland")

-- Mozilla
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Set the cursor size for xcursor
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Ozone
hl.env("OZONE_PLATFORM", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")

-- XWayland
hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})


