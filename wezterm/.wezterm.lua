-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
local themes = {
	"Dracula",
	"Catppuccin Macchiato",
	"Tokyo Night",
	"Horizon Dark",
	"Sonokai (Gogh)",
	"Everforest Dark (Gogh)",
	"flexoki-dark",
}
math.randomseed(os.time())
local random_theme = themes[math.random(#themes)]
config.color_scheme = random_theme

-- config.font = wezterm.font("CodeNewRoman Nerd Font Mono")
config.font = wezterm.font_with_fallback({
	{ family = "CodeNewRoman Nerd Font Mono", weight = "Regular" },
	{ family = "Heiti SC", weight = "Light" },
})

config.font_size = 24

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
