local PRIMARY_MONITOR = "eDP-1"
local SECONDARY_MONITOR = "DP-1"
local BACKUP_MONITOR = "HDMI-A-1"

hl.monitor({
	output = PRIMARY_MONITOR, mode = "1920x1200@144", position = "auto-right"
})
hl.monitor({
	output = SECONDARY_MONITOR, mode = "preferred", position = "0x0"
})
hl.monitor({
	output = BACKUP_MONITOR, mode = "preferred", position = "0x0"
})

-- # Startup applications
-- # exec-once = spotify & (sleep 3 && kitty cava)
-- # exec-once = hyprctl dispatch exec [workspace 1 silent] -- fluent-reader --ozone-platform-hint=auto
-- exec-once = hyprctl dispatch exec [workspace 1 silent] thunderbird
-- exec-once = hyprctl dispatch exec [workspace 1 silent] obsidian
-- exec-once = hyprctl dispatch exec [workspace 2 silent] slack
-- exec-once = hyprctl dispatch exec [workspace 2 silent] sleep 5 && discord --ozone-platform-hint=auto # Sleep because for whatever reason discord doesn't open otherwise
-- exec-once = hyprctl dispatch exec [workspace 3 silent] spotify
--
-- # Monitor 2 stuff
-- exec-once = hyprctl dispatch exec [workspace 6 silent] sleep 10 && firefox # The delay is because firefox otherwise opens on whatever workspace is active
-- exec-once = kdeconnectd # KDE CONNECT!
-- # exec-once = eiskaltdcpp-gtk
--
-- # WORKSPACE RULES
-- # For some reason ranges did not work
-- workspace = 1,  monitor:eDP-1, default:true, persistent:true # Put workspaces 1-5 on monitor 1
-- workspace = 2,  monitor:eDP-1, default:true, persistent:true # Put workspaces 1-5 on monitor 1
-- workspace = 3,  monitor:eDP-1, default:true, persistent:true # Put workspaces 1-5 on monitor 1
-- workspace = 4,  monitor:eDP-1, default:true, persistent:true # Put workspaces 1-5 on monitor 1
-- workspace = 5,  monitor:eDP-1, default:true, persistent:true # Put workspaces 1-5 on monitor 1
-- workspace = 6,  monitor:$MONITOR_2, default:true, persistent:true # Put workspaces 6-10 on monitor 2
-- workspace = 7,  monitor:$MONITOR_2, default:true, persistent:true # Put workspaces 6-10 on monitor 2
-- workspace = 8,  monitor:$MONITOR_2, default:true, persistent:true # Put workspaces 6-10 on monitor 2
-- workspace = 9,  monitor:$MONITOR_2, default:true, persistent:true # Put workspaces 6-10 on monitor 2
-- workspace = 10, monitor:$MONITOR_2, default:true, persistent:true # Put workspaces 6-10 on monitor 2
--
-- windowrule = no_initial_focus on, match:class [Ff]luent-reader
-- windowrule = no_initial_focus on, match:class thunderbird
--
-- windowrule = no_initial_focus on, match:class [Dd]iscord
-- windowrule = focus_on_activate false, match:class [Dd]iscord
-- windowrule = workspace 2, match:class [Dd]iscord
-- windowrule = no_initial_focus on, match:class [Ss]lack
-- windowrule = workspace 2, match:class [Ss]lack
--
-- # Obsidian
-- windowrule = no_initial_focus on, match:class [Oo]bsidian
--
