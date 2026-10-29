local mainMod = SUPER
local altMod = ALT
local lessUsedMod = CTRLALT

hl.bind(altMod .. "+ T", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. "+ Q", hl.dsp.window.close())
hl.bind(mainMod .. "+ V", hl.dsp.window.float({action = "toggle"}))
hl.bind(mainMod .. "+ P", hl.dsp.window.pseudo({action = "toggle"))
hl.bind(altMod .. "+ F", hl.dsp.window.fullscreen({action = "toggle"}))
hl.bind(altMod .. "+ SHIFT + F", hl.dsp.window.fullscreenstate({client = 2, internal = -1})) -- Pseudo full screen - The application thinks it is fullscreen but the size remains the same
bind =  $lessUsedMod,   L, exec, hyprlock
bind =  $mainMod,       C, centerwindow, 1
bind =  $lessUsedMod,   J, exec, swaync-client --toggle-panel

bindr = SUPER, SUPER_L, exec, socat - UNIX-CONNECT:/run/user/1000/walker/walker.sock

binde = , F1,  exec, sh $HOME/.config/hypr/scripts/osd audio-mute      # F1:  Toggle audio mute
binde = , F3,  exec, sh $HOME/.config/hypr/scripts/osd audio-down      # F2:  Increase volume
binde = , F4,  exec, sh $HOME/.config/hypr/scripts/osd audio-up        # F3:  Decrease volume
binde = , F9,  exec, sh $HOME/.config/hypr/scripts/osd brightness-down # F9:  Increase brightness
binde = , F10, exec, sh $HOME/.config/hypr/scripts/osd brightness-up   # F10: Decrease brightness

binde = , F5, exec, playerctl previous   # F5: Previous track
binde = , F6, exec, playerctl play-pause # F6: Play/pause
binde = , F7, exec, playerctl next       # F7: Next track

-- Screenshot keybinds
-- Main key = PRINTSCR
-- Copy modifer = CTRL
-- Capture area modifier = SHIFT
-- Capture window modifier = ALT

bind = ,          PRINT, exec, grimblast --notify --cursor copysave output
bind = CTRL,      PRINT, exec, grimblast --notify --cursor copy output
bind = ALT,       PRINT, exec, grimblast --notify copysave active
bind = CTRLALT,   PRINT, exec, grimblast --notify copy active
bind = SHIFT,     PRINT, exec, grimblast --notify copysave area
bind = CTRLSHIFT, PRINT, exec, grimblast --notify copy area

# Zen mode (Miscellaneous)
bind = $mainMod, Z, exec, $HOME/.config/hypr/scripts/toggle_zen_mode

## WINDOW AND MONITOR KEYBINDS
# Window focus switching
bind = $altMod,       h,   movefocus, l        # Move focus to the window to the left
bind = $altMod,       l,   movefocus, r        # Move focus to the window to the right
bind = $altMod,       j,   movefocus, d        # Move focus to the window below
bind = $altMod,       k,   movefocus, u        # Move focus to the window above
bind = $altMod,       TAB, focuscurrentorlast, # Switch focus to the previously focused window
bind = $altMod SHIFT, TAB, cyclenext,          # Cycle focus between windows on the current workspace

# Window resizing
$resizePixels = 50 # Number of pixels to resize by each time

binde = $altMod SHIFT, j, resizeactive, 0 $resizePixels  # Resize active window downwards
binde = $altMod SHIFT, k, resizeactive, 0 -$resizePixels # Resize active window upwards
binde = $altMod SHIFT, l, resizeactive, $resizePixels 0  # Resize active window rightwards
binde = $altMod SHIFT, h, resizeactive, -$resizePixels 0 # Resize active window leftwards

# Window movement
bind = $lessUsedMod SHIFT, h, movewindow, l # Move window to the left
bind = $lessUsedMod SHIFT, l, movewindow, r # Move window to the right
bind = $lessUsedMod SHIFT, j, movewindow, d # Move window below
bind = $lessUsedMod SHIFT, k, movewindow, u # Move window above

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow   # MAINMOD+LMB DRAG: Move window
bindm = $mainMod, mouse:273, resizewindow # MAINMOD+RMB DRAG: Resize window

# Monitor keybinds
bind = $mainMod,       TAB, focusmonitor, +1            # Change focus to the next monitor
bind = $mainMod SHIFT, tab, movewindow,   mon:+1 silent # Move window to the next monitor

# Scroll through existing workspaces
bind = $mainMod, j,          workspace, r+1 # Workspace +1 (below)
bind = $mainMod, k,          workspace, r-1 # Workspace -1 (above)
bind = $mainMod, mouse_down, workspace, r-1 # Same with mouse
bind = $mainMod, mouse_up,   workspace, r+1

# Move active window to workspace -1/+1
bind = $mainMod SHIFT, j, movetoworkspace, r+1
bind = $mainMod SHIFT, k, movetoworkspace, r-1

# Switch workspaces (on monitor 1, which are 1-5) with mainMod + [1-5]
# See system_specific.conf
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5

# Switch workspaces (on monitor 2, which are 6-10) with mainMod + SHIFT + [1-5]
# See system_specific.conf
bind = $mainMod SHIFT, 1, workspace, 6
bind = $mainMod SHIFT, 2, workspace, 7
bind = $mainMod SHIFT, 3, workspace, 8
bind = $mainMod SHIFT, 4, workspace, 9
bind = $mainMod SHIFT, 5, workspace, 10

