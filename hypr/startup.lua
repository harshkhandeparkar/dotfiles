hl.on("hyprland.start", function()
    -- Authentication Agent (Required)
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

    -- Core Startup Services
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("wl-clip-persist --clipboard regular")
    hl.exec_cmd("ashell")
    
    -- Background Services
    hl.exec_cmd("walker --gapplication-service")
end)