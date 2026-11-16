-- -----------------------------------------------------
-- General workspace rules
-- -----------------------------------------------------

hl.workspace_rule({
    workspace = "1",
    monitor = "DP-2",
})

hl.workspace_rule({
    workspace = "2",
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = "3",
    monitor = "DP-2",
})

hl.workspace_rule({
    workspace = "4",
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = "5",
    monitor = "DP-2",
})

hl.workspace_rule({
    workspace = "6",
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = "7",
    monitor = "DP-2",
})

hl.workspace_rule({
    workspace = "8",
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = "9",
    monitor = "DP-2",
})

hl.workspace_rule({
    workspace = "10",
    monitor = "DP-1",
})

---hl.workspace_rule({
---    workspace = "5",
---    on_created_empty = "keepassxc",
---})
---
---hl.workspace_rule({
---    workspace = "3",
---    on_created_empty = "webcord",
---})

-- -----------------------------------------------------
-- Workspace autostart
-- -----------------------------------------------------
local workspace_programs = {
    ["5"] = { "keepassxc" },
    ["3"] = { "webcord" },
}

hl.on("workspace.created", function(ws)
	if not ws.is_empty then return end

	-- use programs associated with window id by default
	local program = ws.id and workspace_programs[tostring(ws.id)]
		or workspace_programs[ws.name]
	if program == nil then return end

	local cmd, provided_rules = table.unpack(program)
	-- shallow-copy the rules table so we can add the workspace to it
	local rules = {}
	if provided_rules ~= nil then
		for k, v in provided_rules do rules[k] = v end
	end
	-- force program to open on desired workspace, even if focus is moved to another
	-- workspace before the program window appears
	rules.workspace = (ws.id and tostring(ws.id) or ws.name) .. " silent"
	-- run it!
	hl.exec_cmd(cmd, rules)
end)
