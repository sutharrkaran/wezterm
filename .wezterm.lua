-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Fonts -- (https://www.nerdfonts.com/font-downloads)
config.font = wezterm.font("MesloLGS Nerd Font Mono")
-- config.font = wezterm.font("MartianMono Nerd Font")
-- config.font = wezterm.font("MonaspiceNe Nerd Font")
-- config.font = wezterm.font("FiraCode Nerd Font Mono")
-- config.font = wezterm.font("cascadia code")
-- config.font = wezterm.font("Hack Nerd Font")
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15.5
config.line_height = 1.3

-- Tab Bar --
config.show_new_tab_button_in_tab_bar = true
config.show_tab_index_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
-- config.enable_tab_bar = false
-- config.use_fancy_tab_bar = false

-- Window --
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95 
config.window_close_confirmation = 'NeverPrompt'

-- My Theme: --
config.colors = {
	tab_bar = {
		-- The active tab is the one that has focus in the window
		active_tab = {
		  bg_color = '#242e28',
		  fg_color = '#c0c0c0',
		},
	
	-- Inactive tabs are the tabs that do not have focus
		inactive_tab = {
		  bg_color = '#0f0f0f',
		  fg_color = '#808080',
		},

	-- moves over inactive tabs
		inactive_tab_hover = {
		  bg_color = '#1f1f1f',
		  fg_color = '#909090',
		},
	
	-- The new tab button that let you create new tabs
		new_tab = {
		  bg_color = '#0f0f0f',
		  fg_color = '#708080',
		},

	-- moves over the new tab button
		new_tab_hover = {
		  bg_color = '#1f1f1f',
		  fg_color = '#909090',
		},
	  },
	
	foreground = "#CBE0F0",
	-- background = "#011423",
	background = "#0f0f0f",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.window_frame = {
	font = wezterm.font { family = 'FiraCode Nerd Font', weight = 'Regular' },
	font_size = 14.0,
	active_titlebar_bg = '#0f0f0f',
	inactive_titlebar_bg = '#0f0f0f',
  }


-- and finally, return the configuration to wezterm
return config
