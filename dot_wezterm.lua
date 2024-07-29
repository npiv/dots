-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Tomorrow (dark) (terminal.sexy)"
-- config.color_scheme = "OneDark (base16)"
config.color_scheme = "Catppuccin Macchiato"

local font = "FiraCode Nerd Font Mono"
config.font = wezterm.font_with_fallback({
	font,
	"Hack",
	"DejaVu Sans Mono",
})

-- config.harfbuzz_features = { "calt=1", "clig=0", "liga=0", "zero", "ss01" }
config.font_size = 15

config.window_frame = {
	font = wezterm.font({ family = font, weight = "Bold" }),
	font_size = 14,
	-- Fancy tab bar
	active_titlebar_bg = "#574131",
	inactive_titlebar_bg = "#352a21",
}

config.tab_max_width = 60
config.use_fancy_tab_bar = false
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.scrollback_lines = 10000
config.cursor_thickness = 2
config.default_cursor_style = "SteadyBar"

config.keys = {
	-- search for things that look like git hashes
	{
		key = "H",
		mods = "SHIFT|CTRL",
		action = wezterm.action.Search({ Regex = "[a-f0-9]{6,}" }),
	},
}

-- and finally, return the configuration to wezterm
return config
