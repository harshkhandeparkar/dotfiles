-- # Animations. https://wiki.hyprland.org/Configuring/Animations/
-- source=./animations.conf
-- # Decoration. https://wiki.hyprland.org/Configuring/Variables/#decoration
-- source=./decoration.conf
-- # Environment variables. https://wiki.hyprland.org/Configuring/Environment-variables/
-- source=./env.conf
-- # Gestures. https://wiki.hyprland.org/Configuring/Variables/#gestures
-- source=./gestures.conf
-- # Keybinds. https://wiki.hyprland.org/Configuring/Binds/
-- source=./keybinds.conf
-- # Startup commands. https://wiki.hyprland.org/Configuring/Keywords/#executing
-- source=./startup.conf
-- # Window Rules. https://wiki.hyprland.org/Configuring/Window-Rules/
-- source=./windowrules.conf
--
-- # System specific configuration.
-- source=./system_specific.conf
-- # Hycov plugin configuration. https://github.com/DreamMaoMao/hycov
-- source=./hycov.conf
--
require("./system_specific")
require("./keybinds")

hl.config({
	general = {
		layout = "dwindle",
		resize_on_border = true,
	},
	input = {
		follow_mouse = 1,
		sensitivity = 0.2,

		numlock_by_default = true,

		focus_on_close = 1,

		touchpad =  {
			natural_scroll = true,
			disable_while_typing = true,
			scroll_factor = 0.8,
		},
	},
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,

		vrr = 1,

		enable_swallow = true,
		swallow_regex = "Alacritty",

		focus_on_activate = true,
		on_focus_under_fullscreen = 1,

		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,

		initial_workspace_tracking = 2,

		middle_click_paste = false,
	},
	gestures = {
		workspace_swipe_use_r = true,
	},
	dwindle = {
		smart_split = true,
	}
})
