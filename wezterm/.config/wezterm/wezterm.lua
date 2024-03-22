local wezterm = require("wezterm")
local config = {}

-- local current_font = "Monolisa dmitry2"
local current_font = "Cartograph CF"

config.font = wezterm.font_with_fallback({ current_font, { family = "Symbols Nerd Font Mono", scale = 0.75 } })
config.color_scheme = "Ayu Mirage"
config.keys = {
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

return config
