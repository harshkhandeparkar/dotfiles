local mainMod = "SUPER"
local altMod = "ALT"
local lessUsedMod = "CTRL + ALT"

hl.bind(altMod .. "+ T", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. "+ Q", hl.dsp.window.close())
hl.bind(mainMod .. "+ V", hl.dsp.window.float({action = "toggle"}))
hl.bind(mainMod .. "+ P", hl.dsp.window.pseudo({action = "toggle"}))
hl.bind(altMod .. "+ F", hl.dsp.window.fullscreen({action = "toggle", mode = "maximized"}))
hl.bind(altMod .. "+ SHIFT + F", hl.dsp.window.fullscreen_state({client = 2, internal = -1})) -- Pseudo full screen - The application thinks it is fullscreen but the size remains the same

hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("socat - UNIX-CONNECT:/run/user/1000/walker/walker.sock"), { release = true })

hl.bind("F1", hl.dsp.exec_cmd("sh $HOME/.config/hypr/scripts/osd audio-mute"), { repeating = true }) -- F1:  Toggle audio mute

-- Volume Controls
hl.bind("F2", hl.dsp.exec_cmd("sh $HOME/.config/hypr/scripts/osd audio-up"), { repeating = true }) -- F2: Increase volume (Corrected mapping based on comments)
hl.bind("F3", hl.dsp.exec_cmd("sh $HOME/.config/hypr/scripts/osd audio-down"), { repeating = true }) -- F3: Decrease volume

-- Brightness Controls
hl.bind("F9", hl.dsp.exec_cmd("sh $HOME/.config/hypr/scripts/osd brightness-down"), { repeating = true }) -- F9: Increase brightness (Brightness up)
hl.bind("F10", hl.dsp.exec_cmd("sh $HOME/.config/hypr/scripts/osd brightness-up"), { repeating = true }) -- F10: Decrease brightness (Brightness down)

-- Media Controls (Music Player)
hl.bind("F5", hl.dsp.exec_cmd("playerctl previous")) -- F5: Previous track
hl.bind("F6", hl.dsp.exec_cmd("playerctl play-pause")) -- F6: Play/pause
hl.bind("F7", hl.dsp.exec_cmd("playerctl next")) -- F7: Next track

-- Screenshot keybinds
-- Main key = PRINTSCR
-- Copy modifer = CTRL
-- Capture area modifier = SHIFT
-- Capture window modifier = ALT

-- bind = ,          PRINT, exec, grimblast --notify --cursor copysave output
-- bind = CTRL,      PRINT, exec, grimblast --notify --cursor copy output
-- bind = ALT,       PRINT, exec, grimblast --notify copysave active
-- bind = CTRLALT,   PRINT, exec, grimblast --notify copy active
-- bind = SHIFT,     PRINT, exec, grimblast --notify copysave area
-- bind = CTRLSHIFT, PRINT, exec, grimblast --notify copy area

-- -- Zen mode (Miscellaneous)
-- bind = $mainMod, Z, exec, $HOME/.config/hypr/scripts/toggle_zen_mode

-- -- WINDOW AND MONITOR KEYBINDS
-- -- Window focus switching
hl.bind(altMod .. "+ h", hl.dsp.focus({direction = "left"})) -- Move focus to the window to the left
hl.bind(altMod .. "+ l", hl.dsp.focus({direction = "right"})) -- Move focus to the window to the right
hl.bind(altMod .. "+ j", hl.dsp.focus({direction = "down"})) -- Move focus to the window below
hl.bind(altMod .. "+ k", hl.dsp.focus({direction = "up"}))   -- Move focus to the window above
hl.bind(altMod .. "+ TAB", hl.dsp.focus({urgent_or_last = true}))  -- Switch focus to the previously focused window
hl.bind(altMod .. "+ SHIFT + TAB", hl.dsp.window.cycle_next())    -- Cycle focus between windows on the current workspace

-- -- Window resizing
local resizePixels = 50 -- Number of pixels to resize by each time

hl.bind(altMod .. "+ SHIFT + J", hl.dsp.window.resize({ relative = true, x = 0, y = resizePixels }))  -- Resize active window downwards
hl.bind(altMod .. "+ SHIFT + K", hl.dsp.window.resize({ relative = true, x = 0, y = -resizePixels })) -- Resize active window upwards
hl.bind(altMod .. "+ SHIFT + L", hl.dsp.window.resize({ relative = true, x = resizePixels, y =0 }))   -- Resize active window rightwards
hl.bind(altMod .. "+ SHIFT + H", hl.dsp.window.resize({ relative = true, x = -resizePixels, y = 0 })) -- Resize active window leftwards

-- -- Window movement
hl.bind(lessUsedMod .. "+ SHIFT + H", hl.dsp.window.move({direction = "left"})) -- Move window to the left
hl.bind(lessUsedMod .. "+ SHIFT + L", hl.dsp.window.move({direction = "right"})) -- Move window to the right
hl.bind(lessUsedMod .. "+ SHIFT + J", hl.dsp.window.move({direction = "down"})) -- Move window below
hl.bind(lessUsedMod .. "+ SHIFT + K", hl.dsp.window.move({direction = "up"}))   -- Move window above

-- -- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. "+ mouse:272", hl.dsp.window.drag(), { mouse = true })    -- MAINMOD+LMB DRAG: Move window
hl.bind(mainMod .. "+ mouse:273", hl.dsp.window.resize(), { mouse = true })  -- MAINMOD+RMB DRAG: Resize window

-- -- Monitor keybinds
hl.bind(mainMod .. "+ TAB", hl.dsp.focus({monitor = "+1"}))                                -- Change focus to the next monitor
hl.bind(mainMod .. "+ SHIFT + TAB", hl.dsp.window.move({monitor = "+1", follow = false})) -- Move window to the next monitor

-- -- Scroll through existing workspaces
hl.bind(mainMod .. "+ J", hl.dsp.focus({workspace = "+1"})) -- Workspace +1 (below)
hl.bind(mainMod .. "+ K", hl.dsp.focus({workspace = "-1"})) -- Workspace -1 (above)

-- -- Move active window to workspace -1/+1
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({workspace = "+1"}))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({workspace = "-1"}))

-- -- Switch workspaces (on monitor 1, which are 1-5) with mainMod + [1-5]
hl.bind(mainMod .. " + 1", hl.dsp.focus({workspace = "1"}))
hl.bind(mainMod .. " + 2", hl.dsp.focus({workspace = "2"}))
hl.bind(mainMod .. " + 3", hl.dsp.focus({workspace = "3"}))
hl.bind(mainMod .. " + 4", hl.dsp.focus({workspace = "4"}))
hl.bind(mainMod .. " + 5", hl.dsp.focus({workspace = "5"}))

-- -- Switch workspaces (on monitor 2, which are 6-10) with mainMod + SHIFT + [1-5]
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.focus({workspace = "6"}))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.focus({workspace = "7"}))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.focus({workspace = "8"}))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.focus({workspace = "9"}))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.focus({workspace = "10"}))
