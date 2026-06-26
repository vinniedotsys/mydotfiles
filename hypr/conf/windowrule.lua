-- ----------------------------------------------------- 
-- Window rules
-- ----------------------------------------------------- 


hl.window_rule({
    match = {
        class = "^(Microsoft-edge)$",
    },
    float = false,
})

hl.window_rule({
    match = {
        class = "^(Brave-browser)$",
    },
    float = false,
})

hl.window_rule({
    match = {
        class = "^(Chromium)$",
    },
    float = false,
})

hl.window_rule({
    match = {
        class = "^(pavucontrol)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "^(blueman-manager)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "^(nm-connection-editor)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "^(qalculate-gtk)$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "(timeshift-gtk)",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "(main.py)",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = "^(chiaki-ng)$",
    },
    float = false,
})

hl.window_rule({
    match = {
        class = "(Mullvad VPN)",
    },
    float = true,
    move = "((monitor_w*1)-window_w-16) ((monitor_h*1)-window_h-44)",
    pin = true,
})

hl.window_rule({
    match = {
        class = "(com.ml4w.calendar)",
    },
    float = true,
    move = "((monitor_w*1)-window_w-16) ((monitor_h*1)-window_h-44)",
    pin = true,
    size = "400 400",
})

-- Browser Picture in Picture
hl.window_rule({
    match = {
        title = "^(Picture-in-Picture)$",
    },
    float = true,
    pin = true,
    move = "69.5% 4%",
})
