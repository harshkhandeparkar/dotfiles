local PRIMARY_MONITOR = "eDP-1"
local SECONDARY_MONITOR = "DP-1"
local BACKUP_MONITOR = "HDMI-A-1"

hl.monitor({
	output = PRIMARY_MONITOR, mode = "1920x1200@144", position = "auto-right", scale = 1.25
})
hl.monitor({
	output = SECONDARY_MONITOR, mode = "preferred", position = "0x0"
})
hl.monitor({
	output = BACKUP_MONITOR, mode = "preferred", position = "0x0"
})

-- Startup applications
hl.on("hyprland.start", function()
	-- hl.exec_cmd("obsidian", { workspace = "1", no_focus = true })
	hl.exec_cmd("thunderbird", { workspace = "1 silent" })
	hl.exec_cmd("slack", { workspace = "2 silent" })
	hl.exec_cmd("sleep 5 && discord --ozone-platform-hint=auto", { workspace = "2 silent" }) -- Sleep because for whatever reason discord doesn't open otherwise
	hl.exec_cmd("spotify", { workspace = "3 silent" })

	-- Monitor 2 stuff
	hl.exec_cmd("sleep 10 && firefox", { workspace = "6 silent" }) -- The delay is because firefox otherwise opens on whatever workspace is active
	hl.exec_cmd("kdeconnectd") -- KDE CONNECT!
end)

-- WORKSPACE RULES
-- Put workspaces 1-5 on monitor 1
hl.workspace_rule({ workspace = "1", monitor = PRIMARY_MONITOR, default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = PRIMARY_MONITOR, default = true, persistent = true })
hl.workspace_rule({ workspace = "3", monitor = PRIMARY_MONITOR, default = true, persistent = true })
hl.workspace_rule({ workspace = "4", monitor = PRIMARY_MONITOR, default = true, persistent = true })
hl.workspace_rule({ workspace = "5", monitor = PRIMARY_MONITOR, default = true, persistent = true })

-- Put workspaces 6-10 on monitor 2
hl.workspace_rule({ workspace = "6", monitor = SECONDARY_MONITOR, default = true, persistent = true })
hl.workspace_rule({ workspace = "7", monitor = SECONDARY_MONITOR, default = true, persistent = true })
hl.workspace_rule({ workspace = "8", monitor = SECONDARY_MONITOR, default = true, persistent = true })
hl.workspace_rule({ workspace = "9", monitor = SECONDARY_MONITOR, default = true, persistent = true })
hl.workspace_rule({ workspace = "10", monitor = SECONDARY_MONITOR, default = true, persistent = true })

hl.window_rule({
	match = {
		class = "thunderbird",
	},
	no_initial_focus = true,
})

hl.window_rule({
    match = { class = "[Dd]iscord" },
    no_initial_focus = true,
    focus_on_activate = false,
    workspace = "2",
})

hl.window_rule({
    match = { class = "[Ss]lack" },
    no_initial_focus = true,
    workspace = "2",
})

hl.window_rule({
    match = { class = "[Oo]bsidian" },
    no_initial_focus = true,
})
