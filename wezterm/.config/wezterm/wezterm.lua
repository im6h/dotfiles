local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action

local config = wezterm.config_builder()
local keys = {}
local mouse_bindings = {}
local launch_menu = {}
local bg_path = os.getenv("HOME") .. "/.config/wezterm/background/bwm_bg.jpg"

--- Scrollbar
config.enable_scroll_bar = true

--- Hyperlink
config.hyperlink_rules = wezterm.default_hyperlink_rules()

--- Font configurations
config.font = wezterm.font("0xProto Nerd Font Mono")
config.font_size = 14
config.line_height = 1.2

--- UI configurations
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "GruvboxDark"
config.window_background_image = bg_path
config.window_background_opacity = 1.0
config.text_background_opacity = 0.7
config.window_background_image_hsb = {
	brightness = 0.1,
	hue = 1.0,
	saturation = 1.0,
}
config.inactive_pane_hsb = {
	saturation = 1.0,
	brightness = 0.4,
}
config.colors = {
	tab_bar = {
		background = "#0b0022",
		active_tab = {
			bg_color = "#2b2042",
			fg_color = "#c0c0c0",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = "#1b1032",
			fg_color = "#808080",
		},
		inactive_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
			italic = true,
		},
		new_tab = {
			bg_color = "#1b1032",
			fg_color = "#808080",
		},
		new_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
			italic = true,
		},
	},
}
return config
