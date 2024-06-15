local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.enable_tab_bar = false
config.window_background_opacity = 0.8

return config
