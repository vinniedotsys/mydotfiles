-- ----------------------------------------------------- 
-- Monitor Setup
-- name: "Double écran"
--
-- ----------------------------------------------------- 

hl.monitor({
    output = "DP-2",
    mode = "highrr",
    position = "0x0",
    scale = "1",
})

hl.monitor({
    output = "DP-1",
    mode = "highrr",
    position = "1920x0",
    scale = "1.25",
    vrr = 2,
})
