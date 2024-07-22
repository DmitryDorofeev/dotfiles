local wezterm = require("wezterm")
local config = {}

-- local current_font = "Monolisa dmitry2"
-- local current_font = "Cartograph CF"
local current_font = "Pragmata Pro"

config.font = wezterm.font_with_fallback({ current_font, { family = "Symbols Nerd Font Mono", scale = 0.75 } })
config.font_size = 16.0
config.color_scheme = "Banana Blueberry"
config.keys = {
    {
        key = "-",
        mods = "CTRL",
        action = wezterm.action.DisableDefaultAssignment,
    },
}
config.enable_tab_bar = false
config.window_background_opacity = 0.95
config.macos_window_background_blur = 10

return config
