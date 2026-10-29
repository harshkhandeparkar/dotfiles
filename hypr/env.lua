-- env.lua
-- Converts environment variables from env.conf to Lua module format.

-- For GPUs. https://wiki.hyprland.org/Nvidia/#how-to-get-hyprland-to-possibly-work-on-nvidia
hl.env("LIBVA_DRIVER_NAME", "radeonsi")
hl.env("VDPAU_DRIVER", "radeonsi")
hl.env("XDG_SESSION_TYPE", "wayland")

-- Forces electron apps to run on wayland native
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- For SSH Prompts
hl.env("SSH_ASKPASS", "/usr/lib/ssh/gnome-ssh-askpass3")
hl.env("SSH_ASKPASS_REQUIRE", "prefer")
-- SSH agent is started using a systemd user service. See https://stackoverflow.com/a/38980986
hl.env("SSH_AUTH_SOCK", "$XDG_RUNTIME_DIR/ssh-agent.socket")

-- For QT and GTK theme uniformity
hl.env("QT_QPA_PLATFORMTHEME", "default")

-- For wayland support in QT applications
hl.env("QT_QPA_PLATFORM", "wayland")

-- To enable native wayland for Obsidian
hl.env("OBSIDIAN_USE_WAYLAND", "1")